----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 10:11:00
-- Design Name: 
-- Module Name: volume_controller - Behavioral
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

entity volume_controller is
    generic (
        SOMETHING : positive := 32
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
end volume_controller;

architecture Behavioral of volume_controller is
    constant max_value_tdata : std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(2 ** 23 - 1, 24));
    constant min_value_tdata : std_logic_vector(23 downto 0) := std_logic_vector(to_unsigned(2 ** 23, 24));
begin
    process (aclk, aresetn)
    begin
        m_axis_tvalid <= s_axis_tvalid;
        m_axis_tlast  <= s_axis_tlast;
        m_axis_tdata  <= s_axis_tdata;
        s_axis_tready <= m_axis_tready;
        if aresetn = '0' then
        elsif rising_edge(aclk) then
            m_axis_tdata             <= s_axis_tdata;
            -- decrease right value
            if (unsigned(balance)    <= - 224 + 512) then
                m_axis_tdata             <= std_logic_vector(resize(signed(s_axis_tdata(23 downto 4)), 24));
            elsif (unsigned(balance) <= - 160 + 512) then
                m_axis_tdata             <= std_logic_vector(resize(signed(s_axis_tdata(23 downto 3)), 24));
            elsif (unsigned(balance) <= - 96 + 512) then
                m_axis_tdata             <= std_logic_vector(resize(signed(s_axis_tdata(23 downto 2)), 24));
            elsif (unsigned(balance) <= - 32 + 512) then
                m_axis_tdata             <= std_logic_vector(resize(signed(s_axis_tdata(23 downto 1)), 24));
            elsif (unsigned(balance) <= 32 + 512) then
                m_axis_tdata             <= std_logic_vector(resize(signed(s_axis_tdata(23 downto 0)), 24));
            elsif (unsigned(balance) <= 96 + 512) then
                if (s_axis_tdata(23 downto 22) = "00" or s_axis_tdata(23 downto 22) = "11") then
                    m_axis_tdata <= s_axis_tdata(22 downto 0) & "0";
                else
                    if (s_axis_tdata(23) = '0') then
                        m_axis_tdata <= max_value_tdata; -- So that doesn't exceed the maximum
                    else
                        m_axis_tdata <= min_value_tdata; -- So that doesn't exceed the maximum
                    end if;
                end if;
            elsif (unsigned(balance) <= 160 + 512) then
                if (s_axis_tdata(23 downto 21) = "000" or s_axis_tdata(23 downto 21) = "111") then
                    m_axis_tdata <= s_axis_tdata(21 downto 0) & "00";
                else
                    if (s_axis_tdata(23) = '0') then
                        m_axis_tdata <= max_value_tdata; -- So that doesn't exceed the maximum
                    else
                        m_axis_tdata <= min_value_tdata; -- So that doesn't exceed the maximum
                    end if;
                end if;
            elsif (unsigned(balance) <= 224 + 512) then
                if (s_axis_tdata(23 downto 20) = "0000" or s_axis_tdata(23 downto 20) = "1111") then
                    m_axis_tdata <= s_axis_tdata(20 downto 0) & "000";
                else
                    if (s_axis_tdata(23) = '0') then
                        m_axis_tdata <= max_value_tdata; -- So that doesn't exceed the maximum
                    else
                        m_axis_tdata <= min_value_tdata; -- So that doesn't exceed the maximum
                    end if;
                end if;
            elsif (unsigned(balance) > 224 + 512) then
                if (s_axis_tdata(23 downto 19) = "00000" or s_axis_tdata(23 downto 19) = "11111") then
                    m_axis_tdata <= s_axis_tdata(19 downto 0) & "0000";
                else
                    if (s_axis_tdata(23) = '0') then
                        m_axis_tdata <= max_value_tdata; -- So that doesn't exceed the maximum
                    else
                        m_axis_tdata <= min_value_tdata; -- So that doesn't exceed the maximum
                    end if;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
