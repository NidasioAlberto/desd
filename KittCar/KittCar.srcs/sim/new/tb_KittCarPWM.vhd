library ieee;
use ieee.std_logic_1164.all;

entity tb_KittCarPWM is
end tb_KittCarPWM;

architecture tb_KittCarPWM_arch of tb_KittCarPWM is
    constant MASTER_PERIOD           : time     := 10ns;
    constant RESET_WND               : time     := MASTER_PERIOD * 10;

    constant CLK_PERIOD_NS           : positive := 10;
    constant MIN_KITT_CAR_STEP_MS    : positive := 1;
    constant PWM_CLK_PERIOD_US       : positive := 100;
    constant NUM_OF_SWS              : positive := 16;
    constant NUM_OF_LEDS             : positive := 8;
    constant TAIL_LENGTH             : positive := 4;
    constant PRESCALED_CLK_DIV_WIDTH : positive := 32;
    constant PWM_CLK_DIV_WIDTH       : positive := 16;

    component KittCarPWM is
        generic (
            CLK_PERIOD_NS           : positive range 1 to 100  := 10;  -- External clk period in nanoseconds
            MIN_KITT_CAR_STEP_MS    : positive range 1 to 2000 := 1;   -- Minimum step period in milliseconds
            PWM_CLK_PERIOD_US       : positive range 1 to 1000 := 100; -- PWM clk period in microsend

            NUM_OF_SWS              : integer range 1 to 16    := 16;  -- Number of input switches
            NUM_OF_LEDS             : integer range 1 to 16    := 16;  -- Number of output LEDs

            TAIL_LENGTH             : integer range 1 to 16    := 16;  -- Tail length

            PRESCALED_CLK_DIV_WIDTH : positive                 := 32;
            PWM_CLK_DIV_WIDTH       : positive                 := 16
        );
        port (
            -- Reset and clock
            reset        : in std_logic;
            external_clk : in std_logic;

            -- LEDs/SWs
            sw           : in std_logic_vector(NUM_OF_SWS - 1 downto 0);  -- Switches avaiable on Basys3
            pwm_out      : out std_logic_vector(NUM_OF_LEDS - 1 downto 0) -- LEDs avaiable on Basys3
        );
    end component;

    signal reset        : std_logic;
    signal external_clk : std_logic                                 := '1';
    signal sw           : std_logic_vector(NUM_OF_SWS - 1 downto 0) := (others => '0');
    signal pwm_out      : std_logic_vector(NUM_OF_LEDS - 1 downto 0);
begin
    -- Device under test
    dut : KittCarPWM
    generic map(
        CLK_PERIOD_NS           => CLK_PERIOD_NS,
        MIN_KITT_CAR_STEP_MS    => MIN_KITT_CAR_STEP_MS,
        PWM_CLK_PERIOD_US       => PWM_CLK_PERIOD_US,
        NUM_OF_SWS              => NUM_OF_SWS,
        NUM_OF_LEDS             => NUM_OF_LEDS,
        TAIL_LENGTH             => TAIL_LENGTH,
        PRESCALED_CLK_DIV_WIDTH => PRESCALED_CLK_DIV_WIDTH,
        PWM_CLK_DIV_WIDTH       => PWM_CLK_DIV_WIDTH
    )
    port map(
        reset        => reset,
        external_clk => external_clk,
        sw           => sw,
        pwm_out      => pwm_out
    );

    -- Clock generation
    external_clk <= not external_clk after MASTER_PERIOD/2;

    -- Reset generation
    reset_wave : process
    begin
        reset <= '1';
        wait for RESET_WND;
        reset <= '0';
        wait;
    end process;
end tb_KittCarPWM_arch;