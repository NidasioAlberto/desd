----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.05.2023 20:29:28
-- Design Name: 
-- Module Name: dual_moving_average - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.all;
use IEEE.math_real.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dual_moving_average is
    generic (
        FILTER_ORDER : positive := 32
    );
    port (
        -- Master interface (going to the balance controller module)
        m_axis_tvalid : out std_logic;
        m_axis_tlast  : out std_logic;
        m_axis_tdata  : out std_logic_vector(23 downto 0);
        m_axis_tready : in std_logic;

        -- Slave interface (coming from the i2s module)   
        s_axis_tvalid : in std_logic;
        s_axis_tlast  : in std_logic;
        s_axis_tdata  : in std_logic_vector(23 downto 0);
        s_axis_tready : out std_logic;

        aclk          : in std_logic;
        aresetn       : in std_logic;

        filter_enable : in std_logic
    );
end dual_moving_average;

architecture Behavioral of dual_moving_average is
    subtype data_type is std_logic_vector(23 downto 0);
    type matrix_type is array (0 to FILTER_ORDER) of data_type;
    signal last_data_left  : matrix_type                   := (others => (others => '0'));
    signal last_data_right : matrix_type                   := (others => (others => '0'));

    signal avg_left        : std_logic_vector(23 downto 0) := (others => '0');
    signal avg_right       : std_logic_vector(23 downto 0) := (others => '0');

    constant log_depth     : integer                       := integer(ceil(log2(real(FILTER_ORDER))));
begin

    moving_avg_proc : process (aclk, aresetn)
    begin
        s_axis_tready <= m_axis_tready;
        m_axis_tvalid <= s_axis_tvalid;
        m_axis_tlast  <= s_axis_tlast;

        if aresetn = '0' then
            last_data_left  <= (others => (others => '0'));
            last_data_right <= (others => (others => '0'));

            -- base behaviour is to reply all the signals in input
            m_axis_tdata    <= s_axis_tdata;
        elsif rising_edge(aclk) then
            if filter_enable = '1' then
                if s_axis_tvalid = '1' then
                    -- Receiving valid data

                    if m_axis_tready = '1' then
                        -- Starting elaboration only when next module is ready

                        if s_axis_tlast = '0' then -- left sample
                            -- update the average for left samples
                            avg_left <= std_logic_vector(signed(avg_left)
                                + signed(s_axis_tdata(23 downto log_depth))
                                - signed(last_data_left(FILTER_ORDER - 1)(23 downto log_depth)));

                            m_axis_tdata <= std_logic_vector(signed(avg_left)
                                + signed(s_axis_tdata(23 downto log_depth))
                                - signed(last_data_left(FILTER_ORDER - 1)(23 downto log_depth)));

                            last_data_left <= s_axis_tdata & last_data_left(0 to last_data_left'length - 2);

                        else -- right sample
                            -- update the average for right samples
                            avg_right <= std_logic_vector(signed(avg_right)
                                + signed(s_axis_tdata(23 downto log_depth))
                                - signed(last_data_right(FILTER_ORDER - 1)(23 downto log_depth)));

                            m_axis_tdata <= std_logic_vector(signed(avg_right)
                                + signed(s_axis_tdata(23 downto log_depth))
                                - signed(last_data_right(FILTER_ORDER - 1)(23 downto log_depth)));

                            last_data_right <= s_axis_tdata & last_data_right(0 to last_data_right'length - 2);

                        end if;
                    end if;
                end if;
            else
                -- base behaviour is to reply all the signals in input
                m_axis_tdata <= s_axis_tdata;
            end if; -- filter_enable
        end if;
    end process; -- moving_avg_proc
end Behavioral;
