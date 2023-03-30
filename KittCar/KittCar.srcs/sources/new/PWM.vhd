library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- PWM signal generation
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
            counter <= (0 => '1', others => '0');
            pwm_out <= '1';
        elsif rising_edge(pwm_clk) then
            -- Shift the buffer
            counter <= counter(COUNTER_WIDTH - 2 downto 0) & counter(COUNTER_WIDTH - 1);

            -- Check count and set the output
            if unsigned(counter) > unsigned(threshold) then
                pwm_out <= '0';
            else
                pwm_out <= '1';
            end if;
        end if;
    end process;
end;