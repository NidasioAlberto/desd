-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed May 24 22:48:32 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_balance_controller_0_0/I2CBalancer_balance_controller_0_0_sim_netlist.vhdl}
-- Design      : I2CBalancer_balance_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_balance_controller_0_0_balance_controller is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    balance : in STD_LOGIC_VECTOR ( 0 to 9 );
    s_axis_tlast : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2CBalancer_balance_controller_0_0_balance_controller : entity is "balance_controller";
end I2CBalancer_balance_controller_0_0_balance_controller;

architecture STRUCTURE of I2CBalancer_balance_controller_0_0_balance_controller is
  signal \m_axis_tdata[0]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_13_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_14_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_13_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_14_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_15_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_16_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_17_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_18_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_9_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 22 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_7\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_9\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_5\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_i_7\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_i_9\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_i_9\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_6\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_8\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_i_9\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_7\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_i_9\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_8\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_i_9\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_14\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_4\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_8\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_i_9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_i_7\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_10\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_7\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_7\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_i_9\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_7\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_9\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_10\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_13\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_15\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_6\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_i_9\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_7\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_i_9\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_7\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_i_9\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_8\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_8\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_9\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_8\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_9\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_6\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_i_9\ : label is "soft_lutpair26";
begin
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[0]_i_2_n_0\,
      I1 => \m_axis_tdata[0]_i_3_n_0\,
      I2 => \m_axis_tdata[0]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[0]_i_5_n_0\,
      I5 => \m_axis_tdata[0]_i_6_n_0\,
      O => p_1_in(0)
    );
\m_axis_tdata[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_9_n_0\,
      I1 => s_axis_tdata(7),
      I2 => s_axis_tdata(8),
      I3 => \m_axis_tdata[16]_i_7_n_0\,
      I4 => s_axis_tdata(6),
      I5 => \m_axis_tdata[16]_i_8_n_0\,
      O => \m_axis_tdata[0]_i_10_n_0\
    );
\m_axis_tdata[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[0]_i_7_n_0\,
      I1 => s_axis_tdata(0),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[0]_i_2_n_0\
    );
\m_axis_tdata[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(5),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(3),
      O => \m_axis_tdata[0]_i_3_n_0\
    );
\m_axis_tdata[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAFFFFFBBAF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => s_axis_tdata(0),
      I2 => s_axis_tdata(7),
      I3 => \m_axis_tdata[14]_i_8_n_0\,
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      I5 => s_axis_tdata(6),
      O => \m_axis_tdata[0]_i_4_n_0\
    );
\m_axis_tdata[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4FFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_11_n_0\,
      I1 => s_axis_tdata(4),
      I2 => \m_axis_tdata[0]_i_8_n_0\,
      I3 => \m_axis_tdata[0]_i_9_n_0\,
      I4 => s_axis_tlast,
      I5 => \m_axis_tdata[0]_i_10_n_0\,
      O => \m_axis_tdata[0]_i_5_n_0\
    );
\m_axis_tdata[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101BB0BBFFFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_8_n_0\,
      I1 => s_axis_tdata(2),
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(0),
      I5 => \m_axis_tdata[21]_i_8_n_0\,
      O => \m_axis_tdata[0]_i_6_n_0\
    );
\m_axis_tdata[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(1),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(2),
      O => \m_axis_tdata[0]_i_7_n_0\
    );
\m_axis_tdata[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \m_axis_tdata[19]_i_9_n_0\,
      O => \m_axis_tdata[0]_i_8_n_0\
    );
\m_axis_tdata[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \m_axis_tdata[18]_i_10_n_0\,
      O => \m_axis_tdata[0]_i_9_n_0\
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[10]_i_2_n_0\,
      I1 => \m_axis_tdata[10]_i_3_n_0\,
      I2 => \m_axis_tdata[10]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[10]_i_5_n_0\,
      I5 => \m_axis_tdata[10]_i_6_n_0\,
      O => p_1_in(10)
    );
\m_axis_tdata[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[10]_i_7_n_0\,
      I1 => s_axis_tdata(10),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[10]_i_2_n_0\
    );
\m_axis_tdata[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(15),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(13),
      O => \m_axis_tdata[10]_i_3_n_0\
    );
\m_axis_tdata[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAFFFFFBBAF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => s_axis_tdata(10),
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[14]_i_8_n_0\,
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      I5 => s_axis_tdata(16),
      O => \m_axis_tdata[10]_i_4_n_0\
    );
\m_axis_tdata[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \m_axis_tdata[10]_i_8_n_0\,
      I1 => s_axis_tlast,
      I2 => \m_axis_tdata[10]_i_9_n_0\,
      O => \m_axis_tdata[10]_i_5_n_0\
    );
\m_axis_tdata[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB0BBB0B0000BB0B"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_10_n_0\,
      I1 => s_axis_tdata(15),
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(14),
      I5 => \m_axis_tdata[18]_i_11_n_0\,
      O => \m_axis_tdata[10]_i_6_n_0\
    );
\m_axis_tdata[10]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(11),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(12),
      O => \m_axis_tdata[10]_i_7_n_0\
    );
\m_axis_tdata[10]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA82020AA2020"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_8_n_0\,
      I1 => \m_axis_tdata[18]_i_8_n_0\,
      I2 => s_axis_tdata(12),
      I3 => \m_axis_tdata[18]_i_9_n_0\,
      I4 => s_axis_tdata(11),
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[10]_i_8_n_0\
    );
\m_axis_tdata[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_8_n_0\,
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(18),
      I3 => \m_axis_tdata[16]_i_7_n_0\,
      I4 => s_axis_tdata(17),
      I5 => \m_axis_tdata[16]_i_9_n_0\,
      O => \m_axis_tdata[10]_i_9_n_0\
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0EEEEEEE0EEE0EE"
    )
        port map (
      I0 => \m_axis_tdata[11]_i_2_n_0\,
      I1 => \m_axis_tdata[11]_i_3_n_0\,
      I2 => \m_axis_tdata[11]_i_4_n_0\,
      I3 => \m_axis_tdata[11]_i_5_n_0\,
      I4 => \m_axis_tdata[11]_i_6_n_0\,
      I5 => \m_axis_tdata[15]_i_5_n_0\,
      O => p_1_in(11)
    );
\m_axis_tdata[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \m_axis_tdata[11]_i_7_n_0\,
      I1 => s_axis_tlast,
      I2 => \m_axis_tdata[11]_i_8_n_0\,
      O => \m_axis_tdata[11]_i_2_n_0\
    );
\m_axis_tdata[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_10_n_0\,
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(14),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(15),
      I5 => \m_axis_tdata[18]_i_11_n_0\,
      O => \m_axis_tdata[11]_i_3_n_0\
    );
\m_axis_tdata[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[11]_i_9_n_0\,
      I1 => s_axis_tdata(11),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[11]_i_4_n_0\
    );
\m_axis_tdata[11]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \m_axis_tdata[21]_i_14_n_0\,
      I2 => s_axis_tdata(15),
      I3 => \m_axis_tdata[21]_i_12_n_0\,
      I4 => s_axis_tdata(16),
      I5 => \m_axis_tdata[21]_i_13_n_0\,
      O => \m_axis_tdata[11]_i_5_n_0\
    );
\m_axis_tdata[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEBFAEBFAEAEBFBF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => \m_axis_tdata[15]_i_9_n_0\,
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(11),
      I4 => s_axis_tdata(18),
      I5 => \m_axis_tdata[14]_i_8_n_0\,
      O => \m_axis_tdata[11]_i_6_n_0\
    );
\m_axis_tdata[11]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA82020AA2020"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_8_n_0\,
      I1 => \m_axis_tdata[18]_i_8_n_0\,
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[18]_i_9_n_0\,
      I4 => s_axis_tdata(12),
      I5 => s_axis_tdata(11),
      O => \m_axis_tdata[11]_i_7_n_0\
    );
