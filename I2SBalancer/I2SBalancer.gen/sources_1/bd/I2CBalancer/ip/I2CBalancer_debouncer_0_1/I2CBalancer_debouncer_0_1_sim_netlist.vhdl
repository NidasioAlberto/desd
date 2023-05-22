-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May 22 16:54:12 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_debouncer_0_1/I2CBalancer_debouncer_0_1_sim_netlist.vhdl}
-- Design      : I2CBalancer_debouncer_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_debouncer_0_1_debouncer is
  port (
    debounced : out STD_LOGIC;
    input_signal : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2CBalancer_debouncer_0_1_debouncer : entity is "debouncer";
end I2CBalancer_debouncer_0_1_debouncer;

architecture STRUCTURE of I2CBalancer_debouncer_0_1_debouncer is
  signal \/i__n_0\ : STD_LOGIC;
  signal \^debounced\ : STD_LOGIC;
  signal \debounced__0_n_0\ : STD_LOGIC;
  signal debounced_i_1_n_0 : STD_LOGIC;
  signal \last_inputs_reg_n_0_[0]\ : STD_LOGIC;
  signal \last_inputs_reg_n_0_[1]\ : STD_LOGIC;
  signal \last_inputs_reg_n_0_[2]\ : STD_LOGIC;
  signal \last_inputs_reg_n_0_[3]\ : STD_LOGIC;
  signal \last_inputs_reg_n_0_[4]\ : STD_LOGIC;
  signal \last_inputs_reg_n_0_[5]\ : STD_LOGIC;
begin
  debounced <= \^debounced\;
\/i_\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000001"
    )
        port map (
      I0 => \last_inputs_reg_n_0_[0]\,
      I1 => \last_inputs_reg_n_0_[5]\,
      I2 => \last_inputs_reg_n_0_[4]\,
      I3 => \last_inputs_reg_n_0_[3]\,
      I4 => \last_inputs_reg_n_0_[2]\,
      I5 => \last_inputs_reg_n_0_[1]\,
      O => \/i__n_0\
    );
\debounced__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \last_inputs_reg_n_0_[0]\,
      I1 => \last_inputs_reg_n_0_[1]\,
      I2 => \last_inputs_reg_n_0_[4]\,
      I3 => \last_inputs_reg_n_0_[5]\,
      I4 => \last_inputs_reg_n_0_[2]\,
      I5 => \last_inputs_reg_n_0_[3]\,
      O => \debounced__0_n_0\
    );
debounced_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \debounced__0_n_0\,
      I1 => \/i__n_0\,
      I2 => \^debounced\,
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
\last_inputs_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => input_signal,
      Q => \last_inputs_reg_n_0_[0]\
    );
\last_inputs_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \last_inputs_reg_n_0_[0]\,
      Q => \last_inputs_reg_n_0_[1]\
    );
\last_inputs_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \last_inputs_reg_n_0_[1]\,
      Q => \last_inputs_reg_n_0_[2]\
    );
\last_inputs_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \last_inputs_reg_n_0_[2]\,
      Q => \last_inputs_reg_n_0_[3]\
    );
\last_inputs_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \last_inputs_reg_n_0_[3]\,
      Q => \last_inputs_reg_n_0_[4]\
    );
\last_inputs_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \last_inputs_reg_n_0_[4]\,
      Q => \last_inputs_reg_n_0_[5]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_debouncer_0_1 is
  port (
    clk : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    reset : in STD_LOGIC;
    debounced : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2CBalancer_debouncer_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_debouncer_0_1 : entity is "I2CBalancer_debouncer_0_1,debouncer,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_debouncer_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_debouncer_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_debouncer_0_1 : entity is "debouncer,Vivado 2020.2";
end I2CBalancer_debouncer_0_1;

architecture STRUCTURE of I2CBalancer_debouncer_0_1 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
begin
U0: entity work.I2CBalancer_debouncer_0_1_debouncer
     port map (
      clk => clk,
      debounced => debounced,
      input_signal => input_signal,
      reset => reset
    );
end STRUCTURE;
