library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ClockDivider is
    generic (
        COUNTER_WIDTH : positive := 8
    );
    port (
        reset     : in std_logic;
        clk_in    : in std_logic;
        threshold : in unsigned(0 to COUNTER_WIDTH - 1);
        clk_out   : out std_logic
    );
end ClockDivider;

architecture ClockDivider_arch of ClockDivider is
    signal counter        : unsigned(0 to COUNTER_WIDTH - 1) := to_unsigned(0, COUNTER_WIDTH);
    signal clk_out_buffer : std_logic;
begin
    clk_out <= clk_out_buffer;

    process (reset, clk_in)
    begin
        if reset = '1' then
            clk_out_buffer <= '1';
        else
            if rising_edge(clk_in) then
                -- Increment the counter
                counter <= counter + 1;

                -- Check if if overflows
                if counter = threshold / 2 then
                    counter        <= to_unsigned(0, counter'length);
                    clk_out_buffer <= not clk_out_buffer;
                end if;
            end if;
        end if;
    end process;
end ClockDivider_arch;