\m_axis_tdata[11]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_8_n_0\,
      I1 => s_axis_tdata(17),
      I2 => s_axis_tdata(18),
      I3 => \m_axis_tdata[16]_i_9_n_0\,
      I4 => s_axis_tdata(19),
      I5 => \m_axis_tdata[16]_i_7_n_0\,
      O => \m_axis_tdata[11]_i_8_n_0\
    );
\m_axis_tdata[11]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(12),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(13),
      O => \m_axis_tdata[11]_i_9_n_0\
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAE00AEAE"
    )
        port map (
      I0 => \m_axis_tdata[12]_i_2_n_0\,
      I1 => s_axis_tdata(12),
      I2 => \m_axis_tdata[22]_i_3_n_0\,
      I3 => \m_axis_tdata[12]_i_3_n_0\,
      I4 => \m_axis_tdata[12]_i_4_n_0\,
      I5 => \m_axis_tdata[12]_i_5_n_0\,
      O => p_1_in(12)
    );
\m_axis_tdata[12]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00B8B8"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \m_axis_tdata[15]_i_10_n_0\,
      I2 => s_axis_tdata(12),
      I3 => s_axis_tdata(18),
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      O => \m_axis_tdata[12]_i_10_n_0\
    );
\m_axis_tdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF75FFFF"
    )
        port map (
      I0 => \m_axis_tdata[12]_i_6_n_0\,
      I1 => \m_axis_tdata[18]_i_10_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[12]_i_7_n_0\,
      I4 => s_axis_tlast,
      I5 => \m_axis_tdata[12]_i_8_n_0\,
      O => \m_axis_tdata[12]_i_2_n_0\
    );
\m_axis_tdata[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[12]_i_9_n_0\,
      I1 => s_axis_tdata(12),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[12]_i_3_n_0\
    );
\m_axis_tdata[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \m_axis_tdata[21]_i_14_n_0\,
      I2 => s_axis_tdata(16),
      I3 => \m_axis_tdata[21]_i_12_n_0\,
      I4 => s_axis_tdata(17),
      I5 => \m_axis_tdata[21]_i_13_n_0\,
      O => \m_axis_tdata[12]_i_4_n_0\
    );
\m_axis_tdata[12]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_5_n_0\,
      I1 => \m_axis_tdata[12]_i_10_n_0\,
      I2 => \m_axis_tdata[21]_i_17_n_0\,
      O => \m_axis_tdata[12]_i_5_n_0\
    );
\m_axis_tdata[12]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0BF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_9_n_0\,
      I1 => s_axis_tdata(13),
      I2 => \m_axis_tdata[18]_i_8_n_0\,
      I3 => s_axis_tdata(14),
      O => \m_axis_tdata[12]_i_6_n_0\
    );
\m_axis_tdata[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_18_n_0\,
      I1 => \m_axis_tdata[16]_i_14_n_0\,
      I2 => s_axis_tdata(16),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(15),
      O => \m_axis_tdata[12]_i_7_n_0\
    );
\m_axis_tdata[12]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_9_n_0\,
      I1 => s_axis_tdata(19),
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[16]_i_7_n_0\,
      I4 => s_axis_tdata(18),
      I5 => \m_axis_tdata[16]_i_8_n_0\,
      O => \m_axis_tdata[12]_i_8_n_0\
    );
\m_axis_tdata[12]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(13),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(14),
      O => \m_axis_tdata[12]_i_9_n_0\
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAE00AEAE"
    )
        port map (
      I0 => \m_axis_tdata[13]_i_2_n_0\,
      I1 => s_axis_tdata(13),
      I2 => \m_axis_tdata[22]_i_3_n_0\,
      I3 => \m_axis_tdata[13]_i_3_n_0\,
      I4 => \m_axis_tdata[13]_i_4_n_0\,
      I5 => \m_axis_tdata[13]_i_5_n_0\,
      O => p_1_in(13)
    );
\m_axis_tdata[13]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \m_axis_tdata[14]_i_8_n_0\,
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[15]_i_9_n_0\,
      I4 => s_axis_tdata(19),
      O => \m_axis_tdata[13]_i_10_n_0\
    );
\m_axis_tdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFEFEF"
    )
        port map (
      I0 => \m_axis_tdata[13]_i_6_n_0\,
      I1 => \m_axis_tdata[13]_i_7_n_0\,
      I2 => s_axis_tlast,
      I3 => \m_axis_tdata[18]_i_10_n_0\,
      I4 => s_axis_tdata(18),
      I5 => \m_axis_tdata[13]_i_8_n_0\,
      O => \m_axis_tdata[13]_i_2_n_0\
    );
\m_axis_tdata[13]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[13]_i_9_n_0\,
      I1 => s_axis_tdata(13),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[13]_i_3_n_0\
    );
\m_axis_tdata[13]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => \m_axis_tdata[21]_i_14_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[21]_i_12_n_0\,
      I4 => s_axis_tdata(18),
      I5 => \m_axis_tdata[21]_i_13_n_0\,
      O => \m_axis_tdata[13]_i_4_n_0\
    );
\m_axis_tdata[13]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_5_n_0\,
      I1 => \m_axis_tdata[13]_i_10_n_0\,
      I2 => \m_axis_tdata[21]_i_17_n_0\,
      O => \m_axis_tdata[13]_i_5_n_0\
    );
\m_axis_tdata[13]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \m_axis_tdata[18]_i_9_n_0\,
      I2 => \m_axis_tdata[18]_i_8_n_0\,
      I3 => s_axis_tdata(15),
      O => \m_axis_tdata[13]_i_6_n_0\
    );
\m_axis_tdata[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_8_n_0\,
      I1 => s_axis_tdata(19),
      I2 => s_axis_tdata(21),
      I3 => \m_axis_tdata[16]_i_7_n_0\,
      I4 => s_axis_tdata(20),
      I5 => \m_axis_tdata[16]_i_9_n_0\,
      O => \m_axis_tdata[13]_i_7_n_0\
    );
\m_axis_tdata[13]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_18_n_0\,
      I1 => \m_axis_tdata[16]_i_14_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(16),
      O => \m_axis_tdata[13]_i_8_n_0\
    );
\m_axis_tdata[13]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(14),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(15),
      O => \m_axis_tdata[13]_i_9_n_0\
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[14]_i_2_n_0\,
      I1 => \m_axis_tdata[14]_i_3_n_0\,
      I2 => \m_axis_tdata[14]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[14]_i_5_n_0\,
      I5 => \m_axis_tdata[14]_i_6_n_0\,
      O => p_1_in(14)
    );
\m_axis_tdata[14]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \m_axis_tdata[18]_i_10_n_0\,
      O => \m_axis_tdata[14]_i_10_n_0\
    );
\m_axis_tdata[14]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_9_n_0\,
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(22),
      I3 => \m_axis_tdata[16]_i_7_n_0\,
      I4 => s_axis_tdata(20),
      I5 => \m_axis_tdata[16]_i_8_n_0\,
      O => \m_axis_tdata[14]_i_11_n_0\
    );
\m_axis_tdata[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[14]_i_7_n_0\,
      I1 => s_axis_tdata(14),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[14]_i_2_n_0\
    );
\m_axis_tdata[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(19),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(17),
      O => \m_axis_tdata[14]_i_3_n_0\
    );
\m_axis_tdata[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAFFFFFBBAF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => s_axis_tdata(14),
      I2 => s_axis_tdata(21),
      I3 => \m_axis_tdata[14]_i_8_n_0\,
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      I5 => s_axis_tdata(20),
      O => \m_axis_tdata[14]_i_4_n_0\
    );
\m_axis_tdata[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4FFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_11_n_0\,
      I1 => s_axis_tdata(18),
      I2 => \m_axis_tdata[14]_i_9_n_0\,
      I3 => \m_axis_tdata[14]_i_10_n_0\,
      I4 => s_axis_tlast,
      I5 => \m_axis_tdata[14]_i_11_n_0\,
      O => \m_axis_tdata[14]_i_5_n_0\
    );
\m_axis_tdata[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101BB0BBFFFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_8_n_0\,
      I1 => s_axis_tdata(16),
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(15),
      I4 => s_axis_tdata(14),
      I5 => \m_axis_tdata[21]_i_8_n_0\,
      O => \m_axis_tdata[14]_i_6_n_0\
    );
