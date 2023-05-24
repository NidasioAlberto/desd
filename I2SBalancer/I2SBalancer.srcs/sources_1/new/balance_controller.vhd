----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 09:12:17
-- Design Name: 
-- Module Name: balance_controller - Behavioral
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
-- arithmetic functions with Signed or signed values
use IEEE.NUMERIC_STD.all;
use IEEE.math_real.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity balance_controller is
    generic (
        AMPLIFICATION_EXPONENT : positive := 6;
        BITS_BALANCE           : positive := 10
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

        balance       : in std_logic_vector(0 to 9)
    );
end balance_controller;

architecture Behavioral of balance_controller is
    constant mean_value_balance : positive := 2 ** BITS_BALANCE / 2;
    constant amplification_step : positive := 2 ** AMPLIFICATION_EXPONENT;
begin
    process (aclk, aresetn)
    begin
        m_axis_tvalid <= s_axis_tvalid;
        m_axis_tlast  <= s_axis_tlast;
        s_axis_tready <= m_axis_tready;
        if aresetn = '0' then
        elsif rising_edge(aclk) then
            m_axis_tdata <= s_axis_tdata;
            if (s_axis_tlast = '0') then -- to be optimized deleting this if and leaving only the content?
                -- decrease right value
                DECREASE_RIGHT_FOR : for i in 1 to integer(mean_value_balance / amplification_step) loop
                    if ((i - 1) * amplification_step < unsigned(balance) and unsigned(balance) <= i * amplification_step) then
                        m_axis_tdata                                                               <= std_logic_vector(resize(signed(s_axis_tdata(23 downto (mean_value_balance / amplification_step - i))), 24));
                    end if;
                end loop DECREASE_RIGHT_FOR;
            else
                -- decrease left value
                DECREASE_LEFT_FOR : for i in 1 to integer(mean_value_balance / amplification_step) loop
                    if (mean_value_balance + (i - 1) * amplification_step < unsigned(balance) and unsigned(balance) <= mean_value_balance + i * amplification_step) then
                        m_axis_tdata                                                                                    <= std_logic_vector(resize(signed(s_axis_tdata(23 downto i)), 24));
                    end if;
                end loop DECREASE_LEFT_FOR;
            end if;
        end if;
    end process;
end Behavioral;
