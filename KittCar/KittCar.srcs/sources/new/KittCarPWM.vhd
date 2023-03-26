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

        TAIL_LENGTH          : integer range 1 to 16    := 16;  -- Tail length

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
            START_POSITION : natural
        );
        port (
            reset : in std_logic;
            clk   : in std_logic;
            dout  : out std_logic_vector(0 to REGISTER_WIDTH - 1)
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
            threshold : in std_logic_vector(0 to COUNTER_WIDTH - 1);
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

    type SHIFT_MATRIX_TYPE is array (0 to TAIL_LENGTH - 1) of std_logic_vector(0 to NUM_OF_LEDS - 1);
    signal shift_matrix : SHIFT_MATRIX_TYPE;
    type SHIFT_MATRIC_TRANSPOSED_TYPE is array (0 to NUM_OF_LEDS - 1) of std_logic_vector(0 to TAIL_LENGTH - 1);
    signal shift_matrix_transposed : SHIFT_MATRIC_TRANSPOSED_TYPE;
begin
    --
    -- external_clk ---> prescaled_clk_divider -> prescaled_clk ----> main_clk_divider -> main_clk -> [Shift registers]
    --    (10ns)           (10ns -> 1ms)             (1ms)          (1ms -user-> >=1ms)     
    --               |
    --               \-> pwm_clk_divider -> pwm_clk -> [LEDS]
    --                   (10ns -> 10us)

    -- Prepare clock dividers to generate the main and pwm clocks
    prescaled_clk_divider : ClockDivider
    generic map(
        COUNTER_WIDTH => MAIN_CLK_DIV_WIDTH
    )
    port map(
        reset     => reset,
        clk_in    => external_clk,
        threshold => to_unsigned(MIN_KITT_CAR_STEP_MS * 1e6 / CLK_PERIOD_NS, MAIN_CLK_DIV_WIDTH),
        clk_out   => prescaled_clk
    );
    main_clk_divider : ClockDivider
    generic map(
        COUNTER_WIDTH => sw'length
    )
    port map(
        reset     => reset,
        clk_in    => prescaled_clk,
        threshold => unsigned(sw),
        clk_out   => main_clk
    );
    pwm_clk_divider : ClockDivider
    generic map(
        COUNTER_WIDTH => PWM_CLK_DIV_WIDTH
    )
    port map(
        reset     => reset,
        clk_in    => external_clk,
        threshold => to_unsigned(PWM_CLK_PERIOD_US * 1e6 / CLK_PERIOD_NS, PWM_CLK_DIV_WIDTH),
        clk_out   => pwm_clk
    );

    -- Connect shift_matrix to shift_matrix_transposed
    TRANSPOSE_GEN : for i in 0 to TAIL_LENGTH - 1 generate
        TRANSPOSE_GEN_2 : for j in 0 to NUM_OF_LEDS - 1 generate
            shift_matrix_transposed(j)(i) <= shift_matrix(i)(j);
        end generate TRANSPOSE_GEN_2;
    end generate TRANSPOSE_GEN;

    -- Generate one bouncing shift register for each element (intensity level) of the tail
    -- Start from the least bright and end at the bightest
    SHIFT_REGISTERS_GEN : for i in 0 to TAIL_LENGTH - 1 generate
        shifp_reg_cmp : BouncingShiftRegister
        generic map(
            REGISTER_WIDTH => NUM_OF_LEDS,
            START_POSITION => TAIL_LENGTH - 1 - i -- Make each element start at a different position
        )
        port map(
            reset => reset,
            clk   => main_clk,
            dout  => shift_matrix(i)
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
            threshold => shift_matrix_transposed(i),
            pwm_out   => pwm_out(i)
        );
    end generate PWM_GEN;
end KittCarPWM_arch;