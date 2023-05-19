----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.05.2023 16:46:36
-- Design Name: 
-- Module Name: debouncer - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity debouncer is
    generic (
        BEBOUNCING_DEPTH : positive := 5
    );
    Port ( 
        clk : in STD_LOGIC;
        input_signal : in STD_LOGIC;
        reset : in STD_LOGIC;
        debounced : out STD_LOGIC
    );
end debouncer;

architecture Behavioral of debouncer is
    signal last_inputs : std_logic_vector(0 to BEBOUNCING_DEPTH);
begin
    debouncing : process(clk, reset)
    begin
        if (reset = '1') then
            last_inputs <= (others => '0');
            debounced <= '0';
        elsif rising_edge(clk) then
            last_inputs <= input_signal & last_inputs(0 to BEBOUNCING_DEPTH-1);
            if (signed(last_inputs) = to_signed(0, last_inputs'length)) then
                -- signed(my_slv) = to_signed(-1, my_slv'length)
                debounced <= '0';
            elsif (signed(last_inputs) = to_signed(-1, last_inputs'length)) then
                debounced <= '1';            
            end if;
        end if;
    end process;
end Behavioral;
