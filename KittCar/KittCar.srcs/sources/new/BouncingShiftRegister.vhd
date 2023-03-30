library ieee;
use ieee.std_logic_1164.all;

-- A bouncing shift register moves a single bit making it bounce when it reaches the edges.
--
-- By default this bit starts always from position 0. The START_DELAY generic allows to delay the start of the bit after reset.
-- For example if START_DELAY = 2, there will be 2 clock cycles before the bit starts to move.
--
-- Example (REGISTER_WIDTH = 4, START_DELAY = 0)
--
--          -----------------
-- t=0 dout=| 0 | 0 | 0 | 1 |
--          -----------------
-- t=1 dout=| 0 | 0 | 1 | 0 |
--          -----------------
-- t=2 dout=| 0 | 1 | 0 | 0 |
--          -----------------
-- t=3 dout=| 1 | 0 | 0 | 0 |
--          -----------------
-- t=4 dout=| 0 | 1 | 0 | 0 |
--          -----------------
--
-- Example (REGISTER_WIDTH = 4, START_DELAY = 2)
--
--          -----------------
-- t=0 dout=| 0 | 0 | 0 | 1 |
--          -----------------
-- t=1 dout=| 0 | 0 | 0 | 1 |
--          -----------------
-- t=2 dout=| 0 | 0 | 0 | 1 |
--          -----------------
-- t=3 dout=| 0 | 0 | 1 | 0 |
--          -----------------
-- t=4 dout=| 0 | 1 | 0 | 0 |
--          -----------------
--
entity BouncingShiftRegister is
    generic (
        REGISTER_WIDTH : positive;
        START_DELAY    : natural -- Values must to be from 0 to REGISTER_WIDTH - 1
    );
    port (
        -- Reset and clock
        reset : in std_logic;
        clk   : in std_logic;

        -- Output
        dout  : out std_logic_vector(REGISTER_WIDTH - 1 downto 0) := (0 => '1', others => '0')
    );
end BouncingShiftRegister;

architecture BouncingShiftRegister_arch of BouncingShiftRegister is
    signal reg : std_logic_vector(REGISTER_WIDTH - 1 downto 0) := (START_DELAY => '1', others => '0');

    -- Left:  from a lower index to an higher one
    -- Right: from an higher index to a lower one
    type DIRECTION_TYPE is (Left, Right);
    signal direction : DIRECTION_TYPE := Left;

    -- 1 when the delay elapsed
    signal started   : std_logic      := '0';
begin
    process (clk, reset)
    begin
        if reset = '1' then
            reg       <= (START_DELAY => '1', others => '0');
            dout      <= (0 => '1', others => '0');
            direction <= Left;
            started   <= '0';
        else
            if rising_edge(clk) then
                if REGISTER_WIDTH /= 1 then
                    -- If we are going right and we have not reaced position 0, keep going right
                    -- If we are going left and the bit is at the end, revert direction
                    if (direction = Left and reg(0) = '0') or (direction = Right and reg(REGISTER_WIDTH - 1) = '1') then
                        reg       <= '0' & reg(REGISTER_WIDTH - 1 downto 1); -- Right shif
                        direction <= Left;
                    else
                        reg       <= reg(REGISTER_WIDTH - 2 downto 0) & '0'; -- Left shift
                        direction <= Right;
                        started   <= '1';
                    end if;
                end if;
            end if;

            if falling_edge(clk) then
                if started = '1' or reg(0) = '1' then
                    dout <= reg;
                else
                    dout <= (0 => '1', others => '0');
                end if;
            end if;
        end if;
    end process;
end BouncingShiftRegister_arch;