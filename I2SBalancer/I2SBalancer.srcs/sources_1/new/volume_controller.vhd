----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.05.2023 10:11:00
-- Design Name: 
-- Module Name: volume_controller - Behavioral
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
use IEEE.STD_LOGIC_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.math_real.all;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity volume_controller is
    generic (
        SOMETHING : positive := 32
    );
    port (
        -- Master interface (going to the balance controller module)
        m_axis_tvalid : out std_logic;
        m_axis_tlast  : out std_logic;
        m_axis_tdata  : out std_logic_vector(23 downto 0);
        m_axis_tready : in std_logic;

        -- Slave interface (coming from the i2s module)   
        s_axis_tvalid : in std_logic;
        s_axis_tlast  : in std_logic;
        s_axis_tdata  : in std_logic_vector(23 downto 0);
        s_axis_tready : out std_logic;

        aclk          : in std_logic;
        aresetn       : in std_logic;

        balance       : in std_logic_vector(0 to 9)
    );
end volume_controller;

architecture Behavioral of volume_controller is

begin
    process (aclk, aresetn)
    begin
        m_axis_tvalid <= s_axis_tvalid;
        m_axis_tlast  <= s_axis_tlast;
        m_axis_tdata  <= s_axis_tdata;
        s_axis_tready <= m_axis_tready;
        if aresetn = '0' then
        elsif rising_edge(aclk) then
            if signed(balance) <- 224 then
                m_axis_tdata <= s_axis_tdata(23) & s_axis_tdata(23 to 1);
            elsif signed(balance) >= - 224 and signed(balance) <- 160 then
                m_axis_tdata <= s_axis_tdata(23) & s_axis_tdata(23) & s_axis_tdata(23 to 2);
            elsif signed(balance) >= - 160 and signed(balance) <- 96 then
                m_axis_tdata <= s_axis_tdata(23) & s_axis_tdata(23) & s_axis_tdata(23) & s_axis_tdata(23 to 3);
            elsif signed(balance) >= - 96 and signed(balance) <- 32 then
                m_axis_tdata <= s_axis_tdata(23) & s_axis_tdata(23) & s_axis_tdata(23) & s_axis_tdata(23) & s_axis_tdata(23 to 4);
            elsif signed(balance) >= 32 and signed(balance) < 96 then
                m_axis_tdata <= s_axis_tdata(22 to 0) & "0"; -- consider round up
            elsif signed(balance) >= 96 and signed(balance) < 160 then
                m_axis_tdata <= s_axis_tdata(21 to 0) & "00"; -- consider round up
            elsif signed(balance) >= 160 and signed(balance) < 224 then
                m_axis_tdata <= s_axis_tdata(20 to 0) & "000"; -- consider round up
            elsif signed(balance) >= 224 then
                m_axis_tdata <= s_axis_tdata(19 to 0) & "0000"; -- consider round up
            end if;
        end if;
    end process;
end Behavioral;
