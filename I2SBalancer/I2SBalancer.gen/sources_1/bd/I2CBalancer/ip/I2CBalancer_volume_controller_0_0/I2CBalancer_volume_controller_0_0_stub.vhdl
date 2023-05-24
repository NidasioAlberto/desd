-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed May 24 12:35:35 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_volume_controller_0_0/I2CBalancer_volume_controller_0_0_stub.vhdl}
-- Design      : I2CBalancer_volume_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2CBalancer_volume_controller_0_0 is
  Port ( 
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    balance : in STD_LOGIC_VECTOR ( 0 to 9 )
  );

end I2CBalancer_volume_controller_0_0;

architecture stub of I2CBalancer_volume_controller_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "m_axis_tvalid,m_axis_tlast,m_axis_tdata[23:0],m_axis_tready,s_axis_tvalid,s_axis_tlast,s_axis_tdata[23:0],s_axis_tready,aclk,aresetn,balance[0:9]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "volume_controller,Vivado 2020.2";
begin
end;
