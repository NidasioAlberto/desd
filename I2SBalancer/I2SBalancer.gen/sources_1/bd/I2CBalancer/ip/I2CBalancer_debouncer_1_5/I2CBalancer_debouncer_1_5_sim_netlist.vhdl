-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu May 25 22:43:29 2023
-- Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alberton/Desktop/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_debouncer_1_5/I2CBalancer_debouncer_1_5_sim_netlist.vhdl
-- Design      : I2CBalancer_debouncer_1_5
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_debouncer_1_5_debouncer is
  port (
    debounced : out STD_LOGIC;
    input_signal : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2CBalancer_debouncer_1_5_debouncer : entity is "debouncer";
end I2CBalancer_debouncer_1_5_debouncer;

architecture STRUCTURE of I2CBalancer_debouncer_1_5_debouncer is
  signal \^debounced\ : STD_LOGIC;
  signal debounced_i_1_n_0 : STD_LOGIC;
  signal \samples_reg_n_0_[0]\ : STD_LOGIC;
  signal \samples_reg_n_0_[1]\ : STD_LOGIC;
  signal \samples_reg_n_0_[2]\ : STD_LOGIC;
  signal \samples_reg_n_0_[3]\ : STD_LOGIC;
  signal \samples_reg_n_0_[4]\ : STD_LOGIC;
begin
  debounced <= \^debounced\;
debounced_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFE80000000"
    )
        port map (
      I0 => \samples_reg_n_0_[1]\,
      I1 => \samples_reg_n_0_[0]\,
      I2 => \samples_reg_n_0_[4]\,
      I3 => \samples_reg_n_0_[3]\,
      I4 => \samples_reg_n_0_[2]\,
      I5 => \^debounced\,
      O => debounced_i_1_n_0
    );
debounced_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => debounced_i_1_n_0,
      Q => \^debounced\
    );
\samples_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \samples_reg_n_0_[1]\,
      Q => \samples_reg_n_0_[0]\
    );
\samples_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \samples_reg_n_0_[2]\,
      Q => \samples_reg_n_0_[1]\
    );
\samples_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \samples_reg_n_0_[3]\,
      Q => \samples_reg_n_0_[2]\
    );
\samples_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \samples_reg_n_0_[4]\,
      Q => \samples_reg_n_0_[3]\
    );
\samples_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => input_signal,
      Q => \samples_reg_n_0_[4]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_debouncer_1_5 is
  port (
    clk : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    reset : in STD_LOGIC;
    debounced : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2CBalancer_debouncer_1_5 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_debouncer_1_5 : entity is "I2CBalancer_debouncer_1_5,debouncer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_debouncer_1_5 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_debouncer_1_5 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_debouncer_1_5 : entity is "debouncer,Vivado 2020.2";
end I2CBalancer_debouncer_1_5;

architecture STRUCTURE of I2CBalancer_debouncer_1_5 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 180000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.I2CBalancer_debouncer_1_5_debouncer
     port map (
      clk => clk,
      debounced => debounced,
      input_signal => input_signal,
      reset => reset
    );
end STRUCTURE;
