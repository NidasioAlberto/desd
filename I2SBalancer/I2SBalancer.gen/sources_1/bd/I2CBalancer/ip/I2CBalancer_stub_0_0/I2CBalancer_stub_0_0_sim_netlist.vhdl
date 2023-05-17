-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed May 17 23:35:34 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_stub_0_0/I2CBalancer_stub_0_0_sim_netlist.vhdl}
-- Design      : I2CBalancer_stub_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_stub_0_0 is
  port (
    en : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mute_enable : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2CBalancer_stub_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_stub_0_0 : entity is "I2CBalancer_stub_0_0,stub,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_stub_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_stub_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_stub_0_0 : entity is "stub,Vivado 2020.2";
end I2CBalancer_stub_0_0;

architecture STRUCTURE of I2CBalancer_stub_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^en\ : STD_LOGIC;
  signal \^g\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  \^en\ <= en;
  b(7) <= \<const0>\;
  b(6) <= \<const0>\;
  b(5) <= \<const0>\;
  b(4) <= \<const0>\;
  b(3) <= \<const0>\;
  b(2) <= \<const0>\;
  b(1) <= \<const0>\;
  b(0) <= \<const0>\;
  g(7) <= \^g\(0);
  g(6) <= \^g\(0);
  g(5) <= \^g\(0);
  g(4) <= \^g\(0);
  g(3) <= \^g\(0);
  g(2) <= \^g\(0);
  g(1) <= \^g\(0);
  g(0) <= \^g\(0);
  mute_enable <= \^en\;
  r(7) <= \^en\;
  r(6) <= \^en\;
  r(5) <= \^en\;
  r(4) <= \^en\;
  r(3) <= \^en\;
  r(2) <= \^en\;
  r(1) <= \^en\;
  r(0) <= \^en\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\g[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^en\,
      O => \^g\(0)
    );
end STRUCTURE;
