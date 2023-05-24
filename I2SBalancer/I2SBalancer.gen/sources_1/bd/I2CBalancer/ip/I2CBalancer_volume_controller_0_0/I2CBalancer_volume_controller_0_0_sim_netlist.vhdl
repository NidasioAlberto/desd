-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed May 24 12:35:36 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_volume_controller_0_0/I2CBalancer_volume_controller_0_0_sim_netlist.vhdl}
-- Design      : I2CBalancer_volume_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_volume_controller_0_0_volume_controller is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aresetn : in STD_LOGIC;
    balance : in STD_LOGIC_VECTOR ( 0 to 9 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2CBalancer_volume_controller_0_0_volume_controller : entity is "volume_controller";
end I2CBalancer_volume_controller_0_0_volume_controller;

architecture STRUCTURE of I2CBalancer_volume_controller_0_0_volume_controller is
  signal m_axis_tdata1 : STD_LOGIC;
  signal m_axis_tdata112_out : STD_LOGIC;
  signal m_axis_tdata115_out : STD_LOGIC;
  signal m_axis_tdata118_out : STD_LOGIC;
  signal m_axis_tdata121_out : STD_LOGIC;
  signal m_axis_tdata13_out : STD_LOGIC;
  signal m_axis_tdata16_out : STD_LOGIC;
  signal m_axis_tdata19_out : STD_LOGIC;
  signal \m_axis_tdata[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[0]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_13_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_14_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_15_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_13_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_15_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_16_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_17_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_18_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_13_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_13_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_14_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_15_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_16_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_17_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_18_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_19_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_20_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_21_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_22_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_23_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_24_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_25_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_26_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_27_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_13_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_14_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_15_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_16_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_17_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_18_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_19_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_20_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_21_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_23_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_24_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_27_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_28_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_29_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_42_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_43_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_46_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_47_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_13_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_14_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_15_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_9_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[0]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[10]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[11]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[12]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[13]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[13]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[13]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[13]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[13]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[14]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[14]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[14]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[14]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[14]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[15]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[15]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[15]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[15]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[15]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[16]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[16]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[16]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[16]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[16]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[17]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[17]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[17]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[17]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[17]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[18]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[19]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[19]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[19]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[19]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[19]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[1]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[20]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[20]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[20]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[20]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[20]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[21]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[21]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[21]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[21]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[21]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[22]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[23]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[23]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[23]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[23]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[23]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[2]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[3]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[4]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[5]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[5]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[5]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[5]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[5]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[6]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[6]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[6]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[6]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[6]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[7]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[8]_P_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_C_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_LDC_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_LDC_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_LDC_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_reg[9]_P_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_C_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_C_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_C_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_C_i_7\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_C_i_10\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_C_i_11\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_C_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_C_i_7\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_C_i_10\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_C_i_11\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_C_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_C_i_7\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_C_i_10\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_C_i_11\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_C_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_C_i_7\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_C_i_10\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_C_i_11\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_C_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_C_i_7\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_C_i_10\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_C_i_11\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_C_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_C_i_7\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_C_i_10\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_C_i_11\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_C_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_C_i_7\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_C_i_10\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_C_i_12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_C_i_14\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_C_i_15\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_C_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_C_i_8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_C_i_9\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_C_i_10\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_C_i_2\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_C_i_7\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_C_i_9\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_C_i_10\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_C_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_C_i_7\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_C_i_9\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_15\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_16\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_17\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_18\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_C_i_9\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_C_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_C_i_4\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_C_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_C_i_7\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_C_i_6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_C_i_9\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_C_i_13\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_C_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_C_i_8\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_C_i_15\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_C_i_17\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_C_i_19\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_C_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_C_i_20\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_C_i_21\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_C_i_22\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_C_i_27\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_C_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_10\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_14\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_15\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_18\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_22\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_23\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_26\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_27\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_30\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_31\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_33\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_34\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_35\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_36\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_37\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_38\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_39\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_40\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_41\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_42\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_43\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_45\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_46\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_47\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_6\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_C_i_8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_C_i_2\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_C_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_C_i_7\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_C_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_C_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_C_i_8\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_C_i_9\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_C_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_C_i_3\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_C_i_8\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_C_i_9\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_C_i_10\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_C_i_11\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_C_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_C_i_9\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_C_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_C_i_7\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_C_i_8\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_C_i_10\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_C_i_11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_C_i_12\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_C_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_C_i_9\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_C_i_10\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_C_i_11\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_C_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_C_i_7\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_C_i_10\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_C_i_11\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_C_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_C_i_7\ : label is "soft_lutpair54";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[0]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[10]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[11]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[12]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[13]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[14]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[15]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[16]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[17]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[18]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[19]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[1]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[20]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[21]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[22]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[23]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[2]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[3]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[4]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[5]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[6]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[7]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[8]_LDC\ : label is "LDC";
  attribute XILINX_LEGACY_PRIM of \m_axis_tdata_reg[9]_LDC\ : label is "LDC";
begin
\m_axis_tdata[0]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[0]_C_i_2_n_0\,
      I1 => \m_axis_tdata[0]_C_i_3_n_0\,
      I2 => \m_axis_tdata[0]_C_i_4_n_0\,
      I3 => \m_axis_tdata[0]_C_i_5_n_0\,
      I4 => \m_axis_tdata[0]_C_i_6_n_0\,
      I5 => \m_axis_tdata[3]_C_i_7_n_0\,
      O => \m_axis_tdata[0]_C_i_1_n_0\
    );
\m_axis_tdata[0]_C_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_8_n_0\,
      I1 => s_axis_tdata(0),
      O => \m_axis_tdata[0]_C_i_2_n_0\
    );
\m_axis_tdata[0]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_11_n_0\,
      I1 => \m_axis_tdata[0]_C_i_7_n_0\,
      I2 => s_axis_tdata(4),
      I3 => \m_axis_tdata[16]_C_i_11_n_0\,
      I4 => s_axis_tdata(5),
      I5 => \m_axis_tdata[16]_C_i_12_n_0\,
      O => \m_axis_tdata[0]_C_i_3_n_0\
    );
\m_axis_tdata[0]_C_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(2),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[0]_C_i_4_n_0\
    );
\m_axis_tdata[0]_C_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      O => \m_axis_tdata[0]_C_i_5_n_0\
    );
\m_axis_tdata[0]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A280A280A2A28080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_9_n_0\,
      I1 => sel0(1),
      I2 => s_axis_tdata(6),
      I3 => s_axis_tdata(7),
      I4 => s_axis_tdata(0),
      I5 => sel0(0),
      O => \m_axis_tdata[0]_C_i_6_n_0\
    );
\m_axis_tdata[0]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(4),
      I1 => s_axis_tdata(3),
      O => \m_axis_tdata[0]_C_i_7_n_0\
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[0]_P_n_0\,
      I1 => \m_axis_tdata_reg[0]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[0]_C_n_0\,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[10]_C_i_2_n_0\,
      I1 => \m_axis_tdata[10]_C_i_3_n_0\,
      I2 => \m_axis_tdata[10]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[10]_C_i_5_n_0\,
      I5 => \m_axis_tdata[10]_C_i_6_n_0\,
      O => \m_axis_tdata[10]_C_i_1_n_0\
    );
\m_axis_tdata[10]_C_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(8),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[10]_C_i_10_n_0\
    );
\m_axis_tdata[10]_C_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(9),
      O => \m_axis_tdata[10]_C_i_11_n_0\
    );
\m_axis_tdata[10]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(12),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[10]_C_i_2_n_0\
    );
\m_axis_tdata[10]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(3),
      I3 => s_axis_tdata(2),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[10]_C_i_3_n_0\
    );
\m_axis_tdata[10]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(6),
      I2 => \m_axis_tdata[10]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(4),
      O => \m_axis_tdata[10]_C_i_4_n_0\
    );
\m_axis_tdata[10]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \m_axis_tdata[10]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[10]_C_i_9_n_0\,
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[10]_C_i_5_n_0\
    );
\m_axis_tdata[10]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[10]_C_i_10_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[10]_C_i_11_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(10),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[10]_C_i_6_n_0\
    );
\m_axis_tdata[10]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(5),
      O => \m_axis_tdata[10]_C_i_7_n_0\
    );
\m_axis_tdata[10]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(15),
      I3 => s_axis_tdata(14),
      I4 => s_axis_tdata(13),
      I5 => sel0(4),
      O => \m_axis_tdata[10]_C_i_8_n_0\
    );
\m_axis_tdata[10]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_12_n_0\,
      I1 => s_axis_tdata(10),
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(16),
      I5 => sel0(1),
      O => \m_axis_tdata[10]_C_i_9_n_0\
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[10]_P_n_0\,
      I1 => \m_axis_tdata_reg[10]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[10]_C_n_0\,
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[11]_C_i_2_n_0\,
      I1 => \m_axis_tdata[11]_C_i_3_n_0\,
      I2 => \m_axis_tdata[11]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[11]_C_i_5_n_0\,
      I5 => \m_axis_tdata[11]_C_i_6_n_0\,
      O => \m_axis_tdata[11]_C_i_1_n_0\
    );
\m_axis_tdata[11]_C_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(9),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[11]_C_i_10_n_0\
    );
\m_axis_tdata[11]_C_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(10),
      O => \m_axis_tdata[11]_C_i_11_n_0\
    );
\m_axis_tdata[11]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[11]_C_i_2_n_0\
    );
\m_axis_tdata[11]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(4),
      I3 => s_axis_tdata(3),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[11]_C_i_3_n_0\
    );
\m_axis_tdata[11]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(7),
      I2 => \m_axis_tdata[11]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(5),
      O => \m_axis_tdata[11]_C_i_4_n_0\
    );
\m_axis_tdata[11]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \m_axis_tdata[11]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[11]_C_i_9_n_0\,
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[11]_C_i_5_n_0\
    );
\m_axis_tdata[11]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[11]_C_i_10_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[11]_C_i_11_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(11),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[11]_C_i_6_n_0\
    );
\m_axis_tdata[11]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(6),
      O => \m_axis_tdata[11]_C_i_7_n_0\
    );
\m_axis_tdata[11]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(15),
      I4 => s_axis_tdata(14),
      I5 => sel0(4),
      O => \m_axis_tdata[11]_C_i_8_n_0\
    );
\m_axis_tdata[11]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_12_n_0\,
      I1 => s_axis_tdata(11),
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(17),
      I5 => sel0(1),
      O => \m_axis_tdata[11]_C_i_9_n_0\
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[11]_P_n_0\,
      I1 => \m_axis_tdata_reg[11]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[11]_C_n_0\,
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[12]_C_i_2_n_0\,
      I1 => \m_axis_tdata[12]_C_i_3_n_0\,
      I2 => \m_axis_tdata[12]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[12]_C_i_5_n_0\,
      I5 => \m_axis_tdata[12]_C_i_6_n_0\,
      O => \m_axis_tdata[12]_C_i_1_n_0\
    );
\m_axis_tdata[12]_C_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(10),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[12]_C_i_10_n_0\
    );
\m_axis_tdata[12]_C_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(11),
      O => \m_axis_tdata[12]_C_i_11_n_0\
    );
\m_axis_tdata[12]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(14),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[12]_C_i_2_n_0\
    );
\m_axis_tdata[12]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(5),
      I3 => s_axis_tdata(4),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[12]_C_i_3_n_0\
    );
\m_axis_tdata[12]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(8),
      I2 => \m_axis_tdata[12]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(6),
      O => \m_axis_tdata[12]_C_i_4_n_0\
    );
\m_axis_tdata[12]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \m_axis_tdata[12]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[12]_C_i_9_n_0\,
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[12]_C_i_5_n_0\
    );
\m_axis_tdata[12]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[12]_C_i_10_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[12]_C_i_11_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(12),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[12]_C_i_6_n_0\
    );
\m_axis_tdata[12]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(7),
      O => \m_axis_tdata[12]_C_i_7_n_0\
    );
\m_axis_tdata[12]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(15),
      I5 => sel0(4),
      O => \m_axis_tdata[12]_C_i_8_n_0\
    );
