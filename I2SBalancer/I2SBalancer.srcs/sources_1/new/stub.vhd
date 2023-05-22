----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2023 21:09:41
-- Design Name: 
-- Module Name: stub - Behavioral
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

entity stub is
    Port (
        en: in std_logic;
        mute_enable : out std_logic
    );
end stub;

architecture Behavioral of stub is
    type state_mute_type is (MUTED, NOT_MUTED);
    signal state_mute : state_mute_type := NOT_MUTED;
begin
    with state_mute select mute_enable <=
        '0' when NOT_MUTED,
        '1' when MUTED;
        
    process (en)
    begin
        if en = '1' then
            state_mute <= MUTED;
        else
            state_mute <= NOT_MUTED;
        end if;
    end process;
end Behavioral;