\m_axis_tdata[14]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(15),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(16),
      O => \m_axis_tdata[14]_i_7_n_0\
    );
\m_axis_tdata[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFFFFFF1FFF1"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_15_n_0\,
      I1 => \m_axis_tdata[22]_i_6_n_0\,
      I2 => \m_axis_tdata[21]_i_16_n_0\,
      I3 => balance(2),
      I4 => \m_axis_tdata[22]_i_5_n_0\,
      I5 => balance(3),
      O => \m_axis_tdata[14]_i_8_n_0\
    );
\m_axis_tdata[14]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => \m_axis_tdata[19]_i_9_n_0\,
      O => \m_axis_tdata[14]_i_9_n_0\
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_2_n_0\,
      I1 => \m_axis_tdata[15]_i_3_n_0\,
      I2 => \m_axis_tdata[15]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[15]_i_6_n_0\,
      I5 => \m_axis_tdata[15]_i_7_n_0\,
      O => p_1_in(15)
    );
\m_axis_tdata[15]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000D000D000D0000"
    )
        port map (
      I0 => balance(3),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(2),
      I3 => \m_axis_tdata[21]_i_16_n_0\,
      I4 => \m_axis_tdata[22]_i_6_n_0\,
      I5 => \m_axis_tdata[21]_i_15_n_0\,
      O => \m_axis_tdata[15]_i_10_n_0\
    );
\m_axis_tdata[15]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA82020AA2020"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_8_n_0\,
      I1 => \m_axis_tdata[18]_i_8_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[18]_i_9_n_0\,
      I4 => s_axis_tdata(16),
      I5 => s_axis_tdata(15),
      O => \m_axis_tdata[15]_i_11_n_0\
    );
\m_axis_tdata[15]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_9_n_0\,
      I1 => s_axis_tdata(22),
      I2 => s_axis_tdata(21),
      I3 => \m_axis_tdata[16]_i_8_n_0\,
      I4 => s_axis_tdata(23),
      I5 => \m_axis_tdata[16]_i_7_n_0\,
      O => \m_axis_tdata[15]_i_12_n_0\
    );
\m_axis_tdata[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_8_n_0\,
      I1 => s_axis_tdata(15),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[15]_i_2_n_0\
    );
\m_axis_tdata[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[15]_i_3_n_0\
    );
\m_axis_tdata[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEBFBFBFAEBF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => \m_axis_tdata[15]_i_9_n_0\,
      I2 => s_axis_tdata(21),
      I3 => s_axis_tdata(15),
      I4 => \m_axis_tdata[15]_i_10_n_0\,
      I5 => s_axis_tdata(22),
      O => \m_axis_tdata[15]_i_4_n_0\
    );
\m_axis_tdata[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0DFF"
    )
        port map (
      I0 => balance(3),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(2),
      I3 => balance(1),
      I4 => balance(0),
      O => \m_axis_tdata[15]_i_5_n_0\
    );
\m_axis_tdata[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_11_n_0\,
      I1 => s_axis_tlast,
      I2 => \m_axis_tdata[15]_i_12_n_0\,
      O => \m_axis_tdata[15]_i_6_n_0\
    );
\m_axis_tdata[15]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB0BBB0B0000BB0B"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_10_n_0\,
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(18),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(19),
      I5 => \m_axis_tdata[18]_i_11_n_0\,
      O => \m_axis_tdata[15]_i_7_n_0\
    );
\m_axis_tdata[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(16),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(17),
      O => \m_axis_tdata[15]_i_8_n_0\
    );
\m_axis_tdata[15]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00011000"
    )
        port map (
      I0 => balance(0),
      I1 => balance(1),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(3),
      O => \m_axis_tdata[15]_i_9_n_0\
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFE0"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_2_n_0\,
      I1 => \m_axis_tdata[16]_i_3_n_0\,
      I2 => s_axis_tlast,
      I3 => \m_axis_tdata[16]_i_4_n_0\,
      I4 => \m_axis_tdata[16]_i_5_n_0\,
      I5 => \m_axis_tdata[16]_i_6_n_0\,
      O => p_1_in(16)
    );
\m_axis_tdata[16]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_18_n_0\,
      I1 => \m_axis_tdata[16]_i_14_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(19),
      O => \m_axis_tdata[16]_i_10_n_0\
    );
\m_axis_tdata[16]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C40444CC04040C0"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_18_n_0\,
      I1 => balance(0),
      I2 => balance(1),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_i_5_n_0\,
      I5 => balance(2),
      O => \m_axis_tdata[16]_i_11_n_0\
    );
\m_axis_tdata[16]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"535300F3"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => s_axis_tdata(17),
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(18),
      I4 => \m_axis_tdata[18]_i_8_n_0\,
      O => \m_axis_tdata[16]_i_12_n_0\
    );
\m_axis_tdata[16]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7707770700007707"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_9_n_0\,
      I1 => s_axis_tdata(22),
      I2 => s_axis_tdata(16),
      I3 => \m_axis_tdata[21]_i_5_n_0\,
      I4 => s_axis_tdata(23),
      I5 => \m_axis_tdata[14]_i_8_n_0\,
      O => \m_axis_tdata[16]_i_13_n_0\
    );
\m_axis_tdata[16]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00DFFFFF"
    )
        port map (
      I0 => balance(2),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(3),
      I3 => balance(1),
      I4 => balance(0),
      O => \m_axis_tdata[16]_i_14_n_0\
    );
\m_axis_tdata[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D0CFF0C"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_7_n_0\,
      I1 => s_axis_tdata(22),
      I2 => \m_axis_tdata[16]_i_8_n_0\,
      I3 => s_axis_tdata(23),
      I4 => \m_axis_tdata[16]_i_9_n_0\,
      O => \m_axis_tdata[16]_i_2_n_0\
    );
\m_axis_tdata[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEFFAEAEAEAE"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_10_n_0\,
      I1 => s_axis_tdata(21),
      I2 => \m_axis_tdata[18]_i_10_n_0\,
      I3 => \m_axis_tdata[16]_i_11_n_0\,
      I4 => \m_axis_tdata[16]_i_12_n_0\,
      I5 => \m_axis_tdata[19]_i_7_n_0\,
      O => \m_axis_tdata[16]_i_3_n_0\
    );
\m_axis_tdata[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_5_n_0\,
      I1 => \m_axis_tdata[16]_i_13_n_0\,
      I2 => \m_axis_tdata[21]_i_17_n_0\,
      O => \m_axis_tdata[16]_i_4_n_0\
    );
\m_axis_tdata[16]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(21),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(19),
      O => \m_axis_tdata[16]_i_5_n_0\
    );
\m_axis_tdata[16]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_9_n_0\,
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(18),
      I3 => \m_axis_tdata[21]_i_11_n_0\,
      I4 => s_axis_tdata(17),
      I5 => \m_axis_tdata[21]_i_10_n_0\,
      O => \m_axis_tdata[16]_i_6_n_0\
    );
\m_axis_tdata[16]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => balance(2),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(3),
      I3 => balance(0),
      I4 => balance(1),
      O => \m_axis_tdata[16]_i_7_n_0\
    );
\m_axis_tdata[16]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFF7F"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      I2 => balance(3),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(2),
      O => \m_axis_tdata[16]_i_8_n_0\
    );
\m_axis_tdata[16]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFF7F"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(3),
      O => \m_axis_tdata[16]_i_9_n_0\
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAE00AEAEAEAE"
    )
        port map (
      I0 => \m_axis_tdata[17]_i_2_n_0\,
      I1 => \m_axis_tdata[17]_i_3_n_0\,
      I2 => \m_axis_tdata[17]_i_4_n_0\,
      I3 => \m_axis_tdata[19]_i_2_n_0\,
      I4 => \m_axis_tdata[17]_i_5_n_0\,
      I5 => \m_axis_tdata[17]_i_6_n_0\,
      O => p_1_in(17)
    );