\m_axis_tdata[12]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_12_n_0\,
      I1 => s_axis_tdata(12),
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(19),
      I4 => s_axis_tdata(18),
      I5 => sel0(1),
      O => \m_axis_tdata[12]_C_i_9_n_0\
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[12]_P_n_0\,
      I1 => \m_axis_tdata_reg[12]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[12]_C_n_0\,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[13]_C_i_2_n_0\,
      I1 => \m_axis_tdata[13]_C_i_3_n_0\,
      I2 => \m_axis_tdata[13]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[13]_C_i_5_n_0\,
      I5 => \m_axis_tdata[13]_C_i_6_n_0\,
      O => \m_axis_tdata[13]_C_i_1_n_0\
    );
\m_axis_tdata[13]_C_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(11),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[13]_C_i_10_n_0\
    );
\m_axis_tdata[13]_C_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(12),
      O => \m_axis_tdata[13]_C_i_11_n_0\
    );
\m_axis_tdata[13]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(15),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[13]_C_i_2_n_0\
    );
\m_axis_tdata[13]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(6),
      I3 => s_axis_tdata(5),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[13]_C_i_3_n_0\
    );
\m_axis_tdata[13]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(9),
      I2 => \m_axis_tdata[13]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(7),
      O => \m_axis_tdata[13]_C_i_4_n_0\
    );
\m_axis_tdata[13]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \m_axis_tdata[13]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[13]_C_i_9_n_0\,
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[13]_C_i_5_n_0\
    );
\m_axis_tdata[13]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[13]_C_i_10_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[13]_C_i_11_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(13),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[13]_C_i_6_n_0\
    );
\m_axis_tdata[13]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(8),
      O => \m_axis_tdata[13]_C_i_7_n_0\
    );
\m_axis_tdata[13]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(18),
      I3 => s_axis_tdata(17),
      I4 => s_axis_tdata(16),
      I5 => sel0(4),
      O => \m_axis_tdata[13]_C_i_8_n_0\
    );
\m_axis_tdata[13]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_12_n_0\,
      I1 => s_axis_tdata(13),
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(20),
      I4 => s_axis_tdata(19),
      I5 => sel0(1),
      O => \m_axis_tdata[13]_C_i_9_n_0\
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[13]_P_n_0\,
      I1 => \m_axis_tdata_reg[13]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[13]_C_n_0\,
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[14]_C_i_2_n_0\,
      I1 => \m_axis_tdata[14]_C_i_3_n_0\,
      I2 => \m_axis_tdata[14]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[14]_C_i_5_n_0\,
      I5 => \m_axis_tdata[14]_C_i_6_n_0\,
      O => \m_axis_tdata[14]_C_i_1_n_0\
    );
\m_axis_tdata[14]_C_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(12),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[14]_C_i_10_n_0\
    );
\m_axis_tdata[14]_C_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(13),
      O => \m_axis_tdata[14]_C_i_11_n_0\
    );
\m_axis_tdata[14]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(16),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[14]_C_i_2_n_0\
    );
\m_axis_tdata[14]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(7),
      I3 => s_axis_tdata(6),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[14]_C_i_3_n_0\
    );
\m_axis_tdata[14]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(10),
      I2 => \m_axis_tdata[14]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(8),
      O => \m_axis_tdata[14]_C_i_4_n_0\
    );
\m_axis_tdata[14]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \m_axis_tdata[14]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[14]_C_i_9_n_0\,
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[14]_C_i_5_n_0\
    );
\m_axis_tdata[14]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[14]_C_i_10_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[14]_C_i_11_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(14),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[14]_C_i_6_n_0\
    );
\m_axis_tdata[14]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(9),
      O => \m_axis_tdata[14]_C_i_7_n_0\
    );
\m_axis_tdata[14]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(19),
      I3 => s_axis_tdata(18),
      I4 => s_axis_tdata(17),
      I5 => sel0(4),
      O => \m_axis_tdata[14]_C_i_8_n_0\
    );
\m_axis_tdata[14]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_12_n_0\,
      I1 => s_axis_tdata(14),
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(21),
      I4 => s_axis_tdata(20),
      I5 => sel0(1),
      O => \m_axis_tdata[14]_C_i_9_n_0\
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[14]_P_n_0\,
      I1 => \m_axis_tdata_reg[14]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[14]_C_n_0\,
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[15]_C_i_2_n_0\,
      I1 => \m_axis_tdata[15]_C_i_3_n_0\,
      I2 => \m_axis_tdata[15]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[15]_C_i_5_n_0\,
      I5 => \m_axis_tdata[15]_C_i_6_n_0\,
      O => \m_axis_tdata[15]_C_i_1_n_0\
    );
\m_axis_tdata[15]_C_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(13),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[15]_C_i_10_n_0\
    );
\m_axis_tdata[15]_C_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(14),
      O => \m_axis_tdata[15]_C_i_11_n_0\
    );
\m_axis_tdata[15]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[15]_C_i_2_n_0\
    );
\m_axis_tdata[15]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(7),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[15]_C_i_3_n_0\
    );
\m_axis_tdata[15]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(11),
      I2 => \m_axis_tdata[15]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(9),
      O => \m_axis_tdata[15]_C_i_4_n_0\
    );
\m_axis_tdata[15]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \m_axis_tdata[15]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[15]_C_i_9_n_0\,
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[15]_C_i_5_n_0\
    );
\m_axis_tdata[15]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[15]_C_i_10_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[15]_C_i_11_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(15),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[15]_C_i_6_n_0\
    );
\m_axis_tdata[15]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(10),
      O => \m_axis_tdata[15]_C_i_7_n_0\
    );
\m_axis_tdata[15]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(20),
      I3 => s_axis_tdata(19),
      I4 => s_axis_tdata(18),
      I5 => sel0(4),
      O => \m_axis_tdata[15]_C_i_8_n_0\
    );
\m_axis_tdata[15]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_12_n_0\,
      I1 => s_axis_tdata(15),
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(22),
      I4 => s_axis_tdata(21),
      I5 => sel0(1),
      O => \m_axis_tdata[15]_C_i_9_n_0\
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[15]_P_n_0\,
      I1 => \m_axis_tdata_reg[15]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[15]_C_n_0\,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[16]_C_i_2_n_0\,
      I1 => \m_axis_tdata[16]_C_i_3_n_0\,
      I2 => \m_axis_tdata[16]_C_i_4_n_0\,
      I3 => \m_axis_tdata[16]_C_i_5_n_0\,
      I4 => \m_axis_tdata[16]_C_i_6_n_0\,
      I5 => \m_axis_tdata[16]_C_i_7_n_0\,
      O => \m_axis_tdata[16]_C_i_1_n_0\
    );
\m_axis_tdata[16]_C_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(4),
      I1 => s_axis_tdata(19),
      O => \m_axis_tdata[16]_C_i_10_n_0\
    );
\m_axis_tdata[16]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA8000008200"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_13_n_0\,
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(3),
      I3 => balance(1),
      I4 => balance(0),
      I5 => balance(2),
      O => \m_axis_tdata[16]_C_i_11_n_0\
    );
\m_axis_tdata[16]_C_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001400"
    )
        port map (
      I0 => balance(0),
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(3),
      I3 => balance(2),
      I4 => balance(1),
      O => \m_axis_tdata[16]_C_i_12_n_0\
    );
\m_axis_tdata[16]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020000"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => balance(0),
      I2 => balance(2),
      I3 => balance(1),
      I4 => balance(3),
      I5 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => \m_axis_tdata[16]_C_i_13_n_0\
    );
\m_axis_tdata[16]_C_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(14),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[16]_C_i_14_n_0\
    );
\m_axis_tdata[16]_C_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(15),
      O => \m_axis_tdata[16]_C_i_15_n_0\
    );
\m_axis_tdata[16]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(18),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[16]_C_i_2_n_0\
    );
\m_axis_tdata[16]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(9),
      I3 => s_axis_tdata(8),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[16]_C_i_3_n_0\
    );
\m_axis_tdata[16]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAA8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_5_n_0\,
      I1 => \m_axis_tdata[16]_C_i_8_n_0\,
      I2 => \m_axis_tdata[22]_C_i_12_n_0\,
      I3 => \m_axis_tdata[16]_C_i_9_n_0\,
      I4 => s_axis_tdata(12),
      I5 => \m_axis_tdata[22]_C_i_10_n_0\,
      O => \m_axis_tdata[16]_C_i_4_n_0\
    );
\m_axis_tdata[16]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_11_n_0\,
      I1 => \m_axis_tdata[16]_C_i_10_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[16]_C_i_11_n_0\,
      I4 => s_axis_tdata(21),
      I5 => \m_axis_tdata[16]_C_i_12_n_0\,
      O => \m_axis_tdata[16]_C_i_5_n_0\
    );
\m_axis_tdata[16]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_9_n_0\,
      I1 => sel0(1),
      I2 => s_axis_tdata(22),
      I3 => s_axis_tdata(16),
      I4 => \m_axis_tdata[19]_C_i_12_n_0\,
      I5 => \m_axis_tdata[16]_C_i_13_n_0\,
      O => \m_axis_tdata[16]_C_i_6_n_0\
    );
\m_axis_tdata[16]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[16]_C_i_14_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[16]_C_i_15_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(16),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[16]_C_i_7_n_0\
    );
\m_axis_tdata[16]_C_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => sel0(13),
      I1 => \m_axis_tdata[23]_C_i_29_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[23]_C_i_28_n_0\,
      I4 => s_axis_tdata(10),
      O => \m_axis_tdata[16]_C_i_8_n_0\
    );
\m_axis_tdata[16]_C_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(11),
      O => \m_axis_tdata[16]_C_i_9_n_0\
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[16]_P_n_0\,
      I1 => \m_axis_tdata_reg[16]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[16]_C_n_0\,
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[17]_C_i_2_n_0\,
      I1 => \m_axis_tdata[17]_C_i_3_n_0\,
      I2 => \m_axis_tdata[17]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[17]_C_i_5_n_0\,
      I5 => \m_axis_tdata[17]_C_i_6_n_0\,
      O => \m_axis_tdata[17]_C_i_1_n_0\
    );
\m_axis_tdata[17]_C_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(16),
      O => \m_axis_tdata[17]_C_i_10_n_0\
    );
\m_axis_tdata[17]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(19),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[17]_C_i_2_n_0\
    );
\m_axis_tdata[17]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(10),
      I3 => s_axis_tdata(9),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[17]_C_i_3_n_0\
    );
\m_axis_tdata[17]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(13),
      I2 => \m_axis_tdata[17]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(11),
      O => \m_axis_tdata[17]_C_i_4_n_0\
    );
\m_axis_tdata[17]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF88888888888"
    )
        port map (
      I0 => \m_axis_tdata[17]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[19]_C_i_12_n_0\,
      I4 => \m_axis_tdata[19]_C_i_13_n_0\,
      I5 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[17]_C_i_5_n_0\
    );
\m_axis_tdata[17]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[17]_C_i_9_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[17]_C_i_10_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(17),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[17]_C_i_6_n_0\
    );
\m_axis_tdata[17]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(12),
      O => \m_axis_tdata[17]_C_i_7_n_0\
    );
\m_axis_tdata[17]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(22),
      I3 => s_axis_tdata(21),
      I4 => s_axis_tdata(20),
      I5 => sel0(4),
      O => \m_axis_tdata[17]_C_i_8_n_0\
    );
\m_axis_tdata[17]_C_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(15),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[17]_C_i_9_n_0\
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[17]_P_n_0\,
      I1 => \m_axis_tdata_reg[17]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[17]_C_n_0\,
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[18]_C_i_2_n_0\,
      I1 => \m_axis_tdata[18]_C_i_3_n_0\,
      I2 => \m_axis_tdata[18]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[18]_C_i_5_n_0\,
      I5 => \m_axis_tdata[18]_C_i_6_n_0\,
      O => \m_axis_tdata[18]_C_i_1_n_0\
    );
\m_axis_tdata[18]_C_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(17),
      O => \m_axis_tdata[18]_C_i_10_n_0\
    );
