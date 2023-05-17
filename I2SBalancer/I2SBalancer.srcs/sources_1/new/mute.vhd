----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2023 19:24:16
-- Design Name: 
-- Module Name: mute - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mute is
    Port (
        -- Master interface
        m_axis_tvalid : out std_logic;
        m_axis_tlast   : out std_logic;
        m_axis_tdata  : out std_logic_vector(23 downto 0);
        m_axis_tready : in std_logic;

        -- Slave interface
        s_axis_tvalid : in std_logic;   
        s_axis_tlast   : in std_logic;
        s_axis_tdata  : in std_logic_vector(23 downto 0);
        s_axis_tready : out std_logic;

        mute_enable : in std_logic
    );
end mute;

architecture Behavioral of mute is
begin
    m_axis_tvalid <= s_axis_tvalid;
    m_axis_tlast <= s_axis_tlast;
    s_axis_tready <= m_axis_tready;
    
    mute_proc : process(mute_enable)
    begin
        m_axis_tdata <= s_axis_tdata;
        if mute_enable = '1' then
            m_axis_tdata <= (others => '0');
        end if;
    end process;


end Behavioral;