\m_axis_tdata[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[17]_i_7_n_0\,
      I1 => s_axis_tdata(17),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[17]_i_2_n_0\
    );
\m_axis_tdata[17]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CFCCAFAAEFEE"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => s_axis_tdata(22),
      I2 => \m_axis_tdata[21]_i_14_n_0\,
      I3 => s_axis_tdata(20),
      I4 => \m_axis_tdata[21]_i_13_n_0\,
      I5 => \m_axis_tdata[21]_i_12_n_0\,
      O => \m_axis_tdata[17]_i_3_n_0\
    );
\m_axis_tdata[17]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010DFFFF"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => \m_axis_tdata[21]_i_5_n_0\,
      I2 => \m_axis_tdata[21]_i_17_n_0\,
      I3 => s_axis_tdata(23),
      I4 => \m_axis_tdata[15]_i_5_n_0\,
      O => \m_axis_tdata[17]_i_4_n_0\
    );
\m_axis_tdata[17]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_10_n_0\,
      I1 => s_axis_tdata(22),
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(21),
      I5 => \m_axis_tdata[18]_i_11_n_0\,
      O => \m_axis_tdata[17]_i_5_n_0\
    );
\m_axis_tdata[17]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101BB0BBFFFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_8_n_0\,
      I1 => s_axis_tdata(19),
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(17),
      I5 => \m_axis_tdata[21]_i_8_n_0\,
      O => \m_axis_tdata[17]_i_6_n_0\
    );
\m_axis_tdata[17]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(18),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(19),
      O => \m_axis_tdata[17]_i_7_n_0\
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAE00AEAEAEAE"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_2_n_0\,
      I1 => \m_axis_tdata[18]_i_3_n_0\,
      I2 => \m_axis_tdata[18]_i_4_n_0\,
      I3 => \m_axis_tdata[19]_i_2_n_0\,
      I4 => \m_axis_tdata[18]_i_5_n_0\,
      I5 => \m_axis_tdata[18]_i_6_n_0\,
      O => p_1_in(18)
    );
\m_axis_tdata[18]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6FFF"
    )
        port map (
      I0 => \m_axis_tdata[22]_i_5_n_0\,
      I1 => balance(3),
      I2 => balance(1),
      I3 => balance(0),
      I4 => balance(2),
      O => \m_axis_tdata[18]_i_10_n_0\
    );
\m_axis_tdata[18]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FFFFFFDFFFFF"
    )
        port map (
      I0 => balance(2),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(3),
      I3 => \m_axis_tdata[21]_i_18_n_0\,
      I4 => balance(0),
      I5 => balance(1),
      O => \m_axis_tdata[18]_i_11_n_0\
    );
\m_axis_tdata[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_7_n_0\,
      I1 => s_axis_tdata(18),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[18]_i_2_n_0\
    );
\m_axis_tdata[18]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF0CFCCAFAAEFEE"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => s_axis_tdata(23),
      I2 => \m_axis_tdata[21]_i_14_n_0\,
      I3 => s_axis_tdata(21),
      I4 => \m_axis_tdata[21]_i_13_n_0\,
      I5 => \m_axis_tdata[21]_i_12_n_0\,
      O => \m_axis_tdata[18]_i_3_n_0\
    );
\m_axis_tdata[18]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"010DFFFF"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => \m_axis_tdata[21]_i_5_n_0\,
      I2 => \m_axis_tdata[21]_i_17_n_0\,
      I3 => s_axis_tdata(23),
      I4 => \m_axis_tdata[15]_i_5_n_0\,
      O => \m_axis_tdata[18]_i_4_n_0\
    );
\m_axis_tdata[18]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA82020AA2020"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_8_n_0\,
      I1 => \m_axis_tdata[18]_i_8_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[18]_i_9_n_0\,
      I4 => s_axis_tdata(19),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[18]_i_5_n_0\
    );
\m_axis_tdata[18]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB0BBB0B0000BB0B"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_10_n_0\,
      I1 => s_axis_tdata(23),
      I2 => s_axis_tdata(21),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(22),
      I5 => \m_axis_tdata[18]_i_11_n_0\,
      O => \m_axis_tdata[18]_i_6_n_0\
    );
\m_axis_tdata[18]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(19),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(20),
      O => \m_axis_tdata[18]_i_7_n_0\
    );
\m_axis_tdata[18]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE7FF"
    )
        port map (
      I0 => balance(2),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(3),
      I3 => balance(0),
      I4 => balance(1),
      O => \m_axis_tdata[18]_i_8_n_0\
    );
\m_axis_tdata[18]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FBFFFFFB"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(3),
      O => \m_axis_tdata[18]_i_9_n_0\
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEEEEEEEEE0"
    )
        port map (
      I0 => \m_axis_tdata[19]_i_2_n_0\,
      I1 => \m_axis_tdata[19]_i_3_n_0\,
      I2 => \m_axis_tdata[19]_i_4_n_0\,
      I3 => \m_axis_tdata[19]_i_5_n_0\,
      I4 => s_axis_tlast,
      I5 => \m_axis_tdata[19]_i_6_n_0\,
      O => p_1_in(19)
    );
\m_axis_tdata[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEFFFFFF00DFFFFF"
    )
        port map (
      I0 => balance(2),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(3),
      I3 => balance(1),
      I4 => balance(0),
      I5 => \m_axis_tdata[21]_i_18_n_0\,
      O => \m_axis_tdata[19]_i_10_n_0\
    );
\m_axis_tdata[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \m_axis_tdata[19]_i_7_n_0\,
      I1 => s_axis_tdata(23),
      I2 => s_axis_tlast,
      O => \m_axis_tdata[19]_i_2_n_0\
    );
\m_axis_tdata[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C404C40CCC00000"
    )
        port map (
      I0 => \m_axis_tdata[19]_i_8_n_0\,
      I1 => \m_axis_tdata[19]_i_7_n_0\,
      I2 => \m_axis_tdata[19]_i_9_n_0\,
      I3 => s_axis_tdata(22),
      I4 => s_axis_tdata(23),
      I5 => \m_axis_tdata[19]_i_10_n_0\,
      O => \m_axis_tdata[19]_i_3_n_0\
    );
\m_axis_tdata[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AFF2A2A"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => \m_axis_tdata[21]_i_13_n_0\,
      I2 => \m_axis_tdata[21]_i_12_n_0\,
      I3 => \m_axis_tdata[21]_i_14_n_0\,
      I4 => s_axis_tdata(22),
      O => \m_axis_tdata[19]_i_4_n_0\
    );
\m_axis_tdata[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \m_axis_tdata[21]_i_11_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[21]_i_10_n_0\,
      I4 => \m_axis_tdata[21]_i_9_n_0\,
      I5 => s_axis_tdata(19),
      O => \m_axis_tdata[19]_i_5_n_0\
    );
\m_axis_tdata[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C808"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \m_axis_tdata[15]_i_5_n_0\,
      I2 => \m_axis_tdata[21]_i_5_n_0\,
      I3 => s_axis_tdata(23),
      I4 => \m_axis_tdata[21]_i_17_n_0\,
      O => \m_axis_tdata[19]_i_6_n_0\
    );
\m_axis_tdata[19]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45FFFFFF"
    )
        port map (
      I0 => balance(2),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(3),
      I3 => balance(0),
      I4 => balance(1),
      O => \m_axis_tdata[19]_i_7_n_0\
    );
\m_axis_tdata[19]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0531F531"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => s_axis_tdata(20),
      I2 => \m_axis_tdata[18]_i_8_n_0\,
      I3 => \m_axis_tdata[18]_i_9_n_0\,
      I4 => s_axis_tdata(19),
      O => \m_axis_tdata[19]_i_8_n_0\
    );