\m_axis_tdata[18]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[18]_C_i_2_n_0\
    );
\m_axis_tdata[18]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(10),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[18]_C_i_3_n_0\
    );
\m_axis_tdata[18]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(14),
      I2 => \m_axis_tdata[18]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(12),
      O => \m_axis_tdata[18]_C_i_4_n_0\
    );
\m_axis_tdata[18]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF88888888888"
    )
        port map (
      I0 => \m_axis_tdata[18]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => s_axis_tdata(18),
      I3 => \m_axis_tdata[19]_C_i_12_n_0\,
      I4 => \m_axis_tdata[19]_C_i_13_n_0\,
      I5 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[18]_C_i_5_n_0\
    );
\m_axis_tdata[18]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[18]_C_i_9_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[18]_C_i_10_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(18),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[18]_C_i_6_n_0\
    );
\m_axis_tdata[18]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(13),
      O => \m_axis_tdata[18]_C_i_7_n_0\
    );
\m_axis_tdata[18]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(23),
      I3 => s_axis_tdata(22),
      I4 => s_axis_tdata(21),
      I5 => sel0(4),
      O => \m_axis_tdata[18]_C_i_8_n_0\
    );
\m_axis_tdata[18]_C_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(16),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[18]_C_i_9_n_0\
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[18]_P_n_0\,
      I1 => \m_axis_tdata_reg[18]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[18]_C_n_0\,
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_2_n_0\,
      I1 => \m_axis_tdata[19]_C_i_3_n_0\,
      I2 => \m_axis_tdata[19]_C_i_4_n_0\,
      I3 => \m_axis_tdata[19]_C_i_5_n_0\,
      I4 => \m_axis_tdata[19]_C_i_6_n_0\,
      I5 => \m_axis_tdata[19]_C_i_7_n_0\,
      O => \m_axis_tdata[19]_C_i_1_n_0\
    );
\m_axis_tdata[19]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF002000000000"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_18_n_0\,
      I1 => balance(0),
      I2 => \m_axis_tdata[22]_C_i_13_n_0\,
      I3 => sel0(4),
      I4 => sel0(2),
      I5 => s_axis_tdata(23),
      O => \m_axis_tdata[19]_C_i_10_n_0\
    );
\m_axis_tdata[19]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1014140400141400"
    )
        port map (
      I0 => balance(0),
      I1 => balance(1),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_C_i_14_n_0\,
      I4 => balance(3),
      I5 => \m_axis_tdata[22]_C_i_13_n_0\,
      O => \m_axis_tdata[19]_C_i_11_n_0\
    );
\m_axis_tdata[19]_C_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEF1"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(1),
      I3 => balance(2),
      I4 => balance(0),
      O => \m_axis_tdata[19]_C_i_12_n_0\
    );
\m_axis_tdata[19]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010E00000000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(1),
      I3 => balance(2),
      I4 => balance(0),
      I5 => s_axis_tdata(23),
      O => \m_axis_tdata[19]_C_i_13_n_0\
    );
\m_axis_tdata[19]_C_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101000"
    )
        port map (
      I0 => balance(2),
      I1 => balance(0),
      I2 => balance(1),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => sel0(4)
    );
\m_axis_tdata[19]_C_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A800000"
    )
        port map (
      I0 => sel0(13),
      I1 => \m_axis_tdata[23]_C_i_29_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[23]_C_i_28_n_0\,
      I4 => s_axis_tdata(13),
      O => \m_axis_tdata[19]_C_i_15_n_0\
    );
\m_axis_tdata[19]_C_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(14),
      O => \m_axis_tdata[19]_C_i_16_n_0\
    );
\m_axis_tdata[19]_C_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[19]_C_i_17_n_0\
    );
\m_axis_tdata[19]_C_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(2),
      I3 => balance(1),
      O => \m_axis_tdata[19]_C_i_18_n_0\
    );
\m_axis_tdata[19]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(21),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[19]_C_i_2_n_0\
    );
\m_axis_tdata[19]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF88888888888"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_10_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => s_axis_tdata(19),
      I3 => \m_axis_tdata[19]_C_i_12_n_0\,
      I4 => \m_axis_tdata[19]_C_i_13_n_0\,
      I5 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[19]_C_i_3_n_0\
    );
\m_axis_tdata[19]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(12),
      I3 => s_axis_tdata(11),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[19]_C_i_4_n_0\
    );
\m_axis_tdata[19]_C_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \m_axis_tdata[23]_C_i_8_n_0\,
      I2 => \m_axis_tdata[19]_C_i_11_n_0\,
      I3 => sel0(4),
      I4 => s_axis_tdata(22),
      O => \m_axis_tdata[19]_C_i_5_n_0\
    );
\m_axis_tdata[19]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAA8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_5_n_0\,
      I1 => \m_axis_tdata[19]_C_i_15_n_0\,
      I2 => \m_axis_tdata[22]_C_i_12_n_0\,
      I3 => \m_axis_tdata[19]_C_i_16_n_0\,
      I4 => s_axis_tdata(15),
      I5 => \m_axis_tdata[22]_C_i_10_n_0\,
      O => \m_axis_tdata[19]_C_i_6_n_0\
    );
\m_axis_tdata[19]_C_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA80"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => s_axis_tdata(18),
      I2 => \m_axis_tdata[21]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_16_n_0\,
      I4 => \m_axis_tdata[19]_C_i_17_n_0\,
      O => \m_axis_tdata[19]_C_i_7_n_0\
    );
\m_axis_tdata[19]_C_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006000"
    )
        port map (
      I0 => balance(3),
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(2),
      I3 => balance(1),
      I4 => balance(0),
      O => \m_axis_tdata[19]_C_i_8_n_0\
    );
\m_axis_tdata[19]_C_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01400000"
    )
        port map (
      I0 => balance(0),
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(3),
      I3 => balance(2),
      I4 => balance(1),
      O => \m_axis_tdata[19]_C_i_9_n_0\
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[19]_P_n_0\,
      I1 => \m_axis_tdata_reg[19]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[19]_C_n_0\,
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[1]_C_i_2_n_0\,
      I1 => \m_axis_tdata[1]_C_i_3_n_0\,
      I2 => \m_axis_tdata[1]_C_i_4_n_0\,
      I3 => \m_axis_tdata[1]_C_i_5_n_0\,
      I4 => \m_axis_tdata[1]_C_i_6_n_0\,
      I5 => \m_axis_tdata[3]_C_i_7_n_0\,
      O => \m_axis_tdata[1]_C_i_1_n_0\
    );
\m_axis_tdata[1]_C_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_8_n_0\,
      I1 => s_axis_tdata(1),
      O => \m_axis_tdata[1]_C_i_2_n_0\
    );
\m_axis_tdata[1]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_11_n_0\,
      I1 => \m_axis_tdata[1]_C_i_7_n_0\,
      I2 => s_axis_tdata(5),
      I3 => \m_axis_tdata[16]_C_i_11_n_0\,
      I4 => s_axis_tdata(6),
      I5 => \m_axis_tdata[16]_C_i_12_n_0\,
      O => \m_axis_tdata[1]_C_i_3_n_0\
    );
\m_axis_tdata[1]_C_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(3),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[1]_C_i_4_n_0\
    );
\m_axis_tdata[1]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[21]_C_i_7_n_0\,
      I3 => s_axis_tdata(0),
      O => \m_axis_tdata[1]_C_i_5_n_0\
    );
\m_axis_tdata[1]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A280A280A2A28080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_9_n_0\,
      I1 => sel0(1),
      I2 => s_axis_tdata(7),
      I3 => s_axis_tdata(8),
      I4 => s_axis_tdata(1),
      I5 => sel0(0),
      O => \m_axis_tdata[1]_C_i_6_n_0\
    );
\m_axis_tdata[1]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(4),
      I1 => s_axis_tdata(4),
      O => \m_axis_tdata[1]_C_i_7_n_0\
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[1]_P_n_0\,
      I1 => \m_axis_tdata_reg[1]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[1]_C_n_0\,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \m_axis_tdata[20]_C_i_2_n_0\,
      I1 => \m_axis_tdata[20]_C_i_3_n_0\,
      I2 => \m_axis_tdata[21]_C_i_4_n_0\,
      I3 => \m_axis_tdata[20]_C_i_4_n_0\,
      I4 => \m_axis_tdata[22]_C_i_5_n_0\,
      I5 => \m_axis_tdata[20]_C_i_5_n_0\,
      O => \m_axis_tdata[20]_C_i_1_n_0\
    );
\m_axis_tdata[20]_C_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA80"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => s_axis_tdata(19),
      I2 => \m_axis_tdata[21]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_16_n_0\,
      I4 => \m_axis_tdata[20]_C_i_6_n_0\,
      O => \m_axis_tdata[20]_C_i_2_n_0\
    );
\m_axis_tdata[20]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[20]_C_i_7_n_0\,
      I1 => \m_axis_tdata[21]_C_i_10_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[21]_C_i_11_n_0\,
      I4 => \m_axis_tdata[20]_C_i_8_n_0\,
      I5 => \m_axis_tdata[7]_C_i_6_n_0\,
      O => \m_axis_tdata[20]_C_i_3_n_0\
    );
\m_axis_tdata[20]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(16),
      I2 => \m_axis_tdata[20]_C_i_9_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(14),
      O => \m_axis_tdata[20]_C_i_4_n_0\
    );
\m_axis_tdata[20]_C_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_8_n_0\,
      I1 => s_axis_tdata(12),
      I2 => \m_axis_tdata[23]_C_i_18_n_0\,
      I3 => \m_axis_tdata[23]_C_i_20_n_0\,
      I4 => s_axis_tdata(13),
      O => \m_axis_tdata[20]_C_i_5_n_0\
    );
\m_axis_tdata[20]_C_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(18),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[20]_C_i_6_n_0\
    );
\m_axis_tdata[20]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002200000000000"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => balance(0),
      I2 => \m_axis_tdata[22]_C_i_14_n_0\,
      I3 => balance(3),
      I4 => balance(2),
      I5 => balance(1),
      O => \m_axis_tdata[20]_C_i_7_n_0\
    );
\m_axis_tdata[20]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220000000000000"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => balance(0),
      I2 => \m_axis_tdata[22]_C_i_14_n_0\,
      I3 => balance(3),
      I4 => balance(2),
      I5 => balance(1),
      O => \m_axis_tdata[20]_C_i_8_n_0\
    );
\m_axis_tdata[20]_C_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(15),
      O => \m_axis_tdata[20]_C_i_9_n_0\
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[20]_P_n_0\,
      I1 => \m_axis_tdata_reg[20]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[20]_C_n_0\,
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_2_n_0\,
      I1 => \m_axis_tdata[21]_C_i_3_n_0\,
      I2 => \m_axis_tdata[21]_C_i_4_n_0\,
      I3 => \m_axis_tdata[21]_C_i_5_n_0\,
      I4 => \m_axis_tdata[22]_C_i_5_n_0\,
      I5 => \m_axis_tdata[21]_C_i_6_n_0\,
      O => \m_axis_tdata[21]_C_i_1_n_0\
    );
\m_axis_tdata[21]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCCCCCCA"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_13_n_0\,
      I1 => s_axis_tdata(23),
      I2 => sel0(2),
      I3 => sel0(4),
      I4 => sel0(3),
      I5 => \m_axis_tdata[23]_C_i_43_n_0\,
      O => \m_axis_tdata[21]_C_i_10_n_0\
    );
\m_axis_tdata[21]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCCCCCDDCCCCCCF"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_13_n_0\,
      I1 => balance(0),
      I2 => \m_axis_tdata[22]_C_i_14_n_0\,
      I3 => balance(3),
      I4 => balance(2),
      I5 => balance(1),
      O => \m_axis_tdata[21]_C_i_11_n_0\
    );
\m_axis_tdata[21]_C_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220000000000000"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => balance(0),
      I2 => \m_axis_tdata[22]_C_i_14_n_0\,
      I3 => balance(3),
      I4 => balance(2),
      I5 => balance(1),
      O => \m_axis_tdata[21]_C_i_12_n_0\
    );
