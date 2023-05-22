-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May 22 16:54:11 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_led_controller_0_0/I2CBalancer_led_controller_0_0_sim_netlist.vhdl}
-- Design      : I2CBalancer_led_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_led_controller_0_0 is
  port (
    mute_enable : in STD_LOGIC;
    filter_enable : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2CBalancer_led_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_led_controller_0_0 : entity is "I2CBalancer_led_controller_0_0,led_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_led_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_led_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_led_controller_0_0 : entity is "led_controller,Vivado 2020.2";
end I2CBalancer_led_controller_0_0;

architecture STRUCTURE of I2CBalancer_led_controller_0_0 is
  signal \^b\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \^g\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \^mute_enable\ : STD_LOGIC;
begin
  \^mute_enable\ <= mute_enable;
  b(7) <= \^b\(7);
  b(6) <= \^b\(7);
  b(5) <= \^b\(7);
  b(4) <= \^b\(7);
  b(3) <= \^b\(7);
  b(2) <= \^b\(7);
  b(1) <= \^b\(7);
  b(0) <= \^b\(7);
  g(7) <= \^g\(7);
  g(6) <= \^g\(7);
  g(5) <= \^g\(7);
  g(4) <= \^g\(7);
  g(3) <= \^g\(7);
  g(2) <= \^g\(7);
  g(1) <= \^g\(7);
  g(0) <= \^g\(7);
  r(7) <= \^mute_enable\;
  r(6) <= \^mute_enable\;
  r(5) <= \^mute_enable\;
  r(4) <= \^mute_enable\;
  r(3) <= \^mute_enable\;
  r(2) <= \^mute_enable\;
  r(1) <= \^mute_enable\;
  r(0) <= \^mute_enable\;
\b[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => filter_enable,
      I1 => \^mute_enable\,
      O => \^b\(7)
    );
\g[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => filter_enable,
      I1 => \^mute_enable\,
      O => \^g\(7)
    );
end STRUCTURE;