\m_axis_tdata[19]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFDFFFF"
    )
        port map (
      I0 => balance(0),
      I1 => balance(1),
      I2 => balance(3),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(2),
      O => \m_axis_tdata[19]_i_9_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFE00FEFE"
    )
        port map (
      I0 => \m_axis_tdata[1]_i_2_n_0\,
      I1 => \m_axis_tdata[1]_i_3_n_0\,
      I2 => \m_axis_tdata[1]_i_4_n_0\,
      I3 => \m_axis_tdata[1]_i_5_n_0\,
      I4 => \m_axis_tdata[1]_i_6_n_0\,
      I5 => \m_axis_tdata[1]_i_7_n_0\,
      O => p_1_in(1)
    );
\m_axis_tdata[1]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44477477"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \m_axis_tdata[15]_i_9_n_0\,
      I2 => \m_axis_tdata[14]_i_8_n_0\,
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(1),
      O => \m_axis_tdata[1]_i_10_n_0\
    );
\m_axis_tdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_10_n_0\,
      I1 => s_axis_tdata(6),
      I2 => s_axis_tdata(4),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(5),
      I5 => \m_axis_tdata[18]_i_11_n_0\,
      O => \m_axis_tdata[1]_i_2_n_0\
    );
\m_axis_tdata[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF2E22FFFF"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \m_axis_tdata[18]_i_8_n_0\,
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(2),
      I4 => s_axis_tlast,
      I5 => \m_axis_tdata[1]_i_8_n_0\,
      O => \m_axis_tdata[1]_i_3_n_0\
    );
\m_axis_tdata[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \m_axis_tdata[22]_i_3_n_0\,
      O => \m_axis_tdata[1]_i_4_n_0\
    );
\m_axis_tdata[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[1]_i_9_n_0\,
      I1 => s_axis_tdata(1),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[1]_i_5_n_0\
    );
\m_axis_tdata[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD0000D0DDD0DD"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => \m_axis_tdata[21]_i_13_n_0\,
      I3 => s_axis_tdata(6),
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(4),
      O => \m_axis_tdata[1]_i_6_n_0\
    );
\m_axis_tdata[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_5_n_0\,
      I1 => \m_axis_tdata[1]_i_10_n_0\,
      I2 => \m_axis_tdata[21]_i_17_n_0\,
      O => \m_axis_tdata[1]_i_7_n_0\
    );
\m_axis_tdata[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_9_n_0\,
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(7),
      I3 => \m_axis_tdata[16]_i_8_n_0\,
      I4 => s_axis_tdata(9),
      I5 => \m_axis_tdata[16]_i_7_n_0\,
      O => \m_axis_tdata[1]_i_8_n_0\
    );
\m_axis_tdata[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(2),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(3),
      O => \m_axis_tdata[1]_i_9_n_0\
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA8AAA8AAA8A8"
    )
        port map (
      I0 => \m_axis_tdata[20]_i_2_n_0\,
      I1 => \m_axis_tdata[21]_i_4_n_0\,
      I2 => \m_axis_tdata[20]_i_3_n_0\,
      I3 => \m_axis_tdata[21]_i_6_n_0\,
      I4 => \m_axis_tdata[21]_i_5_n_0\,
      I5 => s_axis_tdata(20),
      O => p_1_in(20)
    );
\m_axis_tdata[20]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5FDD"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => s_axis_tdata(23),
      I2 => \m_axis_tdata[20]_i_4_n_0\,
      I3 => \m_axis_tdata[21]_i_8_n_0\,
      O => \m_axis_tdata[20]_i_2_n_0\
    );
\m_axis_tdata[20]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => \m_axis_tdata[21]_i_11_n_0\,
      I2 => s_axis_tdata(21),
      I3 => \m_axis_tdata[21]_i_10_n_0\,
      I4 => \m_axis_tdata[21]_i_9_n_0\,
      I5 => s_axis_tdata(20),
      O => \m_axis_tdata[20]_i_3_n_0\
    );
\m_axis_tdata[20]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"535300F3"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(21),
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(22),
      I4 => \m_axis_tdata[18]_i_8_n_0\,
      O => \m_axis_tdata[20]_i_4_n_0\
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8AAAAAAA8"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_2_n_0\,
      I1 => \m_axis_tdata[21]_i_3_n_0\,
      I2 => \m_axis_tdata[21]_i_4_n_0\,
      I3 => \m_axis_tdata[21]_i_5_n_0\,
      I4 => s_axis_tdata(21),
      I5 => \m_axis_tdata[21]_i_6_n_0\,
      O => p_1_in(21)
    );
\m_axis_tdata[21]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFBF"
    )
        port map (
      I0 => balance(0),
      I1 => balance(1),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(3),
      O => \m_axis_tdata[21]_i_10_n_0\
    );
\m_axis_tdata[21]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDDFFF"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(3),
      O => \m_axis_tdata[21]_i_11_n_0\
    );
\m_axis_tdata[21]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF00FFDF"
    )
        port map (
      I0 => balance(2),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(3),
      I3 => \m_axis_tdata[21]_i_18_n_0\,
      I4 => balance(1),
      I5 => balance(0),
      O => \m_axis_tdata[21]_i_12_n_0\
    );
\m_axis_tdata[21]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFEF"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(3),
      O => \m_axis_tdata[21]_i_13_n_0\
    );
\m_axis_tdata[21]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBAFFFF"
    )
        port map (
      I0 => balance(2),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(3),
      I3 => balance(0),
      I4 => \m_axis_tdata[21]_i_18_n_0\,
      O => \m_axis_tdata[21]_i_14_n_0\
    );
\m_axis_tdata[21]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => balance(4),
      I1 => balance(3),
      I2 => balance(9),
      I3 => balance(2),
      O => \m_axis_tdata[21]_i_15_n_0\
    );
\m_axis_tdata[21]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      O => \m_axis_tdata[21]_i_16_n_0\
    );
\m_axis_tdata[21]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"070203070E0E020E"
    )
        port map (
      I0 => balance(1),
      I1 => \m_axis_tdata[21]_i_18_n_0\,
      I2 => balance(0),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_i_5_n_0\,
      I5 => balance(2),
      O => \m_axis_tdata[21]_i_17_n_0\
    );
\m_axis_tdata[21]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => balance(1),
      I1 => balance(4),
      I2 => balance(3),
      I3 => balance(9),
      I4 => balance(2),
      I5 => \m_axis_tdata[22]_i_6_n_0\,
      O => \m_axis_tdata[21]_i_18_n_0\
    );
\m_axis_tdata[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"77F3"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_7_n_0\,
      I1 => s_axis_tlast,
      I2 => s_axis_tdata(23),
      I3 => \m_axis_tdata[21]_i_8_n_0\,
      O => \m_axis_tdata[21]_i_2_n_0\
    );
\m_axis_tdata[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_9_n_0\,
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(22),
      I3 => \m_axis_tdata[21]_i_10_n_0\,
      I4 => s_axis_tdata(23),
      I5 => \m_axis_tdata[21]_i_11_n_0\,
      O => \m_axis_tdata[21]_i_3_n_0\
    );
\m_axis_tdata[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFAAFFAA"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => \m_axis_tdata[21]_i_13_n_0\,
      I3 => s_axis_tdata(23),
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      O => \m_axis_tdata[21]_i_4_n_0\
    );
\m_axis_tdata[21]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F00EEFE"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_15_n_0\,
      I1 => \m_axis_tdata[22]_i_6_n_0\,
      I2 => balance(3),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(2),
      I5 => \m_axis_tdata[21]_i_16_n_0\,
      O => \m_axis_tdata[21]_i_5_n_0\
    );
\m_axis_tdata[21]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAFF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => s_axis_tdata(23),
      I2 => \m_axis_tdata[21]_i_5_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      O => \m_axis_tdata[21]_i_6_n_0\
    );
\m_axis_tdata[21]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"535300F3"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => s_axis_tdata(22),
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(23),
      I4 => \m_axis_tdata[18]_i_8_n_0\,
      O => \m_axis_tdata[21]_i_7_n_0\
    );
\m_axis_tdata[21]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005DFFFF"
    )
        port map (
      I0 => balance(2),
      I1 => \m_axis_tdata[22]_i_5_n_0\,
      I2 => balance(3),
      I3 => balance(1),
      I4 => balance(0),
      O => \m_axis_tdata[21]_i_8_n_0\
    );