\m_axis_tdata[21]_C_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(16),
      O => \m_axis_tdata[21]_C_i_13_n_0\
    );
\m_axis_tdata[21]_C_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA80"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => s_axis_tdata(20),
      I2 => \m_axis_tdata[21]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_16_n_0\,
      I4 => \m_axis_tdata[21]_C_i_8_n_0\,
      O => \m_axis_tdata[21]_C_i_2_n_0\
    );
\m_axis_tdata[21]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_9_n_0\,
      I1 => \m_axis_tdata[21]_C_i_10_n_0\,
      I2 => s_axis_tdata(21),
      I3 => \m_axis_tdata[21]_C_i_11_n_0\,
      I4 => \m_axis_tdata[21]_C_i_12_n_0\,
      I5 => \m_axis_tdata[7]_C_i_6_n_0\,
      O => \m_axis_tdata[21]_C_i_3_n_0\
    );
\m_axis_tdata[21]_C_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_9_n_0\,
      I1 => \m_axis_tdata[23]_C_i_18_n_0\,
      O => \m_axis_tdata[21]_C_i_4_n_0\
    );
\m_axis_tdata[21]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(17),
      I2 => \m_axis_tdata[21]_C_i_13_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(15),
      O => \m_axis_tdata[21]_C_i_5_n_0\
    );
\m_axis_tdata[21]_C_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_8_n_0\,
      I1 => s_axis_tdata(13),
      I2 => \m_axis_tdata[23]_C_i_18_n_0\,
      I3 => \m_axis_tdata[23]_C_i_20_n_0\,
      I4 => s_axis_tdata(14),
      O => \m_axis_tdata[21]_C_i_6_n_0\
    );
\m_axis_tdata[21]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800080000"
    )
        port map (
      I0 => m_axis_tdata1,
      I1 => balance(0),
      I2 => balance(1),
      I3 => balance(2),
      I4 => balance(3),
      I5 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => \m_axis_tdata[21]_C_i_7_n_0\
    );
\m_axis_tdata[21]_C_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(19),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[21]_C_i_8_n_0\
    );
\m_axis_tdata[21]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002200000000000"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => balance(0),
      I2 => \m_axis_tdata[22]_C_i_14_n_0\,
      I3 => balance(3),
      I4 => balance(2),
      I5 => balance(1),
      O => \m_axis_tdata[21]_C_i_9_n_0\
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[21]_P_n_0\,
      I1 => \m_axis_tdata_reg[21]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[21]_C_n_0\,
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEFE"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_2_n_0\,
      I1 => \m_axis_tdata[23]_C_i_7_n_0\,
      I2 => \m_axis_tdata[22]_C_i_3_n_0\,
      I3 => \m_axis_tdata[22]_C_i_4_n_0\,
      I4 => \m_axis_tdata[22]_C_i_5_n_0\,
      I5 => \m_axis_tdata[22]_C_i_6_n_0\,
      O => \m_axis_tdata[22]_C_i_1_n_0\
    );
\m_axis_tdata[22]_C_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => sel0(11),
      I1 => m_axis_tdata19_out,
      I2 => \m_axis_tdata[23]_C_i_27_n_0\,
      O => \m_axis_tdata[22]_C_i_10_n_0\
    );
\m_axis_tdata[22]_C_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(17),
      O => \m_axis_tdata[22]_C_i_11_n_0\
    );
\m_axis_tdata[22]_C_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000EAFFEA"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_23_n_0\,
      I1 => \m_axis_tdata[22]_C_i_24_n_0\,
      I2 => sel0(11),
      I3 => sel0(13),
      I4 => m_axis_tdata115_out,
      I5 => s_axis_tdata(23),
      O => \m_axis_tdata[22]_C_i_12_n_0\
    );
\m_axis_tdata[22]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000002FFFFFFFF"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_25_n_0\,
      I1 => balance(2),
      I2 => balance(3),
      I3 => balance(4),
      I4 => balance(5),
      I5 => balance(1),
      O => \m_axis_tdata[22]_C_i_13_n_0\
    );
\m_axis_tdata[22]_C_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => balance(8),
      I1 => balance(7),
      I2 => balance(6),
      I3 => balance(5),
      I4 => balance(9),
      I5 => balance(4),
      O => \m_axis_tdata[22]_C_i_14_n_0\
    );
\m_axis_tdata[22]_C_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[22]_C_i_15_n_0\
    );
\m_axis_tdata[22]_C_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000072FF72"
    )
        port map (
      I0 => sel0(9),
      I1 => m_axis_tdata13_out,
      I2 => \m_axis_tdata[22]_C_i_26_n_0\,
      I3 => sel0(10),
      I4 => m_axis_tdata16_out,
      I5 => s_axis_tdata(23),
      O => \m_axis_tdata[22]_C_i_16_n_0\
    );
\m_axis_tdata[22]_C_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(21),
      O => \m_axis_tdata[22]_C_i_17_n_0\
    );
\m_axis_tdata[22]_C_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"400000034003C003"
    )
        port map (
      I0 => balance(0),
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(3),
      I3 => balance(2),
      I4 => balance(1),
      I5 => \m_axis_tdata[22]_C_i_13_n_0\,
      O => \m_axis_tdata[22]_C_i_18_n_0\
    );
\m_axis_tdata[22]_C_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(15),
      O => \m_axis_tdata[22]_C_i_19_n_0\
    );
\m_axis_tdata[22]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A200"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => \m_axis_tdata[23]_C_i_10_n_0\,
      I2 => sel0(1),
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[22]_C_i_2_n_0\
    );
\m_axis_tdata[22]_C_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => s_axis_tdata(16),
      I2 => s_axis_tdata(15),
      O => \m_axis_tdata[22]_C_i_20_n_0\
    );
\m_axis_tdata[22]_C_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => balance(3),
      I1 => balance(0),
      I2 => balance(1),
      I3 => balance(2),
      O => \m_axis_tdata[22]_C_i_21_n_0\
    );
\m_axis_tdata[22]_C_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => balance(2),
      I1 => balance(1),
      I2 => balance(0),
      O => \m_axis_tdata[22]_C_i_22_n_0\
    );
\m_axis_tdata[22]_C_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000006000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(1),
      I3 => balance(0),
      I4 => balance(2),
      I5 => m_axis_tdata112_out,
      O => \m_axis_tdata[22]_C_i_23_n_0\
    );
\m_axis_tdata[22]_C_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF9FFF"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(1),
      I3 => balance(0),
      I4 => balance(2),
      I5 => m_axis_tdata19_out,
      O => \m_axis_tdata[22]_C_i_24_n_0\
    );
\m_axis_tdata[22]_C_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => balance(8),
      I1 => balance(9),
      I2 => balance(6),
      I3 => balance(7),
      O => \m_axis_tdata[22]_C_i_25_n_0\
    );
\m_axis_tdata[22]_C_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000140014000000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_27_n_0\,
      I1 => balance(3),
      I2 => \m_axis_tdata[22]_C_i_14_n_0\,
      I3 => balance(0),
      I4 => s_axis_tdata(22),
      I5 => s_axis_tdata(23),
      O => \m_axis_tdata[22]_C_i_26_n_0\
    );
\m_axis_tdata[22]_C_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => balance(1),
      I1 => balance(2),
      O => \m_axis_tdata[22]_C_i_27_n_0\
    );
\m_axis_tdata[22]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(15),
      I3 => s_axis_tdata(14),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[22]_C_i_3_n_0\
    );
\m_axis_tdata[22]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(18),
      I2 => \m_axis_tdata[22]_C_i_11_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(16),
      O => \m_axis_tdata[22]_C_i_4_n_0\
    );
\m_axis_tdata[22]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08C000C000C0C080"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_13_n_0\,
      I1 => balance(0),
      I2 => balance(1),
      I3 => balance(2),
      I4 => balance(3),
      I5 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => \m_axis_tdata[22]_C_i_5_n_0\
    );
\m_axis_tdata[22]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_15_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[22]_C_i_17_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(22),
      I5 => \m_axis_tdata[22]_C_i_18_n_0\,
      O => \m_axis_tdata[22]_C_i_6_n_0\
    );
\m_axis_tdata[22]_C_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000010"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      I2 => balance(2),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => sel0(1)
    );
\m_axis_tdata[22]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888000000000000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_19_n_0\,
      I1 => \m_axis_tdata[23]_C_i_28_n_0\,
      I2 => \m_axis_tdata[22]_C_i_20_n_0\,
      I3 => \m_axis_tdata[23]_C_i_29_n_0\,
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      I5 => \m_axis_tdata[22]_C_i_21_n_0\,
      O => \m_axis_tdata[22]_C_i_8_n_0\
    );
\m_axis_tdata[22]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000008060E"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => \m_axis_tdata[22]_C_i_22_n_0\,
      I3 => m_axis_tdata121_out,
      I4 => m_axis_tdata118_out,
      I5 => s_axis_tdata(23),
      O => \m_axis_tdata[22]_C_i_9_n_0\
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[22]_P_n_0\,
      I1 => \m_axis_tdata_reg[22]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[22]_C_n_0\,
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_2_n_0\,
      I1 => \m_axis_tdata[23]_C_i_3_n_0\,
      I2 => \m_axis_tdata[23]_C_i_4_n_0\,
      I3 => \m_axis_tdata[23]_C_i_5_n_0\,
      I4 => \m_axis_tdata[23]_C_i_6_n_0\,
      I5 => \m_axis_tdata[23]_C_i_7_n_0\,
      O => \m_axis_tdata[23]_C_i_1_n_0\
    );
\m_axis_tdata[23]_C_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF9"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(1),
      I3 => balance(2),
      I4 => balance(0),
      O => \m_axis_tdata[23]_C_i_10_n_0\
    );
\m_axis_tdata[23]_C_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => \m_axis_tdata[5]_C_i_8_n_0\,
      I2 => s_axis_tdata(19),
      I3 => sel0(11),
      I4 => m_axis_tdata19_out,
      I5 => \m_axis_tdata[23]_C_i_27_n_0\,
      O => \m_axis_tdata[23]_C_i_11_n_0\
    );
\m_axis_tdata[23]_C_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E200"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_28_n_0\,
      I1 => s_axis_tdata(17),
      I2 => \m_axis_tdata[23]_C_i_29_n_0\,
      I3 => sel0(13),
      O => \m_axis_tdata[23]_C_i_12_n_0\
    );
\m_axis_tdata[23]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444777744744474"
    )
        port map (
      I0 => m_axis_tdata115_out,
      I1 => sel0(13),
      I2 => sel0(11),
      I3 => m_axis_tdata19_out,
      I4 => m_axis_tdata112_out,
      I5 => sel0(12),
      O => \m_axis_tdata[23]_C_i_13_n_0\
    );
\m_axis_tdata[23]_C_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007000E0"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(0),
      I3 => balance(1),
      I4 => balance(2),
      O => \m_axis_tdata[23]_C_i_14_n_0\
    );
\m_axis_tdata[23]_C_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => \m_axis_tdata[2]_C_i_8_n_0\,
      I2 => s_axis_tdata(22),
      I3 => \m_axis_tdata[21]_C_i_7_n_0\,
      O => \m_axis_tdata[23]_C_i_15_n_0\
    );
\m_axis_tdata[23]_C_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028000000"
    )
        port map (
      I0 => m_axis_tdata16_out,
      I1 => balance(3),
      I2 => \m_axis_tdata[22]_C_i_14_n_0\,
      I3 => balance(2),
      I4 => balance(0),
      I5 => balance(1),
      O => \m_axis_tdata[23]_C_i_16_n_0\
    );
\m_axis_tdata[23]_C_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444777744744474"
    )
        port map (
      I0 => m_axis_tdata16_out,
      I1 => sel0(10),
      I2 => sel0(8),
      I3 => m_axis_tdata1,
      I4 => m_axis_tdata13_out,
      I5 => sel0(9),
      O => \m_axis_tdata[23]_C_i_17_n_0\
    );
\m_axis_tdata[23]_C_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => balance(2),
      I1 => balance(1),
      I2 => balance(0),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => \m_axis_tdata[23]_C_i_18_n_0\
    );
