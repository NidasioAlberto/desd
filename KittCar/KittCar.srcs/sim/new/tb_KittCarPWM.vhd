library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity tb_KittCarPWM is
end tb_KittCarPWM;

architecture tb_KittCarPWM_arch of tb_KittCarPWM is
    constant REGISTER_WIDTH   : positive := 8;
    constant TAIL_LENGTH      : positive := 4;
    constant MAIN_CLK_DIV_THR : positive := 29;
    constant PWM_CLK_DIV_THR  : positive := 1;

    constant MASTER_PERIOD    : time     := 10 ns;
    constant RESET_WND        : time     := MASTER_PERIOD;

    component KittCar is
        generic (
            REGISTER_WIDTH     : positive := 8;
            TAIL_LENGTH        : positive := 4;
            MAIN_CLK_DIV_WIDTH : positive := 24;
            MAIN_CLK_DIV_THR   : natural  := 9999999;
            PWM_CLK_DIV_WIDTH  : positive := 10;
            PWM_CLK_DIV_THR    : natural  := 999
        );
        port (
            reset      : in std_logic;
            master_clk : in std_logic;
            pwm_out    : out std_logic_vector(0 to REGISTER_WIDTH - 1)
        );
    end component;

    signal reset      : std_logic;
    signal master_clk : std_logic := '1';
    signal pwm_out    : std_logic_vector(0 to REGISTER_WIDTH - 1);
begin
    -- Device under test
    dut : KittCar
    generic map(
        REGISTER_WIDTH   => REGISTER_WIDTH,
        TAIL_LENGTH      => TAIL_LENGTH,
        MAIN_CLK_DIV_THR => MAIN_CLK_DIV_THR,
        PWM_CLK_DIV_THR  => PWM_CLK_DIV_THR
    )
    port map(
        reset      => reset,
        master_clk => master_clk,
        pwm_out    => pwm_out
    );

    -- Clock generation
    master_clk <= not master_clk after MASTER_PERIOD/2;

    -- Reset generation
    reset_wave : process
    begin
        reset <= '1';
        wait for RESET_WND;
        reset <= '0';
        wait;
    end process;
end tb_KittCarPWM_arch;