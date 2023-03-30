library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_ClockDivider is
end tb_ClockDivider;

architecture tb_ClockDivider_arch of tb_ClockDivider is
    constant MASTER_PERIOD : time     := 500us;
    constant RESET_WND     : time     := MASTER_PERIOD;
    constant THRESHOLD_WND : time     := 10ms;
    constant COUNTER_WIDTH : positive := 8;

    component ClockDivider is
        generic (
            COUNTER_WIDTH : positive := 8
        );
        port (
            reset     : in std_logic;
            clk_in    : in std_logic;
            threshold : in unsigned(COUNTER_WIDTH - 1 downto 0);
            clk_out   : out std_logic
        );
    end component;

    signal reset     : std_logic;
    signal clk_in    : std_logic := '1';
    signal clk_out   : std_logic;
    signal threshold : unsigned(COUNTER_WIDTH - 1 downto 0);
begin
    dut : ClockDivider
    generic map(
        COUNTER_WIDTH => COUNTER_WIDTH
    )
    port map(
        reset     => reset,
        clk_in    => clk_in,
        threshold => threshold,
        clk_out   => clk_out
    );

    -- Clock generation
    clk_in <= not clk_in after MASTER_PERIOD/2;

    -- Reset generation
    reset_wave : process
    begin
        reset <= '1';
        wait for RESET_WND;
        reset <= '0';
        wait;
    end process;

    -- Threshold generation
    threshold_wave : process
    begin
        threshold <= to_unsigned(0, COUNTER_WIDTH);
        wait for THRESHOLD_WND;
        threshold <= to_unsigned(1, COUNTER_WIDTH);
        wait for THRESHOLD_WND;
        threshold <= to_unsigned(2, COUNTER_WIDTH);
        wait for THRESHOLD_WND;
        threshold <= to_unsigned(3, COUNTER_WIDTH);
        wait for THRESHOLD_WND;
        threshold <= to_unsigned(4, COUNTER_WIDTH);
        wait;
    end process;
end tb_ClockDivider_arch;