\m_axis_tdata[23]_C_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_8_n_0\,
      I1 => s_axis_tdata(15),
      O => \m_axis_tdata[23]_C_i_19_n_0\
    );
\m_axis_tdata[23]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA00"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_8_n_0\,
      I1 => \m_axis_tdata[23]_C_i_9_n_0\,
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(23),
      O => \m_axis_tdata[23]_C_i_2_n_0\
    );
\m_axis_tdata[23]_C_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2800000000000000"
    )
        port map (
      I0 => m_axis_tdata118_out,
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(3),
      I3 => balance(0),
      I4 => balance(1),
      I5 => balance(2),
      O => \m_axis_tdata[23]_C_i_20_n_0\
    );
\m_axis_tdata[23]_C_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300050005000000"
    )
        port map (
      I0 => m_axis_tdata118_out,
      I1 => m_axis_tdata121_out,
      I2 => \m_axis_tdata[23]_C_i_42_n_0\,
      I3 => balance(0),
      I4 => balance(3),
      I5 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => \m_axis_tdata[23]_C_i_21_n_0\
    );
\m_axis_tdata[23]_C_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000002"
    )
        port map (
      I0 => balance(0),
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(3),
      I3 => balance(2),
      I4 => balance(1),
      O => sel0(7)
    );
\m_axis_tdata[23]_C_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007800"
    )
        port map (
      I0 => balance(3),
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(2),
      I3 => balance(1),
      I4 => balance(0),
      O => \m_axis_tdata[23]_C_i_23_n_0\
    );
\m_axis_tdata[23]_C_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55540000"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_43_n_0\,
      I1 => sel0(3),
      I2 => sel0(4),
      I3 => sel0(2),
      I4 => s_axis_tdata(23),
      O => \m_axis_tdata[23]_C_i_24_n_0\
    );
\m_axis_tdata[23]_C_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80F0800080008000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_25_n_0\,
      I1 => \m_axis_tdata[23]_C_i_46_n_0\,
      I2 => balance(0),
      I3 => balance(1),
      I4 => \m_axis_tdata[23]_C_i_47_n_0\,
      I5 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => sel0(11)
    );
\m_axis_tdata[23]_C_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000001"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(22),
      I3 => s_axis_tdata(23),
      I4 => s_axis_tdata(20),
      O => m_axis_tdata19_out
    );
\m_axis_tdata[23]_C_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1000E000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(1),
      I3 => balance(0),
      I4 => balance(2),
      O => \m_axis_tdata[23]_C_i_27_n_0\
    );
\m_axis_tdata[23]_C_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(22),
      I3 => s_axis_tdata(23),
      I4 => s_axis_tdata(20),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[23]_C_i_28_n_0\
    );
\m_axis_tdata[23]_C_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => s_axis_tdata(21),
      I2 => s_axis_tdata(22),
      I3 => s_axis_tdata(23),
      I4 => s_axis_tdata(20),
      I5 => s_axis_tdata(18),
      O => \m_axis_tdata[23]_C_i_29_n_0\
    );
\m_axis_tdata[23]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_5_n_0\,
      I1 => \m_axis_tdata[23]_C_i_11_n_0\,
      I2 => s_axis_tdata(17),
      I3 => \m_axis_tdata[23]_C_i_12_n_0\,
      I4 => s_axis_tdata(23),
      I5 => \m_axis_tdata[23]_C_i_13_n_0\,
      O => \m_axis_tdata[23]_C_i_3_n_0\
    );
\m_axis_tdata[23]_C_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000080"
    )
        port map (
      I0 => balance(0),
      I1 => balance(2),
      I2 => balance(1),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => sel0(13)
    );
\m_axis_tdata[23]_C_i_31\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_29_n_0\,
      I1 => s_axis_tdata(17),
      I2 => \m_axis_tdata[23]_C_i_28_n_0\,
      O => m_axis_tdata115_out
    );
\m_axis_tdata[23]_C_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000001"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => s_axis_tdata(20),
      I2 => s_axis_tdata(23),
      I3 => s_axis_tdata(22),
      I4 => s_axis_tdata(21),
      I5 => s_axis_tdata(19),
      O => m_axis_tdata112_out
    );
\m_axis_tdata[23]_C_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404000"
    )
        port map (
      I0 => balance(2),
      I1 => balance(0),
      I2 => balance(1),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => sel0(12)
    );
\m_axis_tdata[23]_C_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8001"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => s_axis_tdata(23),
      I2 => s_axis_tdata(22),
      I3 => s_axis_tdata(21),
      O => m_axis_tdata16_out
    );
\m_axis_tdata[23]_C_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404000"
    )
        port map (
      I0 => balance(1),
      I1 => balance(0),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_C_i_14_n_0\,
      I4 => balance(3),
      O => sel0(10)
    );
\m_axis_tdata[23]_C_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000028"
    )
        port map (
      I0 => balance(0),
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(3),
      I3 => balance(1),
      I4 => balance(2),
      O => sel0(8)
    );
\m_axis_tdata[23]_C_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => s_axis_tdata(22),
      O => m_axis_tdata1
    );
\m_axis_tdata[23]_C_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => s_axis_tdata(22),
      I2 => s_axis_tdata(23),
      O => m_axis_tdata13_out
    );
\m_axis_tdata[23]_C_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000020"
    )
        port map (
      I0 => balance(0),
      I1 => balance(1),
      I2 => balance(2),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => sel0(9)
    );
\m_axis_tdata[23]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => \m_axis_tdata[23]_C_i_15_n_0\,
      I2 => s_axis_tdata(20),
      I3 => \m_axis_tdata[23]_C_i_16_n_0\,
      I4 => s_axis_tdata(23),
      I5 => \m_axis_tdata[23]_C_i_17_n_0\,
      O => \m_axis_tdata[23]_C_i_4_n_0\
    );
\m_axis_tdata[23]_C_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A00C"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_29_n_0\,
      I1 => \m_axis_tdata[23]_C_i_28_n_0\,
      I2 => s_axis_tdata(16),
      I3 => s_axis_tdata(17),
      O => m_axis_tdata118_out
    );
\m_axis_tdata[23]_C_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A000000C"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_29_n_0\,
      I1 => \m_axis_tdata[23]_C_i_28_n_0\,
      I2 => s_axis_tdata(17),
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(15),
      O => m_axis_tdata121_out
    );
\m_axis_tdata[23]_C_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => balance(1),
      I1 => balance(2),
      O => \m_axis_tdata[23]_C_i_42_n_0\
    );
\m_axis_tdata[23]_C_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001A888"
    )
        port map (
      I0 => balance(1),
      I1 => balance(2),
      I2 => balance(3),
      I3 => \m_axis_tdata[22]_C_i_14_n_0\,
      I4 => balance(0),
      O => \m_axis_tdata[23]_C_i_43_n_0\
    );
\m_axis_tdata[23]_C_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808080F000000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_25_n_0\,
      I1 => \m_axis_tdata[23]_C_i_46_n_0\,
      I2 => balance(0),
      I3 => \m_axis_tdata[22]_C_i_14_n_0\,
      I4 => \m_axis_tdata[23]_C_i_47_n_0\,
      I5 => balance(1),
      O => sel0(3)
    );
\m_axis_tdata[23]_C_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101000"
    )
        port map (
      I0 => balance(0),
      I1 => balance(1),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_C_i_14_n_0\,
      I4 => balance(3),
      O => sel0(2)
    );
\m_axis_tdata[23]_C_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => balance(2),
      I1 => balance(3),
      I2 => balance(4),
      I3 => balance(5),
      O => \m_axis_tdata[23]_C_i_46_n_0\
    );
\m_axis_tdata[23]_C_i_47\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => balance(3),
      I1 => balance(2),
      O => \m_axis_tdata[23]_C_i_47_n_0\
    );
\m_axis_tdata[23]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_19_n_0\,
      I2 => s_axis_tdata(16),
      I3 => \m_axis_tdata[23]_C_i_20_n_0\,
      I4 => s_axis_tdata(23),
      I5 => \m_axis_tdata[23]_C_i_21_n_0\,
      O => \m_axis_tdata[23]_C_i_5_n_0\
    );
\m_axis_tdata[23]_C_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_9_n_0\,
      I1 => \m_axis_tdata[23]_C_i_10_n_0\,
      I2 => s_axis_tdata(23),
      O => \m_axis_tdata[23]_C_i_6_n_0\
    );
\m_axis_tdata[23]_C_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF0040"
    )
        port map (
      I0 => sel0(7),
      I1 => s_axis_tdata(23),
      I2 => \m_axis_tdata[23]_C_i_23_n_0\,
      I3 => \m_axis_tdata[7]_C_i_6_n_0\,
      I4 => \m_axis_tdata[23]_C_i_24_n_0\,
      O => \m_axis_tdata[23]_C_i_7_n_0\
    );
\m_axis_tdata[23]_C_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00018000"
    )
        port map (
      I0 => balance(1),
      I1 => balance(2),
      I2 => balance(3),
      I3 => \m_axis_tdata[22]_C_i_14_n_0\,
      I4 => balance(0),
      O => \m_axis_tdata[23]_C_i_8_n_0\
    );
\m_axis_tdata[23]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"010101113101011D"
    )
        port map (
      I0 => balance(0),
      I1 => balance(1),
      I2 => balance(2),
      I3 => \m_axis_tdata[22]_C_i_14_n_0\,
      I4 => balance(3),
      I5 => \m_axis_tdata[22]_C_i_13_n_0\,
      O => \m_axis_tdata[23]_C_i_9_n_0\
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[23]_P_n_0\,
      I1 => \m_axis_tdata_reg[23]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[23]_C_n_0\,
      O => m_axis_tdata(23)
    );
\m_axis_tdata[2]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[2]_C_i_2_n_0\,
      I1 => \m_axis_tdata[2]_C_i_3_n_0\,
      I2 => \m_axis_tdata[2]_C_i_4_n_0\,
      I3 => \m_axis_tdata[2]_C_i_5_n_0\,
      I4 => \m_axis_tdata[2]_C_i_6_n_0\,
      I5 => \m_axis_tdata[3]_C_i_7_n_0\,
      O => \m_axis_tdata[2]_C_i_1_n_0\
    );
\m_axis_tdata[2]_C_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_8_n_0\,
      I1 => s_axis_tdata(2),
      O => \m_axis_tdata[2]_C_i_2_n_0\
    );
\m_axis_tdata[2]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_11_n_0\,
      I1 => \m_axis_tdata[2]_C_i_7_n_0\,
      I2 => s_axis_tdata(6),
      I3 => \m_axis_tdata[16]_C_i_11_n_0\,
      I4 => s_axis_tdata(7),
      I5 => \m_axis_tdata[16]_C_i_12_n_0\,
      O => \m_axis_tdata[2]_C_i_3_n_0\
    );
\m_axis_tdata[2]_C_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(4),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[2]_C_i_4_n_0\
    );
\m_axis_tdata[2]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => \m_axis_tdata[2]_C_i_8_n_0\,
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(1),
      I4 => \m_axis_tdata[21]_C_i_7_n_0\,
      I5 => \m_axis_tdata[22]_C_i_16_n_0\,
      O => \m_axis_tdata[2]_C_i_5_n_0\
    );
\m_axis_tdata[2]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A280A280A2A28080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_9_n_0\,
      I1 => sel0(1),
      I2 => s_axis_tdata(8),
      I3 => s_axis_tdata(9),
      I4 => s_axis_tdata(2),
      I5 => sel0(0),
      O => \m_axis_tdata[2]_C_i_6_n_0\
    );
\m_axis_tdata[2]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(4),
      I1 => s_axis_tdata(5),
      O => \m_axis_tdata[2]_C_i_7_n_0\
    );