\m_axis_tdata[21]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFDFFBFF"
    )
        port map (
      I0 => balance(2),
      I1 => balance(0),
      I2 => balance(1),
      I3 => \m_axis_tdata[22]_i_5_n_0\,
      I4 => balance(3),
      O => \m_axis_tdata[21]_i_9_n_0\
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCFA3050"
    )
        port map (
      I0 => \m_axis_tdata[22]_i_2_n_0\,
      I1 => \m_axis_tdata[22]_i_3_n_0\,
      I2 => s_axis_tdata(22),
      I3 => s_axis_tlast,
      I4 => s_axis_tdata(23),
      O => p_1_in(22)
    );
\m_axis_tdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FBFF0000FF5D"
    )
        port map (
      I0 => \m_axis_tdata[22]_i_4_n_0\,
      I1 => balance(3),
      I2 => \m_axis_tdata[22]_i_5_n_0\,
      I3 => balance(2),
      I4 => balance(0),
      I5 => balance(1),
      O => \m_axis_tdata[22]_i_2_n_0\
    );
\m_axis_tdata[22]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => balance(0),
      I1 => balance(9),
      I2 => \m_axis_tdata[22]_i_6_n_0\,
      I3 => balance(1),
      I4 => balance(2),
      I5 => \m_axis_tdata[22]_i_7_n_0\,
      O => \m_axis_tdata[22]_i_3_n_0\
    );
\m_axis_tdata[22]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \m_axis_tdata[22]_i_6_n_0\,
      I1 => balance(2),
      I2 => balance(9),
      I3 => balance(3),
      I4 => balance(4),
      O => \m_axis_tdata[22]_i_4_n_0\
    );
\m_axis_tdata[22]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => balance(5),
      I1 => balance(6),
      I2 => balance(4),
      I3 => balance(9),
      I4 => balance(8),
      I5 => balance(7),
      O => \m_axis_tdata[22]_i_5_n_0\
    );
\m_axis_tdata[22]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => balance(8),
      I1 => balance(7),
      I2 => balance(6),
      I3 => balance(5),
      O => \m_axis_tdata[22]_i_6_n_0\
    );
\m_axis_tdata[22]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => balance(3),
      I1 => balance(4),
      O => \m_axis_tdata[22]_i_7_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[2]_i_2_n_0\,
      I1 => \m_axis_tdata[2]_i_3_n_0\,
      I2 => \m_axis_tdata[2]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[2]_i_5_n_0\,
      I5 => \m_axis_tdata[2]_i_6_n_0\,
      O => p_1_in(2)
    );
\m_axis_tdata[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_8_n_0\,
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(9),
      I3 => \m_axis_tdata[16]_i_9_n_0\,
      I4 => s_axis_tdata(10),
      I5 => \m_axis_tdata[16]_i_7_n_0\,
      O => \m_axis_tdata[2]_i_10_n_0\
    );
\m_axis_tdata[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[2]_i_7_n_0\,
      I1 => s_axis_tdata(2),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[2]_i_2_n_0\
    );
\m_axis_tdata[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(7),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(5),
      O => \m_axis_tdata[2]_i_3_n_0\
    );
\m_axis_tdata[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEBFBFBFAEBF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => \m_axis_tdata[15]_i_9_n_0\,
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(2),
      I4 => \m_axis_tdata[15]_i_10_n_0\,
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[2]_i_4_n_0\
    );
\m_axis_tdata[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4FFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_11_n_0\,
      I1 => s_axis_tdata(6),
      I2 => \m_axis_tdata[2]_i_8_n_0\,
      I3 => \m_axis_tdata[2]_i_9_n_0\,
      I4 => s_axis_tlast,
      I5 => \m_axis_tdata[2]_i_10_n_0\,
      O => \m_axis_tdata[2]_i_5_n_0\
    );
\m_axis_tdata[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101BB0BBFFFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_8_n_0\,
      I1 => s_axis_tdata(4),
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(3),
      I4 => s_axis_tdata(2),
      I5 => \m_axis_tdata[21]_i_8_n_0\,
      O => \m_axis_tdata[2]_i_6_n_0\
    );
\m_axis_tdata[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(3),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(4),
      O => \m_axis_tdata[2]_i_7_n_0\
    );
\m_axis_tdata[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \m_axis_tdata[19]_i_9_n_0\,
      O => \m_axis_tdata[2]_i_8_n_0\
    );
\m_axis_tdata[2]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \m_axis_tdata[18]_i_10_n_0\,
      O => \m_axis_tdata[2]_i_9_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEFE00FEFE"
    )
        port map (
      I0 => \m_axis_tdata[3]_i_2_n_0\,
      I1 => \m_axis_tdata[3]_i_3_n_0\,
      I2 => \m_axis_tdata[3]_i_4_n_0\,
      I3 => \m_axis_tdata[3]_i_5_n_0\,
      I4 => \m_axis_tdata[3]_i_6_n_0\,
      I5 => \m_axis_tdata[3]_i_7_n_0\,
      O => p_1_in(3)
    );
\m_axis_tdata[3]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE400E4"
    )
        port map (
      I0 => \m_axis_tdata[14]_i_8_n_0\,
      I1 => s_axis_tdata(10),
      I2 => s_axis_tdata(3),
      I3 => \m_axis_tdata[15]_i_9_n_0\,
      I4 => s_axis_tdata(9),
      O => \m_axis_tdata[3]_i_10_n_0\
    );
\m_axis_tdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_10_n_0\,
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(6),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(7),
      I5 => \m_axis_tdata[18]_i_11_n_0\,
      O => \m_axis_tdata[3]_i_2_n_0\
    );
\m_axis_tdata[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF22E2FFFFFFFF"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \m_axis_tdata[18]_i_8_n_0\,
      I2 => s_axis_tdata(4),
      I3 => \m_axis_tdata[18]_i_9_n_0\,
      I4 => \m_axis_tdata[3]_i_8_n_0\,
      I5 => s_axis_tlast,
      O => \m_axis_tdata[3]_i_3_n_0\
    );
\m_axis_tdata[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \m_axis_tdata[22]_i_3_n_0\,
      O => \m_axis_tdata[3]_i_4_n_0\
    );
\m_axis_tdata[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[3]_i_9_n_0\,
      I1 => s_axis_tdata(3),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[3]_i_5_n_0\
    );
\m_axis_tdata[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \m_axis_tdata[21]_i_14_n_0\,
      I2 => s_axis_tdata(7),
      I3 => \m_axis_tdata[21]_i_12_n_0\,
      I4 => s_axis_tdata(8),
      I5 => \m_axis_tdata[21]_i_13_n_0\,
      O => \m_axis_tdata[3]_i_6_n_0\
    );
\m_axis_tdata[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_5_n_0\,
      I1 => \m_axis_tdata[3]_i_10_n_0\,
      I2 => \m_axis_tdata[21]_i_17_n_0\,
      O => \m_axis_tdata[3]_i_7_n_0\
    );
\m_axis_tdata[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_8_n_0\,
      I1 => s_axis_tdata(9),
      I2 => s_axis_tdata(10),
      I3 => \m_axis_tdata[16]_i_9_n_0\,
      I4 => s_axis_tdata(11),
      I5 => \m_axis_tdata[16]_i_7_n_0\,
      O => \m_axis_tdata[3]_i_8_n_0\
    );
\m_axis_tdata[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(4),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(5),
      O => \m_axis_tdata[3]_i_9_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[4]_i_2_n_0\,
      I1 => \m_axis_tdata[4]_i_3_n_0\,
      I2 => \m_axis_tdata[4]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[4]_i_5_n_0\,
      I5 => \m_axis_tdata[4]_i_6_n_0\,
      O => p_1_in(4)
    );
\m_axis_tdata[4]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_18_n_0\,
      I1 => \m_axis_tdata[16]_i_14_n_0\,
      I2 => s_axis_tdata(8),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(7),
      O => \m_axis_tdata[4]_i_10_n_0\
    );
