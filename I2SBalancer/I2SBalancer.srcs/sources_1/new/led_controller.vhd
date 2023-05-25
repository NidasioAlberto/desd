library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity led_controller is
    port (
        mute_enable   : in std_logic;
        filter_enable : in std_logic;
        r             : out std_logic_vector(7 downto 0);
        g             : out std_logic_vector(7 downto 0);
        b             : out std_logic_vector(7 downto 0)
    );
end led_controller;

architecture Behavioral of led_controller is
begin
    process (filter_enable, mute_enable)
    begin
        -- This if, elsif else statement allows to give
        -- priority to the mute signal over the filter signal
        if mute_enable = '1' then
            r <= (others => '1');
            g <= (others => '0');
            b <= (others => '0');
        elsif filter_enable = '1' then
            r <= (others => '0');
            g <= (others => '0');
            b <= (others => '1');
        else
            r <= (others => '0');
            g <= (others => '1');
            b <= (others => '0');
        end if;
    end process;
end Behavioral;