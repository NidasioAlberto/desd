-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri May 26 01:07:35 2023
-- Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_edge_detector_0_1_1/I2CBalancer_edge_detector_0_1_sim_netlist.vhdl
-- Design      : I2CBalancer_edge_detector_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_edge_detector_0_1_edge_detector is
  port (
    output_signal : out STD_LOGIC;
    input_signal : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2CBalancer_edge_detector_0_1_edge_detector : entity is "edge_detector";
end I2CBalancer_edge_detector_0_1_edge_detector;

architecture STRUCTURE of I2CBalancer_edge_detector_0_1_edge_detector is
  signal last_input : STD_LOGIC;
  signal \^output_signal\ : STD_LOGIC;
  signal state_i_1_n_0 : STD_LOGIC;
begin
  output_signal <= \^output_signal\;
last_input_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => input_signal,
      Q => last_input
    );
state_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => last_input,
      I1 => input_signal,
      I2 => \^output_signal\,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => state_i_1_n_0,
      Q => \^output_signal\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_edge_detector_0_1 is
  port (
    clk : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    reset : in STD_LOGIC;
    output_signal : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2CBalancer_edge_detector_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_edge_detector_0_1 : entity is "I2CBalancer_edge_detector_0_1,edge_detector,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_edge_detector_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_edge_detector_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_edge_detector_0_1 : entity is "edge_detector,Vivado 2020.2";
end I2CBalancer_edge_detector_0_1;

architecture STRUCTURE of I2CBalancer_edge_detector_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 180000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.I2CBalancer_edge_detector_0_1_edge_detector
     port map (
      clk => clk,
      input_signal => input_signal,
      output_signal => output_signal,
      reset => reset
    );
end STRUCTURE;
