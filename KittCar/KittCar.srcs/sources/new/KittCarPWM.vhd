library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity KittCarPWM is
    generic (
        CLK_PERIOD_NS        : positive range 1 to 100  := 10;  -- External clk period in nanoseconds
        MIN_KITT_CAR_STEP_MS : positive range 1 to 2000 := 1;   -- Minimum step period in milliseconds
        PWM_CLK_PERIOD_US    : positive range 1 to 1000 := 100; -- PWM clk period in microsend

        NUM_OF_SWS           : integer range 1 to 16    := 16;  -- Number of input switches
        NUM_OF_LEDS          : integer range 1 to 16    := 16;  -- Number of output LEDs

        TAIL_LENGTH          : integer range 1 to 16    := 4;   -- Tail length

        MAIN_CLK_DIV_WIDTH   : positive                 := 32;
        PWM_CLK_DIV_WIDTH    : positive                 := 16
    );
    port (
        -- Reset and clock
        reset        : in std_logic;
        external_clk : in std_logic;

        -- LEDs/SWs
        sw           : in std_logic_vector(NUM_OF_SWS - 1 downto 0);  -- Switches avaiable on Basys3
        pwm_out      : out std_logic_vector(NUM_OF_LEDS - 1 downto 0) -- LEDs avaiable on Basys3
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
            main_clk  : in std_logic;
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

    type SHIFT_MATRIX_TYPE is array (TAIL_LENGTH - 1 downto 0) of std_logic_vector(NUM_OF_LEDS - 1 downto 0);
    signal shift_matrix_row : SHIFT_MATRIX_TYPE;
    type SHIFT_MATRIC_TRANSPOSED_TYPE is array (NUM_OF_LEDS - 1 downto 0) of std_logic_vector(TAIL_LENGTH - 1 downto 0);
    signal shift_matrix_columns : SHIFT_MATRIC_TRANSPOSED_TYPE;
begin
    --
    -- external_clk ---> prescaled_clk_divider -> prescaled_clk ----> main_clk_divider -> main_clk -> [Shift registers]
    --    (10ns)     |     (10ns -> 1ms)            (500us)         (500us -user-> >=1ms)     
    --               |
    --               \-> pwm_clk_divider -> pwm_clk -> [LEDS]
    --                   (10ns -> 10us)

    -- Prepare clock dividers to generate the main and pwm clocks

    -- Prescaler divider (external freq. -> min freq. / 2)
    prescaled_clk_divider : ClockDivider
    generic map(
        COUNTER_WIDTH => MAIN_CLK_DIV_WIDTH
    )
    port map(
        reset     => reset,
        clk_in    => external_clk,
        threshold => to_unsigned(MIN_KITT_CAR_STEP_MS * 1e6 / CLK_PERIOD_NS / 2 - 1, MAIN_CLK_DIV_WIDTH),
        clk_out   => prescaled_clk
    );

    -- Main divider (min freq. /2 -> moving freq.)
    main_clk_divider : ClockDivider
    generic map(
        COUNTER_WIDTH => sw'length + 1
    )
    port map(
        reset     => reset,
        clk_in    => prescaled_clk,
        threshold => (unsigned(sw) & '0') + 1,
        clk_out   => main_clk
    );

    -- PWM divider (external freq. -> pwm freq.)
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

    -- Connect shift_matrix to shift_matrix_columns
    TRANSPOSE_GEN : for i in 0 to TAIL_LENGTH - 1 generate
        TRANSPOSE_GEN_2 : for j in 0 to NUM_OF_LEDS - 1 generate
            shift_matrix_columns(j)(i) <= shift_matrix_row(i)(j);
        end generate TRANSPOSE_GEN_2;
    end generate TRANSPOSE_GEN;

    -- Generate one bouncing shift register for each element (intensity level) of the tail
    -- Start from the least bright and end at the bightest
    SHIFT_REGISTERS_GEN : for i in TAIL_LENGTH - 1 downto 0 generate
        shifp_reg_cmp : BouncingShiftRegister
        generic map(
            REGISTER_WIDTH => NUM_OF_LEDS,
            START_DELAY    => TAIL_LENGTH - 1 - i -- Make each element start at a different position
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
            main_clk  => main_clk,
            pwm_clk   => pwm_clk,
            threshold => shift_matrix_columns(i),
            pwm_out   => pwm_out(i)
        );
    end generate PWM_GEN;
end KittCarPWM_arch;