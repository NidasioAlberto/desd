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
        reset    : in std_logic;
        main_clk : in std_logic;
        pwm_clk  : in std_logic;

        -- Duty cycle threshold
        threshold : in std_logic_vector(0 to COUNTER_WIDTH - 1); -- Clock cycles per period of the PWM signal

        -- Output
        pwm_out : out std_logic -- PWM signal
    );
end PWM;

architecture PWM_arch of PWM is
    signal counter       : std_logic_vector(0 to COUNTER_WIDTH - 1) := (0 => '1', others => '0');
    signal threshold_buf : std_logic_vector(0 to COUNTER_WIDTH - 1);
begin
    process (pwm_clk, reset)
    begin
        if reset = '1' then
            counter <= (0 => '1', others => '0');
            pwm_out <= '0';
            -- threshold_buf <= (others => '0');
        else
            if rising_edge(pwm_clk) then
                -- Check if the counter will overflow
                if counter(COUNTER_WIDTH - 1) = '1' then
                    -- Reset
                    counter <= (0 => '1', others => '0');
                else
                    -- Shift the counter
                    counter <= '0' & counter(0 to COUNTER_WIDTH - 2);
                end if;

                -- Check count and set the output
                if unsigned(counter) > unsigned(threshold_buf) then
                    pwm_out <= '0';
                else
                    pwm_out <= '1';
                end if;
            end if;
        end if;
    end process;

    process (main_clk)
    begin
        if rising_edge(main_clk) then
            threshold_buf <= threshold;
        end if;
    end process;
end;