\m_axis_tdata[2]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000028000000000"
    )
        port map (
      I0 => m_axis_tdata13_out,
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(3),
      I3 => balance(2),
      I4 => balance(1),
      I5 => balance(0),
      O => \m_axis_tdata[2]_C_i_8_n_0\
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[2]_P_n_0\,
      I1 => \m_axis_tdata_reg[2]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[2]_C_n_0\,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[3]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[3]_C_i_2_n_0\,
      I1 => \m_axis_tdata[3]_C_i_3_n_0\,
      I2 => \m_axis_tdata[3]_C_i_4_n_0\,
      I3 => \m_axis_tdata[3]_C_i_5_n_0\,
      I4 => \m_axis_tdata[3]_C_i_6_n_0\,
      I5 => \m_axis_tdata[3]_C_i_7_n_0\,
      O => \m_axis_tdata[3]_C_i_1_n_0\
    );
\m_axis_tdata[3]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8000001E000000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(2),
      I3 => balance(1),
      I4 => balance(0),
      I5 => \m_axis_tdata[22]_C_i_13_n_0\,
      O => \m_axis_tdata[3]_C_i_10_n_0\
    );
\m_axis_tdata[3]_C_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_8_n_0\,
      I1 => s_axis_tdata(3),
      O => \m_axis_tdata[3]_C_i_2_n_0\
    );
\m_axis_tdata[3]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_11_n_0\,
      I1 => \m_axis_tdata[3]_C_i_8_n_0\,
      I2 => s_axis_tdata(7),
      I3 => \m_axis_tdata[16]_C_i_11_n_0\,
      I4 => s_axis_tdata(8),
      I5 => \m_axis_tdata[16]_C_i_12_n_0\,
      O => \m_axis_tdata[3]_C_i_3_n_0\
    );
\m_axis_tdata[3]_C_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(5),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[3]_C_i_4_n_0\
    );
\m_axis_tdata[3]_C_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA80"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => s_axis_tdata(2),
      I2 => \m_axis_tdata[21]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_16_n_0\,
      I4 => \m_axis_tdata[3]_C_i_9_n_0\,
      O => \m_axis_tdata[3]_C_i_5_n_0\
    );
\m_axis_tdata[3]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A280A280A2A28080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_9_n_0\,
      I1 => sel0(1),
      I2 => s_axis_tdata(9),
      I3 => s_axis_tdata(10),
      I4 => s_axis_tdata(3),
      I5 => sel0(0),
      O => \m_axis_tdata[3]_C_i_6_n_0\
    );
\m_axis_tdata[3]_C_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8880000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_9_n_0\,
      I1 => \m_axis_tdata[7]_C_i_12_n_0\,
      I2 => \m_axis_tdata[3]_C_i_10_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[7]_C_i_6_n_0\,
      O => \m_axis_tdata[3]_C_i_7_n_0\
    );
\m_axis_tdata[3]_C_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(4),
      I1 => s_axis_tdata(6),
      O => \m_axis_tdata[3]_C_i_8_n_0\
    );
\m_axis_tdata[3]_C_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(1),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[3]_C_i_9_n_0\
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[3]_P_n_0\,
      I1 => \m_axis_tdata_reg[3]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[3]_C_n_0\,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[4]_C_i_2_n_0\,
      I1 => \m_axis_tdata[4]_C_i_3_n_0\,
      I2 => \m_axis_tdata[4]_C_i_4_n_0\,
      I3 => \m_axis_tdata[4]_C_i_5_n_0\,
      I4 => \m_axis_tdata[4]_C_i_6_n_0\,
      I5 => \m_axis_tdata[4]_C_i_7_n_0\,
      O => \m_axis_tdata[4]_C_i_1_n_0\
    );
\m_axis_tdata[4]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(6),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[4]_C_i_2_n_0\
    );
\m_axis_tdata[4]_C_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_5_n_0\,
      I1 => \m_axis_tdata[22]_C_i_12_n_0\,
      I2 => \m_axis_tdata[22]_C_i_10_n_0\,
      I3 => s_axis_tdata(0),
      O => \m_axis_tdata[4]_C_i_3_n_0\
    );
\m_axis_tdata[4]_C_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA80"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => s_axis_tdata(3),
      I2 => \m_axis_tdata[21]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_16_n_0\,
      I4 => \m_axis_tdata[4]_C_i_8_n_0\,
      O => \m_axis_tdata[4]_C_i_4_n_0\
    );
\m_axis_tdata[4]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_11_n_0\,
      I1 => \m_axis_tdata[4]_C_i_9_n_0\,
      I2 => s_axis_tdata(8),
      I3 => \m_axis_tdata[16]_C_i_11_n_0\,
      I4 => s_axis_tdata(9),
      I5 => \m_axis_tdata[16]_C_i_12_n_0\,
      O => \m_axis_tdata[4]_C_i_5_n_0\
    );
\m_axis_tdata[4]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A280A280A2A28080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_9_n_0\,
      I1 => sel0(1),
      I2 => s_axis_tdata(10),
      I3 => s_axis_tdata(11),
      I4 => s_axis_tdata(4),
      I5 => sel0(0),
      O => \m_axis_tdata[4]_C_i_6_n_0\
    );
\m_axis_tdata[4]_C_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \m_axis_tdata[7]_C_i_6_n_0\,
      I1 => \m_axis_tdata[22]_C_i_9_n_0\,
      I2 => \m_axis_tdata[7]_C_i_12_n_0\,
      I3 => s_axis_tdata(4),
      I4 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[4]_C_i_7_n_0\
    );
\m_axis_tdata[4]_C_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(2),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[4]_C_i_8_n_0\
    );
\m_axis_tdata[4]_C_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(4),
      I1 => s_axis_tdata(7),
      O => \m_axis_tdata[4]_C_i_9_n_0\
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[4]_P_n_0\,
      I1 => \m_axis_tdata_reg[4]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[4]_C_n_0\,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_2_n_0\,
      I1 => \m_axis_tdata[5]_C_i_3_n_0\,
      I2 => \m_axis_tdata[5]_C_i_4_n_0\,
      I3 => \m_axis_tdata[5]_C_i_5_n_0\,
      I4 => \m_axis_tdata[5]_C_i_6_n_0\,
      I5 => \m_axis_tdata[5]_C_i_7_n_0\,
      O => \m_axis_tdata[5]_C_i_1_n_0\
    );
\m_axis_tdata[5]_C_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel0(4),
      I1 => s_axis_tdata(8),
      O => \m_axis_tdata[5]_C_i_10_n_0\
    );
\m_axis_tdata[5]_C_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010100"
    )
        port map (
      I0 => balance(0),
      I1 => balance(2),
      I2 => balance(1),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => sel0(0)
    );
\m_axis_tdata[5]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(7),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[5]_C_i_2_n_0\
    );
\m_axis_tdata[5]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_5_n_0\,
      I1 => \m_axis_tdata[5]_C_i_8_n_0\,
      I2 => s_axis_tdata(0),
      I3 => s_axis_tdata(1),
      I4 => \m_axis_tdata[22]_C_i_10_n_0\,
      I5 => \m_axis_tdata[22]_C_i_12_n_0\,
      O => \m_axis_tdata[5]_C_i_3_n_0\
    );
\m_axis_tdata[5]_C_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA80"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => s_axis_tdata(4),
      I2 => \m_axis_tdata[21]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_16_n_0\,
      I4 => \m_axis_tdata[5]_C_i_9_n_0\,
      O => \m_axis_tdata[5]_C_i_4_n_0\
    );
\m_axis_tdata[5]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA888A888A888"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_11_n_0\,
      I1 => \m_axis_tdata[5]_C_i_10_n_0\,
      I2 => s_axis_tdata(9),
      I3 => \m_axis_tdata[16]_C_i_11_n_0\,
      I4 => s_axis_tdata(10),
      I5 => \m_axis_tdata[16]_C_i_12_n_0\,
      O => \m_axis_tdata[5]_C_i_5_n_0\
    );
\m_axis_tdata[5]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A280A280A2A28080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_9_n_0\,
      I1 => sel0(1),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(12),
      I4 => s_axis_tdata(5),
      I5 => sel0(0),
      O => \m_axis_tdata[5]_C_i_6_n_0\
    );
\m_axis_tdata[5]_C_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \m_axis_tdata[7]_C_i_6_n_0\,
      I1 => \m_axis_tdata[22]_C_i_9_n_0\,
      I2 => \m_axis_tdata[7]_C_i_12_n_0\,
      I3 => s_axis_tdata(5),
      I4 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[5]_C_i_7_n_0\
    );
\m_axis_tdata[5]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028000000"
    )
        port map (
      I0 => m_axis_tdata112_out,
      I1 => \m_axis_tdata[22]_C_i_14_n_0\,
      I2 => balance(3),
      I3 => balance(1),
      I4 => balance(0),
      I5 => balance(2),
      O => \m_axis_tdata[5]_C_i_8_n_0\
    );
\m_axis_tdata[5]_C_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(3),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[5]_C_i_9_n_0\
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[5]_P_n_0\,
      I1 => \m_axis_tdata_reg[5]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[5]_C_n_0\,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \m_axis_tdata[6]_C_i_2_n_0\,
      I1 => \m_axis_tdata[6]_C_i_3_n_0\,
      I2 => \m_axis_tdata[22]_C_i_5_n_0\,
      I3 => \m_axis_tdata[6]_C_i_4_n_0\,
      I4 => \m_axis_tdata[6]_C_i_5_n_0\,
      I5 => \m_axis_tdata[6]_C_i_6_n_0\,
      O => \m_axis_tdata[6]_C_i_1_n_0\
    );
\m_axis_tdata[6]_C_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_12_n_0\,
      I1 => s_axis_tdata(6),
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(13),
      I4 => s_axis_tdata(12),
      I5 => sel0(1),
      O => \m_axis_tdata[6]_C_i_10_n_0\
    );
\m_axis_tdata[6]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(8),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[6]_C_i_2_n_0\
    );
\m_axis_tdata[6]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(2),
      I2 => \m_axis_tdata[6]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(0),
      O => \m_axis_tdata[6]_C_i_3_n_0\
    );
\m_axis_tdata[6]_C_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA80"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_14_n_0\,
      I1 => s_axis_tdata(5),
      I2 => \m_axis_tdata[21]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_16_n_0\,
      I4 => \m_axis_tdata[6]_C_i_8_n_0\,
      O => \m_axis_tdata[6]_C_i_4_n_0\
    );
\m_axis_tdata[6]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \m_axis_tdata[6]_C_i_9_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[6]_C_i_10_n_0\,
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[6]_C_i_5_n_0\
    );
\m_axis_tdata[6]_C_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \m_axis_tdata[7]_C_i_6_n_0\,
      I1 => \m_axis_tdata[22]_C_i_9_n_0\,
      I2 => \m_axis_tdata[7]_C_i_12_n_0\,
      I3 => s_axis_tdata(6),
      I4 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[6]_C_i_6_n_0\
    );
\m_axis_tdata[6]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(1),
      O => \m_axis_tdata[6]_C_i_7_n_0\
    );
\m_axis_tdata[6]_C_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(4),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[6]_C_i_8_n_0\
    );
\m_axis_tdata[6]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(11),
      I3 => s_axis_tdata(10),
      I4 => s_axis_tdata(9),
      I5 => sel0(4),
      O => \m_axis_tdata[6]_C_i_9_n_0\
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[6]_P_n_0\,
      I1 => \m_axis_tdata_reg[6]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[6]_C_n_0\,
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEEEEE"
    )
        port map (
      I0 => \m_axis_tdata[7]_C_i_2_n_0\,
      I1 => \m_axis_tdata[7]_C_i_3_n_0\,
      I2 => \m_axis_tdata[7]_C_i_4_n_0\,
      I3 => \m_axis_tdata[7]_C_i_5_n_0\,
      I4 => \m_axis_tdata[7]_C_i_6_n_0\,
      I5 => \m_axis_tdata[7]_C_i_7_n_0\,
      O => \m_axis_tdata[7]_C_i_1_n_0\
    );
\m_axis_tdata[7]_C_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(6),
      O => \m_axis_tdata[7]_C_i_10_n_0\
    );
\m_axis_tdata[7]_C_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222220"
    )
        port map (
      I0 => balance(0),
      I1 => balance(1),
      I2 => balance(2),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => \m_axis_tdata[7]_C_i_11_n_0\
    );
