library ieee;
use ieee.std_logic_1164.all;

-- A bouncing shift register moves a single bit making in a vector making it bounce when it reaches the edges
entity BouncingShiftRegister is
    generic (
        REGISTER_WIDTH : positive;
        START_POSITION : natural
    );
    port (
        -- Reset and clock
        reset : in std_logic;
        clk   : in std_logic;

        -- Output
        dout : out std_logic_vector(0 to REGISTER_WIDTH - 1)
    );
end BouncingShiftRegister;

architecture BouncingShiftRegister_arch of BouncingShiftRegister is
    signal reg : std_logic_vector(0 to REGISTER_WIDTH - 1) := (START_POSITION => '1', others => '0');

    -- 0 if going forward, 1 if going backwards
    signal direction : std_logic := '0';
begin
    process (clk, reset)
    begin
        if reset = '1' then
            reg  <= (START_POSITION => '1', others => '0');
            dout <= (START_POSITION => '1', others => '0');
        else
            if rising_edge(clk) then
                if (direction = '0' and reg(REGISTER_WIDTH - 1) = '0') or (direction = '1' and reg(0) = '1') then
                    reg       <= '0' & reg(0 to REGISTER_WIDTH - 2);
                    direction <= '0';
                else
                    reg       <= reg(1 to REGISTER_WIDTH - 1) & '0';
                    direction <= '1';
                end if;
            end if;

            if falling_edge(clk) then
                dout <= reg;
            end if;
        end if;
    end process;
end BouncingShiftRegister_arch;