\m_axis_tdata[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[4]_i_7_n_0\,
      I1 => s_axis_tdata(4),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[4]_i_2_n_0\
    );
\m_axis_tdata[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(9),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(7),
      O => \m_axis_tdata[4]_i_3_n_0\
    );
\m_axis_tdata[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAFFFFFBBAF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => s_axis_tdata(4),
      I2 => s_axis_tdata(11),
      I3 => \m_axis_tdata[14]_i_8_n_0\,
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[4]_i_4_n_0\
    );
\m_axis_tdata[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFEFEF"
    )
        port map (
      I0 => \m_axis_tdata[4]_i_8_n_0\,
      I1 => \m_axis_tdata[4]_i_9_n_0\,
      I2 => s_axis_tlast,
      I3 => \m_axis_tdata[18]_i_10_n_0\,
      I4 => s_axis_tdata(9),
      I5 => \m_axis_tdata[4]_i_10_n_0\,
      O => \m_axis_tdata[4]_i_5_n_0\
    );
\m_axis_tdata[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \m_axis_tdata[22]_i_3_n_0\,
      I1 => s_axis_tdata(4),
      O => \m_axis_tdata[4]_i_6_n_0\
    );
\m_axis_tdata[4]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(5),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(6),
      O => \m_axis_tdata[4]_i_7_n_0\
    );
\m_axis_tdata[4]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \m_axis_tdata[18]_i_9_n_0\,
      I2 => \m_axis_tdata[18]_i_8_n_0\,
      I3 => s_axis_tdata(6),
      O => \m_axis_tdata[4]_i_8_n_0\
    );
\m_axis_tdata[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_9_n_0\,
      I1 => s_axis_tdata(11),
      I2 => s_axis_tdata(12),
      I3 => \m_axis_tdata[16]_i_7_n_0\,
      I4 => s_axis_tdata(10),
      I5 => \m_axis_tdata[16]_i_8_n_0\,
      O => \m_axis_tdata[4]_i_9_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_2_n_0\,
      I1 => \m_axis_tdata[5]_i_3_n_0\,
      I2 => \m_axis_tdata[5]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[5]_i_5_n_0\,
      I5 => \m_axis_tdata[5]_i_6_n_0\,
      O => p_1_in(5)
    );
\m_axis_tdata[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_9_n_0\,
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(11),
      I3 => \m_axis_tdata[16]_i_8_n_0\,
      I4 => s_axis_tdata(13),
      I5 => \m_axis_tdata[16]_i_7_n_0\,
      O => \m_axis_tdata[5]_i_10_n_0\
    );
\m_axis_tdata[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[5]_i_7_n_0\,
      I1 => s_axis_tdata(5),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[5]_i_2_n_0\
    );
\m_axis_tdata[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(10),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(8),
      O => \m_axis_tdata[5]_i_3_n_0\
    );
\m_axis_tdata[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAFFFFFBBAF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(12),
      I3 => \m_axis_tdata[14]_i_8_n_0\,
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      I5 => s_axis_tdata(11),
      O => \m_axis_tdata[5]_i_4_n_0\
    );
\m_axis_tdata[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4FFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_11_n_0\,
      I1 => s_axis_tdata(9),
      I2 => \m_axis_tdata[5]_i_8_n_0\,
      I3 => \m_axis_tdata[5]_i_9_n_0\,
      I4 => s_axis_tlast,
      I5 => \m_axis_tdata[5]_i_10_n_0\,
      O => \m_axis_tdata[5]_i_5_n_0\
    );
\m_axis_tdata[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101BB0BBFFFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_8_n_0\,
      I1 => s_axis_tdata(7),
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(6),
      I4 => s_axis_tdata(5),
      I5 => \m_axis_tdata[21]_i_8_n_0\,
      O => \m_axis_tdata[5]_i_6_n_0\
    );
\m_axis_tdata[5]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(6),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(7),
      O => \m_axis_tdata[5]_i_7_n_0\
    );
\m_axis_tdata[5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \m_axis_tdata[19]_i_9_n_0\,
      O => \m_axis_tdata[5]_i_8_n_0\
    );
\m_axis_tdata[5]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \m_axis_tdata[18]_i_10_n_0\,
      O => \m_axis_tdata[5]_i_9_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[6]_i_2_n_0\,
      I1 => \m_axis_tdata[6]_i_3_n_0\,
      I2 => \m_axis_tdata[6]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[6]_i_5_n_0\,
      I5 => \m_axis_tdata[6]_i_6_n_0\,
      O => p_1_in(6)
    );
\m_axis_tdata[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_7_n_0\,
      I1 => s_axis_tdata(14),
      I2 => s_axis_tdata(12),
      I3 => \m_axis_tdata[16]_i_8_n_0\,
      I4 => s_axis_tdata(13),
      I5 => \m_axis_tdata[16]_i_9_n_0\,
      O => \m_axis_tdata[6]_i_10_n_0\
    );
\m_axis_tdata[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[6]_i_7_n_0\,
      I1 => s_axis_tdata(6),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[6]_i_2_n_0\
    );
\m_axis_tdata[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(11),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[6]_i_3_n_0\
    );
\m_axis_tdata[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAFFFFFBBAF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => s_axis_tdata(6),
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[14]_i_8_n_0\,
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      I5 => s_axis_tdata(12),
      O => \m_axis_tdata[6]_i_4_n_0\
    );
\m_axis_tdata[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF4FFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_11_n_0\,
      I1 => s_axis_tdata(10),
      I2 => \m_axis_tdata[6]_i_8_n_0\,
      I3 => \m_axis_tdata[6]_i_9_n_0\,
      I4 => s_axis_tlast,
      I5 => \m_axis_tdata[6]_i_10_n_0\,
      O => \m_axis_tdata[6]_i_5_n_0\
    );
\m_axis_tdata[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101BB0BBFFFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_8_n_0\,
      I1 => s_axis_tdata(8),
      I2 => \m_axis_tdata[18]_i_9_n_0\,
      I3 => s_axis_tdata(7),
      I4 => s_axis_tdata(6),
      I5 => \m_axis_tdata[21]_i_8_n_0\,
      O => \m_axis_tdata[6]_i_6_n_0\
    );
\m_axis_tdata[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(7),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(8),
      O => \m_axis_tdata[6]_i_7_n_0\
    );
\m_axis_tdata[6]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \m_axis_tdata[19]_i_9_n_0\,
      O => \m_axis_tdata[6]_i_8_n_0\
    );
\m_axis_tdata[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \m_axis_tdata[18]_i_10_n_0\,
      O => \m_axis_tdata[6]_i_9_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_2_n_0\,
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => \m_axis_tdata[7]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[7]_i_5_n_0\,
      I5 => \m_axis_tdata[7]_i_6_n_0\,
      O => p_1_in(7)
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_7_n_0\,
      I1 => s_axis_tdata(7),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(12),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(10),
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAFFFFFBBAF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => s_axis_tdata(7),
      I2 => s_axis_tdata(14),
      I3 => \m_axis_tdata[14]_i_8_n_0\,
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      I5 => s_axis_tdata(13),
      O => \m_axis_tdata[7]_i_4_n_0\
    );
\m_axis_tdata[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_8_n_0\,
      I1 => s_axis_tlast,
      I2 => \m_axis_tdata[7]_i_9_n_0\,
      O => \m_axis_tdata[7]_i_5_n_0\
    );
\m_axis_tdata[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BB0BBB0B0000BB0B"
    )
        port map (
      I0 => \m_axis_tdata[18]_i_10_n_0\,
      I1 => s_axis_tdata(12),
      I2 => s_axis_tdata(10),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(11),
      I5 => \m_axis_tdata[18]_i_11_n_0\,
      O => \m_axis_tdata[7]_i_6_n_0\
    );
\m_axis_tdata[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(8),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(9),
      O => \m_axis_tdata[7]_i_7_n_0\
    );
