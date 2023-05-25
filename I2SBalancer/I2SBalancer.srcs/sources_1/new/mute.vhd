library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mute is
    port (
        -- Master interface
        m_axis_tvalid : out std_logic;
        m_axis_tlast  : out std_logic;
        m_axis_tdata  : out std_logic_vector(23 downto 0);
        m_axis_tready : in std_logic;

        -- Slave interface
        s_axis_tvalid : in std_logic;
        s_axis_tlast  : in std_logic;
        s_axis_tdata  : in std_logic_vector(23 downto 0);
        s_axis_tready : out std_logic;

        mute_enable   : in std_logic
    );
end mute;

architecture Behavioral of mute is
begin
    -- This modules implements just a sort of and between the mute signal and the tdata

    -- So the Axis Stream signals inputs are connected straight to the output
    m_axis_tvalid <= s_axis_tvalid;
    m_axis_tlast  <= s_axis_tlast;
    s_axis_tready <= m_axis_tready;

    -- This process checks for the mute value and zeros the output data if necessary
    mute_proc : process (mute_enable)
    begin
        m_axis_tdata <= s_axis_tdata;
        if mute_enable = '1' then
            m_axis_tdata <= (others => '0');
        end if;
    end process;
end Behavioral;