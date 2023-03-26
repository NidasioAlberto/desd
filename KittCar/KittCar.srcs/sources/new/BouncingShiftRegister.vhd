library ieee;
use ieee.std_logic_1164.all;

-- A bouncing shift register moves a single bit making in a vector making it bounce when it reaches the edges
entity BouncingShiftRegister is
    generic (
        REGISTER_WIDTH : positive;
        START_DELAY    : natural
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
    signal reg       : std_logic_vector(REGISTER_WIDTH - 1 downto 0) := (START_DELAY => '1', others => '0');

    -- 0 if going forward   (e.g. from 0 to 1 / to the right)
    -- 1 if going backwards (e.g. from 1 to 0 / to the left)
    signal direction : std_logic                                     := '0';

    -- 1 when the delay elapsed
    signal started   : std_logic                                     := '0';
begin
    process (clk, reset)
    begin
        if reset = '1' then
            reg       <= (START_DELAY => '1', others => '0');
            dout      <= (0 => '1', others => '0');
            direction <= '0';
            started   <= '0';
        else
            if rising_edge(clk) then
                -- If we are going right and we have not reaced position 0, keep going right
                -- If we are going left and the bit is at the end, revert direction
                if (direction = '0' and reg(0) = '0') or (direction = '1' and reg(REGISTER_WIDTH - 1) = '1') then
                    reg       <= '0' & reg(REGISTER_WIDTH - 1 downto 1); -- Right shif
                    direction <= '0';
                else
                    reg       <= reg(REGISTER_WIDTH - 2 downto 0) & '0'; -- Left shift
                    direction <= '1';
                end if;
            end if;

            if falling_edge(clk) then
                if started = '1' or reg(0) = '1' then
                    dout    <= reg;
                    started <= '1';
                else
                    dout <= (others => '0');
                end if;
            end if;
        end if;
    end process;
end BouncingShiftRegister_arch;