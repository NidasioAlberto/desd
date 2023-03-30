library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--
-- The KittCarPWM entity is intended to be used with LEDs to output a wave with different intensities that moves around.
-- https://www.youtube.com/watch?v=U_2VISCBFc8
--
-- An input vector allows to connect to the internal clock divider to slow down the movement of the LEDs.
-- The input, output vectors and the tail length are parametric and can be indipendently changed thanks to generics.
-- Also the timing parameters of the module can be modified. By defualt they are configured for the Basys 3 development board.
--
-- At reset the output wave restarts with a single bit at position 0.
-- While keeping the reset signal asserted, all the output singals (the LEDs) are lit up.
--
-- Internally the entity generates 3 clocks:
-- - The PWM clock used to generate the PWM signals
-- - The prescaled clock lowers the input clock to the minimum configurable frequency for the wave
-- - The main clock lowers the frequency further depending on the input switch values
--
-- Clock tree diagram (default periods shown):
--
-- external_clk ---> prescaled_clk_divider -> prescaled_clk ----> main_clk_divider -> main_clk -> [Shift registers]
--    (10ns)     |     (10ns -> 500us)          (500us)         (500us -user-> >=1ms)     
--               |
--               \-> pwm_clk_divider -> pwm_clk -> [LEDS]
--                   (10ns -> 10us)
--
-- N.B. The prescaler entity has the inherent limitation that it cannot reproduce the input clock, it has to divide at least by 2.
--      So the internal prescaled clock period is generated to be half of MIN_KITT_CAR_STEP_MS.
--      This way we can generate the main clock correclty
--
-- The KittCarPWM enetity relies on 3 other entities:
-- - PWM:                   Generates the output PWM signal based on a threshold
-- - ClockDivider:          Divides an input clock by a division factor
-- - BouncingShiftRegister: Models the movement of one bit making it bounce between the ends of the output vector
--
-- Internally there is one BouncingShiftRegister for each tail section.
-- This registers are connected through a matrix to the PWM modules in the following way:
-- - The BouncingShiftRegisters are connected to the rows
-- - The PWM modules are connected to the columns
--
-- Each column value represents the intensity of one LED and is used by the PWM modules to regulate the output. 
--
-- Example (NUM_OF_LEDS = 8, TAIL_LENGTH = 3, t=3)
--
-- -------------------------
-- | 0 | 0 | 1 | 0 | 0 | 0 | <- BouncingShiftRegister 2
-- -------------------------
-- | 0 | 0 | 0 | 1 | 0 | 0 | <- BouncingShiftRegister 1
-- -------------------------
-- | 0 | 0 | 0 | 0 | 1 | 0 | <- BouncingShiftRegister 0
-- -------------------------
--   |   |   |   |   |   |
--   |   |   |   |   |   \----> PWM 0
--   |   |   |   |   \--------> PWM 1
--   |   |   |   \------------> PWM 2
--   |   |   \----------------> PWM 3
--   |   \--------------------> PWM 4
--   \------------------------> PWM 5
--
entity KittCarPWM is
    generic (
        CLK_PERIOD_NS           : positive range 1 to 100  := 10;  -- External clk period in nanoseconds
        MIN_KITT_CAR_STEP_MS    : positive range 1 to 2000 := 1;   -- Minimum step period in milliseconds
        PWM_CLK_PERIOD_US       : positive range 1 to 1000 := 100; -- PWM clk period in microsend

        NUM_OF_SWS              : integer range 1 to 16    := 16;  -- Number of input switches
        NUM_OF_LEDS             : integer range 1 to 16    := 16;  -- Number of output LEDs

        TAIL_LENGTH             : integer range 1 to 16    := 4;   -- Tail length

        -- Internal clock dividers widths
        PRESCALED_CLK_DIV_WIDTH : positive                 := 31;
        PWM_CLK_DIV_WIDTH       : positive                 := 20
    );
    port (
        -- Reset and clock
        reset        : in std_logic;
        external_clk : in std_logic;

        -- LEDs/SWs
        sw           : in std_logic_vector(NUM_OF_SWS - 1 downto 0);  -- Switches
        pwm_out      : out std_logic_vector(NUM_OF_LEDS - 1 downto 0) -- LEDs
    );
end KittCarPWM;