\m_axis_tdata[7]_C_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_14_n_0\,
      I1 => balance(3),
      I2 => balance(0),
      I3 => balance(1),
      I4 => balance(2),
      O => \m_axis_tdata[7]_C_i_12_n_0\
    );
\m_axis_tdata[7]_C_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020200000000000"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => \m_axis_tdata[23]_C_i_42_n_0\,
      I2 => balance(0),
      I3 => balance(3),
      I4 => \m_axis_tdata[22]_C_i_14_n_0\,
      I5 => m_axis_tdata118_out,
      O => \m_axis_tdata[7]_C_i_13_n_0\
    );
\m_axis_tdata[7]_C_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888F8888888"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => \m_axis_tdata[5]_C_i_8_n_0\,
      I2 => s_axis_tdata(3),
      I3 => sel0(11),
      I4 => m_axis_tdata19_out,
      I5 => \m_axis_tdata[23]_C_i_27_n_0\,
      O => \m_axis_tdata[7]_C_i_14_n_0\
    );
\m_axis_tdata[7]_C_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"380030003000E000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_13_n_0\,
      I1 => balance(2),
      I2 => balance(1),
      I3 => balance(0),
      I4 => balance(3),
      I5 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => \m_axis_tdata[7]_C_i_15_n_0\
    );
\m_axis_tdata[7]_C_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8888888"
    )
        port map (
      I0 => \m_axis_tdata[7]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[23]_C_i_9_n_0\,
      I3 => sel0(1),
      I4 => s_axis_tdata(13),
      O => \m_axis_tdata[7]_C_i_2_n_0\
    );
\m_axis_tdata[7]_C_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(9),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[7]_C_i_3_n_0\
    );
\m_axis_tdata[7]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFFC0000"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_9_n_0\,
      I1 => \m_axis_tdata[7]_C_i_9_n_0\,
      I2 => \m_axis_tdata[22]_C_i_16_n_0\,
      I3 => \m_axis_tdata[7]_C_i_10_n_0\,
      I4 => \m_axis_tdata[7]_C_i_11_n_0\,
      I5 => \m_axis_tdata[7]_C_i_12_n_0\,
      O => \m_axis_tdata[7]_C_i_4_n_0\
    );
\m_axis_tdata[7]_C_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEAAAAAAAA"
    )
        port map (
      I0 => \m_axis_tdata[7]_C_i_13_n_0\,
      I1 => \m_axis_tdata[7]_C_i_14_n_0\,
      I2 => \m_axis_tdata[22]_C_i_12_n_0\,
      I3 => \m_axis_tdata[23]_C_i_12_n_0\,
      I4 => s_axis_tdata(1),
      I5 => \m_axis_tdata[7]_C_i_15_n_0\,
      O => \m_axis_tdata[7]_C_i_5_n_0\
    );
\m_axis_tdata[7]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB00FF00FF00EC00"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_13_n_0\,
      I1 => balance(2),
      I2 => balance(1),
      I3 => balance(0),
      I4 => balance(3),
      I5 => \m_axis_tdata[22]_C_i_14_n_0\,
      O => \m_axis_tdata[7]_C_i_6_n_0\
    );
\m_axis_tdata[7]_C_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2F0F2F0F2002200"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => \m_axis_tdata[23]_C_i_10_n_0\,
      I2 => s_axis_tdata(7),
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      I4 => \m_axis_tdata[19]_C_i_12_n_0\,
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[7]_C_i_7_n_0\
    );
\m_axis_tdata[7]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(12),
      I3 => s_axis_tdata(11),
      I4 => s_axis_tdata(10),
      I5 => sel0(4),
      O => \m_axis_tdata[7]_C_i_8_n_0\
    );
\m_axis_tdata[7]_C_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(5),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[7]_C_i_9_n_0\
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[7]_P_n_0\,
      I1 => \m_axis_tdata_reg[7]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[7]_C_n_0\,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[8]_C_i_2_n_0\,
      I1 => \m_axis_tdata[8]_C_i_3_n_0\,
      I2 => \m_axis_tdata[8]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[8]_C_i_5_n_0\,
      I5 => \m_axis_tdata[8]_C_i_6_n_0\,
      O => \m_axis_tdata[8]_C_i_1_n_0\
    );
\m_axis_tdata[8]_C_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(6),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[8]_C_i_10_n_0\
    );
\m_axis_tdata[8]_C_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(7),
      O => \m_axis_tdata[8]_C_i_11_n_0\
    );
\m_axis_tdata[8]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(10),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[8]_C_i_2_n_0\
    );
\m_axis_tdata[8]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(1),
      I3 => s_axis_tdata(0),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[8]_C_i_3_n_0\
    );
\m_axis_tdata[8]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(4),
      I2 => \m_axis_tdata[8]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(2),
      O => \m_axis_tdata[8]_C_i_4_n_0\
    );
\m_axis_tdata[8]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \m_axis_tdata[8]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[8]_C_i_9_n_0\,
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[8]_C_i_5_n_0\
    );
\m_axis_tdata[8]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[8]_C_i_10_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[8]_C_i_11_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(8),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[8]_C_i_6_n_0\
    );
\m_axis_tdata[8]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(3),
      O => \m_axis_tdata[8]_C_i_7_n_0\
    );
\m_axis_tdata[8]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(13),
      I3 => s_axis_tdata(12),
      I4 => s_axis_tdata(11),
      I5 => sel0(4),
      O => \m_axis_tdata[8]_C_i_8_n_0\
    );
\m_axis_tdata[8]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_12_n_0\,
      I1 => s_axis_tdata(8),
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(15),
      I4 => s_axis_tdata(14),
      I5 => sel0(1),
      O => \m_axis_tdata[8]_C_i_9_n_0\
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[8]_P_n_0\,
      I1 => \m_axis_tdata_reg[8]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[8]_C_n_0\,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_C_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEEE"
    )
        port map (
      I0 => \m_axis_tdata[9]_C_i_2_n_0\,
      I1 => \m_axis_tdata[9]_C_i_3_n_0\,
      I2 => \m_axis_tdata[9]_C_i_4_n_0\,
      I3 => \m_axis_tdata[22]_C_i_5_n_0\,
      I4 => \m_axis_tdata[9]_C_i_5_n_0\,
      I5 => \m_axis_tdata[9]_C_i_6_n_0\,
      O => \m_axis_tdata[9]_C_i_1_n_0\
    );
\m_axis_tdata[9]_C_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => \m_axis_tdata[23]_C_i_16_n_0\,
      I2 => s_axis_tdata(7),
      I3 => \m_axis_tdata[2]_C_i_8_n_0\,
      O => \m_axis_tdata[9]_C_i_10_n_0\
    );
\m_axis_tdata[9]_C_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[21]_C_i_7_n_0\,
      I1 => s_axis_tdata(8),
      O => \m_axis_tdata[9]_C_i_11_n_0\
    );
\m_axis_tdata[9]_C_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => \m_axis_tdata[19]_C_i_8_n_0\,
      I2 => s_axis_tdata(11),
      I3 => \m_axis_tdata[19]_C_i_9_n_0\,
      O => \m_axis_tdata[9]_C_i_2_n_0\
    );
\m_axis_tdata[9]_C_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA808080"
    )
        port map (
      I0 => \m_axis_tdata[23]_C_i_18_n_0\,
      I1 => \m_axis_tdata[23]_C_i_20_n_0\,
      I2 => s_axis_tdata(2),
      I3 => s_axis_tdata(1),
      I4 => \m_axis_tdata[22]_C_i_8_n_0\,
      I5 => \m_axis_tdata[22]_C_i_9_n_0\,
      O => \m_axis_tdata[9]_C_i_3_n_0\
    );
\m_axis_tdata[9]_C_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8FFF8FFF8"
    )
        port map (
      I0 => \m_axis_tdata[22]_C_i_10_n_0\,
      I1 => s_axis_tdata(5),
      I2 => \m_axis_tdata[9]_C_i_7_n_0\,
      I3 => \m_axis_tdata[22]_C_i_12_n_0\,
      I4 => \m_axis_tdata[23]_C_i_12_n_0\,
      I5 => s_axis_tdata(3),
      O => \m_axis_tdata[9]_C_i_4_n_0\
    );
\m_axis_tdata[9]_C_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \m_axis_tdata[9]_C_i_8_n_0\,
      I1 => \m_axis_tdata[19]_C_i_11_n_0\,
      I2 => \m_axis_tdata[9]_C_i_9_n_0\,
      I3 => \m_axis_tdata[23]_C_i_9_n_0\,
      O => \m_axis_tdata[9]_C_i_5_n_0\
    );
\m_axis_tdata[9]_C_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE00FE00FE00"
    )
        port map (
      I0 => \m_axis_tdata[9]_C_i_10_n_0\,
      I1 => \m_axis_tdata[22]_C_i_16_n_0\,
      I2 => \m_axis_tdata[9]_C_i_11_n_0\,
      I3 => \m_axis_tdata[23]_C_i_14_n_0\,
      I4 => s_axis_tdata(9),
      I5 => \m_axis_tdata[23]_C_i_8_n_0\,
      O => \m_axis_tdata[9]_C_i_6_n_0\
    );
\m_axis_tdata[9]_C_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \m_axis_tdata[5]_C_i_8_n_0\,
      I1 => s_axis_tdata(4),
      O => \m_axis_tdata[9]_C_i_7_n_0\
    );
\m_axis_tdata[9]_C_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EA40EA40"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => s_axis_tdata(14),
      I3 => s_axis_tdata(13),
      I4 => s_axis_tdata(12),
      I5 => sel0(4),
      O => \m_axis_tdata[9]_C_i_8_n_0\
    );
\m_axis_tdata[9]_C_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222FFFFF222F222F"
    )
        port map (
      I0 => \m_axis_tdata[19]_C_i_12_n_0\,
      I1 => s_axis_tdata(9),
      I2 => \m_axis_tdata[23]_C_i_10_n_0\,
      I3 => s_axis_tdata(16),
      I4 => s_axis_tdata(15),
      I5 => sel0(1),
      O => \m_axis_tdata[9]_C_i_9_n_0\
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata_reg[9]_P_n_0\,
      I1 => \m_axis_tdata_reg[9]_LDC_n_0\,
      I2 => \m_axis_tdata_reg[9]_C_n_0\,
      O => m_axis_tdata(9)
    );
\m_axis_tdata_reg[0]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[0]_LDC_i_2_n_0\,
      D => \m_axis_tdata[0]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[0]_C_n_0\
    );
\m_axis_tdata_reg[0]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[0]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[0]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[0]_LDC_n_0\
    );
\m_axis_tdata_reg[0]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => aresetn,
      O => \m_axis_tdata_reg[0]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[0]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(0),
      I1 => aresetn,
      O => \m_axis_tdata_reg[0]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[0]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[0]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[0]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[0]_P_n_0\
    );
\m_axis_tdata_reg[10]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[10]_LDC_i_2_n_0\,
      D => \m_axis_tdata[10]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[10]_C_n_0\
    );
\m_axis_tdata_reg[10]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[10]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[10]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[10]_LDC_n_0\
    );
\m_axis_tdata_reg[10]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => aresetn,
      O => \m_axis_tdata_reg[10]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[10]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(10),
      I1 => aresetn,
      O => \m_axis_tdata_reg[10]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[10]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[10]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[10]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[10]_P_n_0\
    );
\m_axis_tdata_reg[11]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[11]_LDC_i_2_n_0\,
      D => \m_axis_tdata[11]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[11]_C_n_0\
    );
\m_axis_tdata_reg[11]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[11]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[11]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[11]_LDC_n_0\
    );
\m_axis_tdata_reg[11]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => aresetn,
      O => \m_axis_tdata_reg[11]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[11]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(11),
      I1 => aresetn,
      O => \m_axis_tdata_reg[11]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[11]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[11]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[11]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[11]_P_n_0\
    );
\m_axis_tdata_reg[12]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[12]_LDC_i_2_n_0\,
      D => \m_axis_tdata[12]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[12]_C_n_0\
    );
