library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is
    generic (
        BEBOUNCING_DEPTH : positive := 5
    );
    port (
        clk          : in std_logic;
        input_signal : in std_logic;
        reset        : in std_logic;
        debounced    : out std_logic
    );
end debouncer;

architecture Behavioral of debouncer is
    signal samples : std_logic_vector(BEBOUNCING_DEPTH - 1 downto 0);
begin
    debouncing : process (clk, reset)
    begin
        if (reset = '1') then
            samples   <= (others => '0');
            debounced <= '0';
        elsif rising_edge(clk) then
            -- Read the input signal into the buffer
            samples <= input_signal & samples(BEBOUNCING_DEPTH - 1 downto 1);

            -- The output is set only if all the samples are the same
            if (signed(samples) = to_signed(0, samples'length)) then
                debounced <= '0';
            elsif (signed(samples) = to_signed(-1, samples'length)) then
                debounced <= '1';
            end if;
        end if;
    end process;
end Behavioral;