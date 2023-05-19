----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.05.2023 16:20:56
-- Design Name: 
-- Module Name: edge_detector - Behavioral
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

entity edge_detector is
    Port ( 
        clk : in STD_LOGIC;
        input_signal : in STD_LOGIC;
        reset : in STD_LOGIC;
        output_signal : out STD_LOGIC
    );
end edge_detector;

architecture Behavioral of edge_detector is
    type state_type is (ENABLED, DISABLED);
    signal state : state_type := DISABLED;
    
    signal last_input : STD_LOGIC := '0';
begin
    with state select output_signal <=
        '0' when DISABLED,
        '1' when ENABLED;

    detector : process(clk, reset)
    begin
        if (reset = '1') then
            state <= DISABLED;
            last_input <= '0';
            output_signal <= '0'; -- is this needed? does it create a glitch when resetting?
        elsif rising_edge(clk) then
            if (last_input /= input_signal and last_input = '0') then
                if (state = DISABLED) then
                    state <= ENABLED;
                else
                    state <= DISABLED;
                end if;
            end if;
            last_input <= input_signal;
        end if;
    end process;
end Behavioral;
