library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- PWM signal generation
--
-- This PWM signal generatior uses a shift register containing a single bit.
-- When the bit is in a position higher than the threshold input, the output is high.
-- 
-- Example (COUNTER_WIDTH = 4):
--
--                 -----------------
-- Shift register: | 0 | 1 | 0 | 0 |
--                 -----------------
--
--                 -----------------
-- Threshold:      | 0 | 1 | x | x |  => Output is 0
--                 -----------------
--
--                 -----------------
-- Threshold:      | 1 | x | x | x |  => Output is 1
--                 -----------------
--
entity PWM is
    generic (
        COUNTER_WIDTH : integer -- Counter size in bits
    );
    port (
        -- Reset and clock
        reset     : in std_logic;
        pwm_clk   : in std_logic;

        -- Duty cycle threshold
        threshold : in std_logic_vector(COUNTER_WIDTH - 1 downto 0); -- Clock cycles per period of the PWM signal

        -- Output
        pwm_out   : out std_logic                                    -- PWM signal
    );
end PWM;

architecture PWM_arch of PWM is
    signal counter : std_logic_vector(COUNTER_WIDTH - 1 downto 0) := (0 => '1', others => '0');
begin
    process (pwm_clk, reset)
    begin
        if reset = '1' then
            -- When the reset is triggered, reset the counter and turn on the output
            counter <= (0 => '1', others => '0');
            pwm_out <= '1';
        elsif rising_edge(pwm_clk) then
            -- Shift the buffer
            counter <= counter(COUNTER_WIDTH - 2 downto 0) & counter(COUNTER_WIDTH - 1);

            -- Turn on the output when the counter is higher then the threshold
            if unsigned(counter) > unsigned(threshold) then
                pwm_out <= '0';
            else
                pwm_out <= '1';
            end if;
        end if;
    end process;
end;