library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity edge_detector is
    port (
        clk           : in std_logic;
        input_signal  : in std_logic;
        reset         : in std_logic;
        output_signal : out std_logic
    );
end edge_detector;

architecture Behavioral of edge_detector is
    signal state      : std_logic := '0';
    signal last_input : std_logic := '0';
begin

    output_signal <= state;

    detector : process (clk, reset)
    begin
        if (reset = '1') then
            -- By default the state is low as the edge detector has not yet been triggered
            state      <= '0';
            last_input <= '0';
        elsif rising_edge(clk) then
            -- If we detect a rising edge we toggle the state
            if (last_input = '0' and input_signal = '1') then
                state <= not state;
            end if;

            -- Update the last input value
            last_input <= input_signal;
        end if;
    end process;
end Behavioral;