architecture KittCarPWM_arch of KittCarPWM is
    component BouncingShiftRegister
        generic (
            REGISTER_WIDTH : positive;
            START_DELAY    : natural
        );
        port (
            reset : in std_logic;
            clk   : in std_logic;
            dout  : out std_logic_vector(REGISTER_WIDTH - 1 downto 0)
        );
    end component;

    component PWM
        generic (
            COUNTER_WIDTH : integer
        );
        port (
            reset     : in std_logic;
            pwm_clk   : in std_logic;
            threshold : in std_logic_vector(COUNTER_WIDTH - 1 downto 0);
            pwm_out   : out std_logic
        );
    end component;

    component ClockDivider is
        generic (
            COUNTER_WIDTH : positive := 8
        );
        port (
            reset     : in std_logic;
            clk_in    : in std_logic;
            threshold : in unsigned(0 to COUNTER_WIDTH - 1);
            clk_out   : out std_logic
        );
    end component;

    signal prescaled_clk : std_logic;
    signal main_clk      : std_logic;
    signal pwm_clk       : std_logic;

    -- The matrix is implemented by two array of vectors. One array (shift_matrix_row) allows us to access the matrix by row,
    -- while the other (shift_matrix_columns) by columns.
    -- The two arrays are connected using two nested for generate statements that maps each bit of one array to the other.

    type SHIFT_MATRIX_TYPE is array (TAIL_LENGTH - 1 downto 0) of std_logic_vector(NUM_OF_LEDS - 1 downto 0);
    signal shift_matrix_row : SHIFT_MATRIX_TYPE;
    type SHIFT_MATRIC_TRANSPOSED_TYPE is array (NUM_OF_LEDS - 1 downto 0) of std_logic_vector(TAIL_LENGTH - 1 downto 0);
    signal shift_matrix_columns : SHIFT_MATRIC_TRANSPOSED_TYPE;

    -- This signal contains the operation to adapt the input switch values to the main clock divider threshold.
    -- Basically: main_clk_threshold = sw * 2 + 1
    signal main_clk_threshold   : unsigned(sw'length downto 0);
begin
    -- Prescaled clock divider (CLK_PERIOD_NS -> MIN_KITT_CAR_STEP_MS / 2)
    prescaled_clk_divider : ClockDivider
    generic map(
        COUNTER_WIDTH => PRESCALED_CLK_DIV_WIDTH
    )
    port map(
        reset     => reset,
        clk_in    => external_clk,
        threshold => to_unsigned(MIN_KITT_CAR_STEP_MS * 1e6 / CLK_PERIOD_NS / 2 - 1, PRESCALED_CLK_DIV_WIDTH),
        clk_out   => prescaled_clk
    );

    -- Main divider (MIN_KITT_CAR_STEP_MS / 2 -> KittCar output frequency)
    main_clk_threshold <= unsigned(sw & '1'); -- main_clk_threshold = sw * 2 + 1
    main_clk_divider : ClockDivider
    generic map(
        COUNTER_WIDTH => sw'length + 1 -- The size is one bit greather due to the operation above
    )
    port map(
        reset     => reset,
        clk_in    => prescaled_clk,
        threshold => main_clk_threshold,
        clk_out   => main_clk
    );

    -- PWM divider (CLK_PERIOD_NS -> PWM_CLK_PERIOD_US)
    pwm_clk_divider : ClockDivider
    generic map(
        COUNTER_WIDTH => PWM_CLK_DIV_WIDTH
    )
    port map(
        reset     => reset,
        clk_in    => external_clk,
        threshold => to_unsigned(PWM_CLK_PERIOD_US * 1e3 / CLK_PERIOD_NS - 1, PWM_CLK_DIV_WIDTH),
        clk_out   => pwm_clk
    );

    -- Connect shift_matrix_row to shift_matrix_columns
    TRANSPOSE_GEN : for i in 0 to TAIL_LENGTH - 1 generate
        TRANSPOSE_GEN_2 : for j in 0 to NUM_OF_LEDS - 1 generate
            shift_matrix_columns(j)(i) <= shift_matrix_row(i)(j);
        end generate TRANSPOSE_GEN_2;
    end generate TRANSPOSE_GEN;

    -- Generate one bouncing shift register for each element of the tail.
    -- Start from the least bright and end at the bightest
    SHIFT_REGISTERS_GEN : for i in TAIL_LENGTH - 1 downto 0 generate
        shifp_reg_cmp : BouncingShiftRegister
        generic map(
            REGISTER_WIDTH => NUM_OF_LEDS,

            -- Each register will have a different start delay based on its index.
            -- This allows to start the wave with only one LED lit up after reset.
            START_DELAY    => TAIL_LENGTH - 1 - i
        )
        port map(
            reset => reset,
            clk   => main_clk,
            dout  => shift_matrix_row(i)
        );
    end generate SHIFT_REGISTERS_GEN;

    -- Generate the PWM modules
    PWM_GEN : for i in 0 to NUM_OF_LEDS - 1 generate
        pwm_cmp : PWM
        generic map(
            COUNTER_WIDTH => TAIL_LENGTH
        )
        port map(
            reset     => reset,
            pwm_clk   => pwm_clk,
            threshold => shift_matrix_columns(i),
            pwm_out   => pwm_out(i)
        );
    end generate PWM_GEN;
end KittCarPWM_arch;