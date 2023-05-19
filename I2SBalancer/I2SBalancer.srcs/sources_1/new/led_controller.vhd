----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.05.2023 16:11:10
-- Design Name: 
-- Module Name: led_controller - Behavioral
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
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity led_controller is
    Port ( 
        mute_enable : in STD_LOGIC;
        filter_enable : in STD_LOGIC;
        r: out STD_LOGIC_VECTOR(7 downto 0);
        g: out STD_LOGIC_VECTOR(7 downto 0);
        b: out STD_LOGIC_VECTOR(7 downto 0)
    );
end led_controller;

architecture Behavioral of led_controller is
    type state_mute_type is (MUTED, NOT_MUTED);
    signal state_mute : state_mute_type := NOT_MUTED;
begin
    process (filter_enable, mute_enable)
    begin
        if mute_enable = '1' then
            r <= (others => '1');
            g <= (others => '0');
            b <= (others => '0');
        elsif filter_enable = '1' then
            r <= (others => '0');
            g <= (others => '0');
            b <= (others => '1');
        else 
            r <= (others => '0');
            g <= (others => '1');
            b <= (others => '0');
        end if;
    end process;
end Behavioral;