\m_axis_tdata_reg[12]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[12]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[12]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[12]_LDC_n_0\
    );
\m_axis_tdata_reg[12]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => aresetn,
      O => \m_axis_tdata_reg[12]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[12]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(12),
      I1 => aresetn,
      O => \m_axis_tdata_reg[12]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[12]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[12]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[12]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[12]_P_n_0\
    );
\m_axis_tdata_reg[13]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[13]_LDC_i_2_n_0\,
      D => \m_axis_tdata[13]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[13]_C_n_0\
    );
\m_axis_tdata_reg[13]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[13]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[13]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[13]_LDC_n_0\
    );
\m_axis_tdata_reg[13]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => aresetn,
      O => \m_axis_tdata_reg[13]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[13]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(13),
      I1 => aresetn,
      O => \m_axis_tdata_reg[13]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[13]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[13]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[13]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[13]_P_n_0\
    );
\m_axis_tdata_reg[14]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[14]_LDC_i_2_n_0\,
      D => \m_axis_tdata[14]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[14]_C_n_0\
    );
\m_axis_tdata_reg[14]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[14]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[14]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[14]_LDC_n_0\
    );
\m_axis_tdata_reg[14]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => aresetn,
      O => \m_axis_tdata_reg[14]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[14]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(14),
      I1 => aresetn,
      O => \m_axis_tdata_reg[14]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[14]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[14]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[14]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[14]_P_n_0\
    );
\m_axis_tdata_reg[15]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[15]_LDC_i_2_n_0\,
      D => \m_axis_tdata[15]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[15]_C_n_0\
    );
\m_axis_tdata_reg[15]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[15]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[15]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[15]_LDC_n_0\
    );
\m_axis_tdata_reg[15]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => aresetn,
      O => \m_axis_tdata_reg[15]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[15]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(15),
      I1 => aresetn,
      O => \m_axis_tdata_reg[15]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[15]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[15]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[15]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[15]_P_n_0\
    );
\m_axis_tdata_reg[16]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[16]_LDC_i_2_n_0\,
      D => \m_axis_tdata[16]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[16]_C_n_0\
    );
\m_axis_tdata_reg[16]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[16]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[16]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[16]_LDC_n_0\
    );
\m_axis_tdata_reg[16]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => aresetn,
      O => \m_axis_tdata_reg[16]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[16]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(16),
      I1 => aresetn,
      O => \m_axis_tdata_reg[16]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[16]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[16]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[16]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[16]_P_n_0\
    );
\m_axis_tdata_reg[17]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[17]_LDC_i_2_n_0\,
      D => \m_axis_tdata[17]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[17]_C_n_0\
    );
\m_axis_tdata_reg[17]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[17]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[17]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[17]_LDC_n_0\
    );
\m_axis_tdata_reg[17]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => aresetn,
      O => \m_axis_tdata_reg[17]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[17]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(17),
      I1 => aresetn,
      O => \m_axis_tdata_reg[17]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[17]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[17]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[17]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[17]_P_n_0\
    );
\m_axis_tdata_reg[18]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[18]_LDC_i_2_n_0\,
      D => \m_axis_tdata[18]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[18]_C_n_0\
    );
\m_axis_tdata_reg[18]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[18]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[18]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[18]_LDC_n_0\
    );
\m_axis_tdata_reg[18]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => aresetn,
      O => \m_axis_tdata_reg[18]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[18]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(18),
      I1 => aresetn,
      O => \m_axis_tdata_reg[18]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[18]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[18]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[18]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[18]_P_n_0\
    );
\m_axis_tdata_reg[19]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[19]_LDC_i_2_n_0\,
      D => \m_axis_tdata[19]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[19]_C_n_0\
    );
\m_axis_tdata_reg[19]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[19]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[19]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[19]_LDC_n_0\
    );
\m_axis_tdata_reg[19]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => aresetn,
      O => \m_axis_tdata_reg[19]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[19]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(19),
      I1 => aresetn,
      O => \m_axis_tdata_reg[19]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[19]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[19]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[19]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[19]_P_n_0\
    );
\m_axis_tdata_reg[1]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[1]_LDC_i_2_n_0\,
      D => \m_axis_tdata[1]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[1]_C_n_0\
    );
\m_axis_tdata_reg[1]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[1]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[1]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[1]_LDC_n_0\
    );
\m_axis_tdata_reg[1]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => aresetn,
      O => \m_axis_tdata_reg[1]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[1]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(1),
      I1 => aresetn,
      O => \m_axis_tdata_reg[1]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[1]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[1]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[1]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[1]_P_n_0\
    );
\m_axis_tdata_reg[20]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[20]_LDC_i_2_n_0\,
      D => \m_axis_tdata[20]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[20]_C_n_0\
    );
\m_axis_tdata_reg[20]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[20]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[20]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[20]_LDC_n_0\
    );
\m_axis_tdata_reg[20]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => aresetn,
      O => \m_axis_tdata_reg[20]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[20]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(20),
      I1 => aresetn,
      O => \m_axis_tdata_reg[20]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[20]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[20]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[20]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[20]_P_n_0\
    );
\m_axis_tdata_reg[21]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[21]_LDC_i_2_n_0\,
      D => \m_axis_tdata[21]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[21]_C_n_0\
    );
\m_axis_tdata_reg[21]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[21]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[21]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[21]_LDC_n_0\
    );
\m_axis_tdata_reg[21]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => aresetn,
      O => \m_axis_tdata_reg[21]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[21]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(21),
      I1 => aresetn,
      O => \m_axis_tdata_reg[21]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[21]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[21]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[21]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[21]_P_n_0\
    );
\m_axis_tdata_reg[22]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[22]_LDC_i_2_n_0\,
      D => \m_axis_tdata[22]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[22]_C_n_0\
    );
\m_axis_tdata_reg[22]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[22]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[22]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[22]_LDC_n_0\
    );
\m_axis_tdata_reg[22]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => aresetn,
      O => \m_axis_tdata_reg[22]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[22]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(22),
      I1 => aresetn,
      O => \m_axis_tdata_reg[22]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[22]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[22]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[22]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[22]_P_n_0\
    );
\m_axis_tdata_reg[23]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[23]_LDC_i_2_n_0\,
      D => \m_axis_tdata[23]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[23]_C_n_0\
    );
\m_axis_tdata_reg[23]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[23]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[23]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[23]_LDC_n_0\
    );
\m_axis_tdata_reg[23]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => aresetn,
      O => \m_axis_tdata_reg[23]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[23]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => aresetn,
      O => \m_axis_tdata_reg[23]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[23]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[23]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[23]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[23]_P_n_0\
    );
\m_axis_tdata_reg[2]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[2]_LDC_i_2_n_0\,
      D => \m_axis_tdata[2]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[2]_C_n_0\
    );
\m_axis_tdata_reg[2]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[2]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[2]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[2]_LDC_n_0\
    );
\m_axis_tdata_reg[2]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => aresetn,
      O => \m_axis_tdata_reg[2]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[2]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(2),
      I1 => aresetn,
      O => \m_axis_tdata_reg[2]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[2]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[2]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[2]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[2]_P_n_0\
    );
\m_axis_tdata_reg[3]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[3]_LDC_i_2_n_0\,
      D => \m_axis_tdata[3]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[3]_C_n_0\
    );
\m_axis_tdata_reg[3]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[3]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[3]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[3]_LDC_n_0\
    );
\m_axis_tdata_reg[3]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => aresetn,
      O => \m_axis_tdata_reg[3]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[3]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(3),
      I1 => aresetn,
      O => \m_axis_tdata_reg[3]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[3]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[3]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[3]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[3]_P_n_0\
    );
\m_axis_tdata_reg[4]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[4]_LDC_i_2_n_0\,
      D => \m_axis_tdata[4]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[4]_C_n_0\
    );
\m_axis_tdata_reg[4]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[4]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[4]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[4]_LDC_n_0\
    );
\m_axis_tdata_reg[4]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => aresetn,
      O => \m_axis_tdata_reg[4]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[4]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => aresetn,
      O => \m_axis_tdata_reg[4]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[4]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[4]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[4]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[4]_P_n_0\
    );
\m_axis_tdata_reg[5]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[5]_LDC_i_2_n_0\,
      D => \m_axis_tdata[5]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[5]_C_n_0\
    );
\m_axis_tdata_reg[5]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[5]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[5]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[5]_LDC_n_0\
    );
\m_axis_tdata_reg[5]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => aresetn,
      O => \m_axis_tdata_reg[5]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[5]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => aresetn,
      O => \m_axis_tdata_reg[5]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[5]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[5]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[5]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[5]_P_n_0\
    );
\m_axis_tdata_reg[6]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[6]_LDC_i_2_n_0\,
      D => \m_axis_tdata[6]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[6]_C_n_0\
    );
\m_axis_tdata_reg[6]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[6]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[6]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[6]_LDC_n_0\
    );
\m_axis_tdata_reg[6]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => aresetn,
      O => \m_axis_tdata_reg[6]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[6]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(6),
      I1 => aresetn,
      O => \m_axis_tdata_reg[6]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[6]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[6]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[6]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[6]_P_n_0\
    );
\m_axis_tdata_reg[7]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[7]_LDC_i_2_n_0\,
      D => \m_axis_tdata[7]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[7]_C_n_0\
    );
\m_axis_tdata_reg[7]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[7]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[7]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[7]_LDC_n_0\
    );
\m_axis_tdata_reg[7]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => aresetn,
      O => \m_axis_tdata_reg[7]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[7]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(7),
      I1 => aresetn,
      O => \m_axis_tdata_reg[7]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[7]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[7]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[7]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[7]_P_n_0\
    );
\m_axis_tdata_reg[8]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[8]_LDC_i_2_n_0\,
      D => \m_axis_tdata[8]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[8]_C_n_0\
    );
\m_axis_tdata_reg[8]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[8]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[8]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[8]_LDC_n_0\
    );
\m_axis_tdata_reg[8]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => aresetn,
      O => \m_axis_tdata_reg[8]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[8]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(8),
      I1 => aresetn,
      O => \m_axis_tdata_reg[8]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[8]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[8]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[8]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[8]_P_n_0\
    );
\m_axis_tdata_reg[9]_C\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \m_axis_tdata_reg[9]_LDC_i_2_n_0\,
      D => \m_axis_tdata[9]_C_i_1_n_0\,
      Q => \m_axis_tdata_reg[9]_C_n_0\
    );
\m_axis_tdata_reg[9]_LDC\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \m_axis_tdata_reg[9]_LDC_i_2_n_0\,
      D => '1',
      G => \m_axis_tdata_reg[9]_LDC_i_1_n_0\,
      GE => '1',
      Q => \m_axis_tdata_reg[9]_LDC_n_0\
    );
\m_axis_tdata_reg[9]_LDC_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => aresetn,
      O => \m_axis_tdata_reg[9]_LDC_i_1_n_0\
    );
\m_axis_tdata_reg[9]_LDC_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axis_tdata(9),
      I1 => aresetn,
      O => \m_axis_tdata_reg[9]_LDC_i_2_n_0\
    );
\m_axis_tdata_reg[9]_P\: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => \m_axis_tdata[9]_C_i_1_n_0\,
      PRE => \m_axis_tdata_reg[9]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[9]_P_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_volume_controller_0_0 is
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
  attribute NotValidForBitStream of I2CBalancer_volume_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_volume_controller_0_0 : entity is "I2CBalancer_volume_controller_0_0,volume_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_volume_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_volume_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_volume_controller_0_0 : entity is "volume_controller,Vivado 2020.2";
end I2CBalancer_volume_controller_0_0;

architecture STRUCTURE of I2CBalancer_volume_controller_0_0 is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tlast\ : STD_LOGIC;
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tlast\ <= s_axis_tlast;
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tlast <= \^s_axis_tlast\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
U0: entity work.I2CBalancer_volume_controller_0_0_volume_controller
     port map (
      aclk => aclk,
      aresetn => aresetn,
      balance(0 to 9) => balance(0 to 9),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0)
    );
end STRUCTURE;