\m_axis_tdata[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAA82020AA2020"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_8_n_0\,
      I1 => \m_axis_tdata[18]_i_8_n_0\,
      I2 => s_axis_tdata(9),
      I3 => \m_axis_tdata[18]_i_9_n_0\,
      I4 => s_axis_tdata(8),
      I5 => s_axis_tdata(7),
      O => \m_axis_tdata[7]_i_8_n_0\
    );
\m_axis_tdata[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_8_n_0\,
      I1 => s_axis_tdata(13),
      I2 => s_axis_tdata(15),
      I3 => \m_axis_tdata[16]_i_7_n_0\,
      I4 => s_axis_tdata(14),
      I5 => \m_axis_tdata[16]_i_9_n_0\,
      O => \m_axis_tdata[7]_i_9_n_0\
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEE0000EFEEEFEE"
    )
        port map (
      I0 => \m_axis_tdata[8]_i_2_n_0\,
      I1 => \m_axis_tdata[8]_i_3_n_0\,
      I2 => \m_axis_tdata[8]_i_4_n_0\,
      I3 => \m_axis_tdata[15]_i_5_n_0\,
      I4 => \m_axis_tdata[8]_i_5_n_0\,
      I5 => \m_axis_tdata[8]_i_6_n_0\,
      O => p_1_in(8)
    );
\m_axis_tdata[8]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_18_n_0\,
      I1 => \m_axis_tdata[16]_i_14_n_0\,
      I2 => s_axis_tdata(12),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(11),
      O => \m_axis_tdata[8]_i_10_n_0\
    );
\m_axis_tdata[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[8]_i_7_n_0\,
      I1 => s_axis_tdata(8),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[8]_i_2_n_0\
    );
\m_axis_tdata[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \m_axis_tdata[21]_i_12_n_0\,
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[21]_i_13_n_0\,
      I4 => \m_axis_tdata[21]_i_14_n_0\,
      I5 => s_axis_tdata(11),
      O => \m_axis_tdata[8]_i_3_n_0\
    );
\m_axis_tdata[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAABBAFFFFFBBAF"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_17_n_0\,
      I1 => s_axis_tdata(8),
      I2 => s_axis_tdata(15),
      I3 => \m_axis_tdata[14]_i_8_n_0\,
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      I5 => s_axis_tdata(14),
      O => \m_axis_tdata[8]_i_4_n_0\
    );
\m_axis_tdata[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFEFEF"
    )
        port map (
      I0 => \m_axis_tdata[8]_i_8_n_0\,
      I1 => \m_axis_tdata[8]_i_9_n_0\,
      I2 => s_axis_tlast,
      I3 => \m_axis_tdata[18]_i_10_n_0\,
      I4 => s_axis_tdata(13),
      I5 => \m_axis_tdata[8]_i_10_n_0\,
      O => \m_axis_tdata[8]_i_5_n_0\
    );
\m_axis_tdata[8]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \m_axis_tdata[22]_i_3_n_0\,
      I1 => s_axis_tdata(8),
      O => \m_axis_tdata[8]_i_6_n_0\
    );
\m_axis_tdata[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(9),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(10),
      O => \m_axis_tdata[8]_i_7_n_0\
    );
\m_axis_tdata[8]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \m_axis_tdata[18]_i_9_n_0\,
      I2 => \m_axis_tdata[18]_i_8_n_0\,
      I3 => s_axis_tdata(10),
      O => \m_axis_tdata[8]_i_8_n_0\
    );
\m_axis_tdata[8]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_8_n_0\,
      I1 => s_axis_tdata(14),
      I2 => s_axis_tdata(15),
      I3 => \m_axis_tdata[16]_i_9_n_0\,
      I4 => s_axis_tdata(16),
      I5 => \m_axis_tdata[16]_i_7_n_0\,
      O => \m_axis_tdata[8]_i_9_n_0\
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAEAEAEAE00AEAE"
    )
        port map (
      I0 => \m_axis_tdata[9]_i_2_n_0\,
      I1 => s_axis_tdata(9),
      I2 => \m_axis_tdata[22]_i_3_n_0\,
      I3 => \m_axis_tdata[9]_i_3_n_0\,
      I4 => \m_axis_tdata[9]_i_4_n_0\,
      I5 => \m_axis_tdata[9]_i_5_n_0\,
      O => p_1_in(9)
    );
\m_axis_tdata[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00E4E4"
    )
        port map (
      I0 => \m_axis_tdata[14]_i_8_n_0\,
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(9),
      I3 => s_axis_tdata(15),
      I4 => \m_axis_tdata[15]_i_9_n_0\,
      O => \m_axis_tdata[9]_i_10_n_0\
    );
\m_axis_tdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFFFEFEF"
    )
        port map (
      I0 => \m_axis_tdata[9]_i_6_n_0\,
      I1 => \m_axis_tdata[9]_i_7_n_0\,
      I2 => s_axis_tlast,
      I3 => \m_axis_tdata[18]_i_10_n_0\,
      I4 => s_axis_tdata(14),
      I5 => \m_axis_tdata[9]_i_8_n_0\,
      O => \m_axis_tdata[9]_i_2_n_0\
    );
\m_axis_tdata[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \m_axis_tdata[9]_i_9_n_0\,
      I1 => s_axis_tdata(9),
      I2 => \m_axis_tdata[21]_i_9_n_0\,
      I3 => s_axis_tlast,
      O => \m_axis_tdata[9]_i_3_n_0\
    );
\m_axis_tdata[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD0DDD0D0000DD0D"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \m_axis_tdata[21]_i_14_n_0\,
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[21]_i_12_n_0\,
      I4 => s_axis_tdata(14),
      I5 => \m_axis_tdata[21]_i_13_n_0\,
      O => \m_axis_tdata[9]_i_4_n_0\
    );
\m_axis_tdata[9]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \m_axis_tdata[15]_i_5_n_0\,
      I1 => \m_axis_tdata[9]_i_10_n_0\,
      I2 => \m_axis_tdata[21]_i_17_n_0\,
      O => \m_axis_tdata[9]_i_5_n_0\
    );
\m_axis_tdata[9]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \m_axis_tdata[18]_i_9_n_0\,
      I2 => \m_axis_tdata[18]_i_8_n_0\,
      I3 => s_axis_tdata(11),
      O => \m_axis_tdata[9]_i_6_n_0\
    );
\m_axis_tdata[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \m_axis_tdata[16]_i_7_n_0\,
      I1 => s_axis_tdata(17),
      I2 => s_axis_tdata(15),
      I3 => \m_axis_tdata[16]_i_8_n_0\,
      I4 => s_axis_tdata(16),
      I5 => \m_axis_tdata[16]_i_9_n_0\,
      O => \m_axis_tdata[9]_i_7_n_0\
    );
\m_axis_tdata[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10FF1010"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_18_n_0\,
      I1 => \m_axis_tdata[16]_i_14_n_0\,
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[19]_i_9_n_0\,
      I4 => s_axis_tdata(12),
      O => \m_axis_tdata[9]_i_8_n_0\
    );
\m_axis_tdata[9]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \m_axis_tdata[21]_i_10_n_0\,
      I1 => s_axis_tdata(10),
      I2 => \m_axis_tdata[21]_i_11_n_0\,
      I3 => s_axis_tdata(11),
      O => \m_axis_tdata[9]_i_9_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => s_axis_tdata(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => aresetn,
      D => p_1_in(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_balance_controller_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2CBalancer_balance_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_balance_controller_0_0 : entity is "I2CBalancer_balance_controller_0_0,balance_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_balance_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_balance_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_balance_controller_0_0 : entity is "balance_controller,Vivado 2020.2";
end I2CBalancer_balance_controller_0_0;

architecture STRUCTURE of I2CBalancer_balance_controller_0_0 is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 180000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 180000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 180000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tlast\ <= s_axis_tlast;
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tlast <= \^s_axis_tlast\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
U0: entity work.I2CBalancer_balance_controller_0_0_balance_controller
     port map (
      aclk => aclk,
      aresetn => aresetn,
      balance(0 to 9) => balance(0 to 9),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tlast => \^s_axis_tlast\
    );
end STRUCTURE;
