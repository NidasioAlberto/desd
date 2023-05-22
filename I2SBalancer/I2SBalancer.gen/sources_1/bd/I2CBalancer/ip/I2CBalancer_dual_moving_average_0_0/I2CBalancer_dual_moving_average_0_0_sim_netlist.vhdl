-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue May 23 00:12:03 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_dual_moving_average_0_0/I2CBalancer_dual_moving_average_0_0_sim_netlist.vhdl}
-- Design      : I2CBalancer_dual_moving_average_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_dual_moving_average_0_0_dual_moving_average is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    filter_enable : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2CBalancer_dual_moving_average_0_0_dual_moving_average : entity is "dual_moving_average";
end I2CBalancer_dual_moving_average_0_0_dual_moving_average;

architecture STRUCTURE of I2CBalancer_dual_moving_average_0_0_dual_moving_average is
  signal avg_left : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal avg_left0 : STD_LOGIC;
  signal \avg_left0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__0_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__0_n_1\ : STD_LOGIC;
  signal \avg_left0_carry__0_n_2\ : STD_LOGIC;
  signal \avg_left0_carry__0_n_3\ : STD_LOGIC;
  signal \avg_left0_carry__0_n_4\ : STD_LOGIC;
  signal \avg_left0_carry__0_n_5\ : STD_LOGIC;
  signal \avg_left0_carry__0_n_6\ : STD_LOGIC;
  signal \avg_left0_carry__0_n_7\ : STD_LOGIC;
  signal \avg_left0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__1_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__1_n_1\ : STD_LOGIC;
  signal \avg_left0_carry__1_n_2\ : STD_LOGIC;
  signal \avg_left0_carry__1_n_3\ : STD_LOGIC;
  signal \avg_left0_carry__1_n_4\ : STD_LOGIC;
  signal \avg_left0_carry__1_n_5\ : STD_LOGIC;
  signal \avg_left0_carry__1_n_6\ : STD_LOGIC;
  signal \avg_left0_carry__1_n_7\ : STD_LOGIC;
  signal \avg_left0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__2_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__2_n_1\ : STD_LOGIC;
  signal \avg_left0_carry__2_n_2\ : STD_LOGIC;
  signal \avg_left0_carry__2_n_3\ : STD_LOGIC;
  signal \avg_left0_carry__2_n_4\ : STD_LOGIC;
  signal \avg_left0_carry__2_n_5\ : STD_LOGIC;
  signal \avg_left0_carry__2_n_6\ : STD_LOGIC;
  signal \avg_left0_carry__2_n_7\ : STD_LOGIC;
  signal \avg_left0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__3_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__3_n_1\ : STD_LOGIC;
  signal \avg_left0_carry__3_n_2\ : STD_LOGIC;
  signal \avg_left0_carry__3_n_3\ : STD_LOGIC;
  signal \avg_left0_carry__3_n_4\ : STD_LOGIC;
  signal \avg_left0_carry__3_n_5\ : STD_LOGIC;
  signal \avg_left0_carry__3_n_6\ : STD_LOGIC;
  signal \avg_left0_carry__3_n_7\ : STD_LOGIC;
  signal \avg_left0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \avg_left0_carry__4_n_1\ : STD_LOGIC;
  signal \avg_left0_carry__4_n_2\ : STD_LOGIC;
  signal \avg_left0_carry__4_n_3\ : STD_LOGIC;
  signal \avg_left0_carry__4_n_4\ : STD_LOGIC;
  signal \avg_left0_carry__4_n_5\ : STD_LOGIC;
  signal \avg_left0_carry__4_n_6\ : STD_LOGIC;
  signal \avg_left0_carry__4_n_7\ : STD_LOGIC;
  signal avg_left0_carry_i_1_n_0 : STD_LOGIC;
  signal avg_left0_carry_i_2_n_0 : STD_LOGIC;
  signal avg_left0_carry_i_3_n_0 : STD_LOGIC;
  signal avg_left0_carry_i_4_n_0 : STD_LOGIC;
  signal avg_left0_carry_i_5_n_0 : STD_LOGIC;
  signal avg_left0_carry_i_6_n_0 : STD_LOGIC;
  signal avg_left0_carry_i_7_n_0 : STD_LOGIC;
  signal avg_left0_carry_i_8_n_0 : STD_LOGIC;
  signal avg_left0_carry_n_0 : STD_LOGIC;
  signal avg_left0_carry_n_1 : STD_LOGIC;
  signal avg_left0_carry_n_2 : STD_LOGIC;
  signal avg_left0_carry_n_3 : STD_LOGIC;
  signal avg_left0_carry_n_4 : STD_LOGIC;
  signal avg_left0_carry_n_5 : STD_LOGIC;
  signal avg_left0_carry_n_6 : STD_LOGIC;
  signal avg_left0_carry_n_7 : STD_LOGIC;
  signal avg_right : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal avg_right0 : STD_LOGIC;
  signal \avg_right0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__0_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__0_n_1\ : STD_LOGIC;
  signal \avg_right0_carry__0_n_2\ : STD_LOGIC;
  signal \avg_right0_carry__0_n_3\ : STD_LOGIC;
  signal \avg_right0_carry__0_n_4\ : STD_LOGIC;
  signal \avg_right0_carry__0_n_5\ : STD_LOGIC;
  signal \avg_right0_carry__0_n_6\ : STD_LOGIC;
  signal \avg_right0_carry__0_n_7\ : STD_LOGIC;
  signal \avg_right0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__1_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__1_n_1\ : STD_LOGIC;
  signal \avg_right0_carry__1_n_2\ : STD_LOGIC;
  signal \avg_right0_carry__1_n_3\ : STD_LOGIC;
  signal \avg_right0_carry__1_n_4\ : STD_LOGIC;
  signal \avg_right0_carry__1_n_5\ : STD_LOGIC;
  signal \avg_right0_carry__1_n_6\ : STD_LOGIC;
  signal \avg_right0_carry__1_n_7\ : STD_LOGIC;
  signal \avg_right0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__2_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__2_n_1\ : STD_LOGIC;
  signal \avg_right0_carry__2_n_2\ : STD_LOGIC;
  signal \avg_right0_carry__2_n_3\ : STD_LOGIC;
  signal \avg_right0_carry__2_n_4\ : STD_LOGIC;
  signal \avg_right0_carry__2_n_5\ : STD_LOGIC;
  signal \avg_right0_carry__2_n_6\ : STD_LOGIC;
  signal \avg_right0_carry__2_n_7\ : STD_LOGIC;
  signal \avg_right0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__3_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__3_n_1\ : STD_LOGIC;
  signal \avg_right0_carry__3_n_2\ : STD_LOGIC;
  signal \avg_right0_carry__3_n_3\ : STD_LOGIC;
  signal \avg_right0_carry__3_n_4\ : STD_LOGIC;
  signal \avg_right0_carry__3_n_5\ : STD_LOGIC;
  signal \avg_right0_carry__3_n_6\ : STD_LOGIC;
  signal \avg_right0_carry__3_n_7\ : STD_LOGIC;
  signal \avg_right0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \avg_right0_carry__4_n_1\ : STD_LOGIC;
  signal \avg_right0_carry__4_n_2\ : STD_LOGIC;
  signal \avg_right0_carry__4_n_3\ : STD_LOGIC;
  signal \avg_right0_carry__4_n_4\ : STD_LOGIC;
  signal \avg_right0_carry__4_n_5\ : STD_LOGIC;
  signal \avg_right0_carry__4_n_6\ : STD_LOGIC;
  signal \avg_right0_carry__4_n_7\ : STD_LOGIC;
  signal avg_right0_carry_i_1_n_0 : STD_LOGIC;
  signal avg_right0_carry_i_2_n_0 : STD_LOGIC;
  signal avg_right0_carry_i_3_n_0 : STD_LOGIC;
  signal avg_right0_carry_i_4_n_0 : STD_LOGIC;
  signal avg_right0_carry_i_5_n_0 : STD_LOGIC;
  signal avg_right0_carry_i_6_n_0 : STD_LOGIC;
  signal avg_right0_carry_i_7_n_0 : STD_LOGIC;
  signal avg_right0_carry_i_8_n_0 : STD_LOGIC;
  signal avg_right0_carry_n_0 : STD_LOGIC;
  signal avg_right0_carry_n_1 : STD_LOGIC;
  signal avg_right0_carry_n_2 : STD_LOGIC;
  signal avg_right0_carry_n_3 : STD_LOGIC;
  signal avg_right0_carry_n_4 : STD_LOGIC;
  signal avg_right0_carry_n_5 : STD_LOGIC;
  signal avg_right0_carry_n_6 : STD_LOGIC;
  signal avg_right0_carry_n_7 : STD_LOGIC;
  signal is_left_data_ready_i_1_n_0 : STD_LOGIC;
  signal is_left_data_ready_reg_n_0 : STD_LOGIC;
  signal is_right_data_ready_i_1_n_0 : STD_LOGIC;
  signal is_right_data_ready_i_2_n_0 : STD_LOGIC;
  signal is_right_data_ready_reg_n_0 : STD_LOGIC;
  signal last_data_left_c_i_1_n_0 : STD_LOGIC;
  signal \last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_28_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][10]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][11]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][12]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][13]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][14]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][15]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][16]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][17]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][18]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][19]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][20]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][21]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][22]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][23]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][5]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][6]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][7]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][8]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[30][9]_U0_last_data_left_reg_c_29_n_0\ : STD_LOGIC;
  signal \last_data_left_reg[31]\ : STD_LOGIC_VECTOR ( 23 downto 5 );
  signal last_data_left_reg_c_0_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_10_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_11_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_12_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_13_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_14_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_15_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_16_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_17_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_18_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_19_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_1_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_20_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_21_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_22_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_23_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_24_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_25_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_26_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_27_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_28_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_29_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_2_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_3_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_4_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_5_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_6_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_7_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_8_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_9_n_0 : STD_LOGIC;
  signal last_data_left_reg_c_n_0 : STD_LOGIC;
  signal \last_data_left_reg_gate__0_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__10_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__11_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__12_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__13_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__14_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__15_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__16_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__17_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__1_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__2_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__3_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__4_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__5_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__6_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__7_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__8_n_0\ : STD_LOGIC;
  signal \last_data_left_reg_gate__9_n_0\ : STD_LOGIC;
  signal last_data_left_reg_gate_n_0 : STD_LOGIC;
  signal last_data_right_c_i_1_n_0 : STD_LOGIC;
  signal \last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_58_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][10]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][11]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][12]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][13]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][14]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][15]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][16]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][17]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][18]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][19]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][20]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][21]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][22]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][23]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][5]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][6]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][7]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][8]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[30][9]_U0_last_data_right_reg_c_59_n_0\ : STD_LOGIC;
  signal \last_data_right_reg[31]\ : STD_LOGIC_VECTOR ( 23 downto 5 );
  signal last_data_right_reg_c_30_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_31_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_32_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_33_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_34_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_35_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_36_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_37_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_38_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_39_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_40_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_41_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_42_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_43_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_44_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_45_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_46_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_47_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_48_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_49_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_50_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_51_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_52_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_53_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_54_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_55_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_56_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_57_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_58_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_59_n_0 : STD_LOGIC;
  signal last_data_right_reg_c_n_0 : STD_LOGIC;
  signal \last_data_right_reg_gate__0_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__10_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__11_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__12_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__13_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__14_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__15_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__16_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__17_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__1_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__2_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__3_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__4_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__5_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__6_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__7_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__8_n_0\ : STD_LOGIC;
  signal \last_data_right_reg_gate__9_n_0\ : STD_LOGIC;
  signal last_data_right_reg_gate_n_0 : STD_LOGIC;
  signal \m_axis_tdata[0]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_P_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_C_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_C_i_1_n_0\ : STD_LOGIC;
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
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast_C_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_C_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_LDC_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_P_n_0 : STD_LOGIC;
  signal m_axis_tvalid_C_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_reg_C_n_0 : STD_LOGIC;
  signal m_axis_tvalid_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal m_axis_tvalid_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal m_axis_tvalid_reg_LDC_n_0 : STD_LOGIC;
  signal m_axis_tvalid_reg_P_n_0 : STD_LOGIC;
  signal p_3_in : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal s_axis_tready_C_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_reg_C_n_0 : STD_LOGIC;
  signal s_axis_tready_reg_LDC_i_1_n_0 : STD_LOGIC;
  signal s_axis_tready_reg_LDC_i_2_n_0 : STD_LOGIC;
  signal s_axis_tready_reg_LDC_n_0 : STD_LOGIC;
  signal s_axis_tready_reg_P_n_0 : STD_LOGIC;
  signal \NLW_avg_left0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_avg_right0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of avg_left0_carry : label is 35;
  attribute ADDER_THRESHOLD of \avg_left0_carry__0\ : label is 35;
  attribute HLUTNM : string;
  attribute HLUTNM of \avg_left0_carry__0_i_1\ : label is "lutpair5";
  attribute HLUTNM of \avg_left0_carry__0_i_2\ : label is "lutpair4";
  attribute HLUTNM of \avg_left0_carry__0_i_3\ : label is "lutpair3";
  attribute HLUTNM of \avg_left0_carry__0_i_4\ : label is "lutpair2";
  attribute HLUTNM of \avg_left0_carry__0_i_5\ : label is "lutpair6";
  attribute HLUTNM of \avg_left0_carry__0_i_6\ : label is "lutpair5";
  attribute HLUTNM of \avg_left0_carry__0_i_7\ : label is "lutpair4";
  attribute HLUTNM of \avg_left0_carry__0_i_8\ : label is "lutpair3";
  attribute ADDER_THRESHOLD of \avg_left0_carry__1\ : label is 35;
  attribute HLUTNM of \avg_left0_carry__1_i_1\ : label is "lutpair9";
  attribute HLUTNM of \avg_left0_carry__1_i_2\ : label is "lutpair8";
  attribute HLUTNM of \avg_left0_carry__1_i_3\ : label is "lutpair7";
  attribute HLUTNM of \avg_left0_carry__1_i_4\ : label is "lutpair6";
  attribute HLUTNM of \avg_left0_carry__1_i_5\ : label is "lutpair10";
  attribute HLUTNM of \avg_left0_carry__1_i_6\ : label is "lutpair9";
  attribute HLUTNM of \avg_left0_carry__1_i_7\ : label is "lutpair8";
  attribute HLUTNM of \avg_left0_carry__1_i_8\ : label is "lutpair7";
  attribute ADDER_THRESHOLD of \avg_left0_carry__2\ : label is 35;
  attribute HLUTNM of \avg_left0_carry__2_i_1\ : label is "lutpair13";
  attribute HLUTNM of \avg_left0_carry__2_i_2\ : label is "lutpair12";
  attribute HLUTNM of \avg_left0_carry__2_i_3\ : label is "lutpair11";
  attribute HLUTNM of \avg_left0_carry__2_i_4\ : label is "lutpair10";
  attribute HLUTNM of \avg_left0_carry__2_i_5\ : label is "lutpair14";
  attribute HLUTNM of \avg_left0_carry__2_i_6\ : label is "lutpair13";
  attribute HLUTNM of \avg_left0_carry__2_i_7\ : label is "lutpair12";
  attribute HLUTNM of \avg_left0_carry__2_i_8\ : label is "lutpair11";
  attribute ADDER_THRESHOLD of \avg_left0_carry__3\ : label is 35;
  attribute HLUTNM of \avg_left0_carry__3_i_2\ : label is "lutpair16";
  attribute HLUTNM of \avg_left0_carry__3_i_3\ : label is "lutpair15";
  attribute HLUTNM of \avg_left0_carry__3_i_4\ : label is "lutpair14";
  attribute HLUTNM of \avg_left0_carry__3_i_7\ : label is "lutpair16";
  attribute HLUTNM of \avg_left0_carry__3_i_8\ : label is "lutpair15";
  attribute ADDER_THRESHOLD of \avg_left0_carry__4\ : label is 35;
  attribute HLUTNM of avg_left0_carry_i_1 : label is "lutpair1";
  attribute HLUTNM of avg_left0_carry_i_2 : label is "lutpair0";
  attribute HLUTNM of avg_left0_carry_i_3 : label is "lutpair34";
  attribute HLUTNM of avg_left0_carry_i_5 : label is "lutpair2";
  attribute HLUTNM of avg_left0_carry_i_6 : label is "lutpair1";
  attribute HLUTNM of avg_left0_carry_i_7 : label is "lutpair0";
  attribute HLUTNM of avg_left0_carry_i_8 : label is "lutpair34";
  attribute ADDER_THRESHOLD of avg_right0_carry : label is 35;
  attribute ADDER_THRESHOLD of \avg_right0_carry__0\ : label is 35;
  attribute HLUTNM of \avg_right0_carry__0_i_1\ : label is "lutpair22";
  attribute HLUTNM of \avg_right0_carry__0_i_2\ : label is "lutpair21";
  attribute HLUTNM of \avg_right0_carry__0_i_3\ : label is "lutpair20";
  attribute HLUTNM of \avg_right0_carry__0_i_4\ : label is "lutpair19";
  attribute HLUTNM of \avg_right0_carry__0_i_5\ : label is "lutpair23";
  attribute HLUTNM of \avg_right0_carry__0_i_6\ : label is "lutpair22";
  attribute HLUTNM of \avg_right0_carry__0_i_7\ : label is "lutpair21";
  attribute HLUTNM of \avg_right0_carry__0_i_8\ : label is "lutpair20";
  attribute ADDER_THRESHOLD of \avg_right0_carry__1\ : label is 35;
  attribute HLUTNM of \avg_right0_carry__1_i_1\ : label is "lutpair26";
  attribute HLUTNM of \avg_right0_carry__1_i_2\ : label is "lutpair25";
  attribute HLUTNM of \avg_right0_carry__1_i_3\ : label is "lutpair24";
  attribute HLUTNM of \avg_right0_carry__1_i_4\ : label is "lutpair23";
  attribute HLUTNM of \avg_right0_carry__1_i_5\ : label is "lutpair27";
  attribute HLUTNM of \avg_right0_carry__1_i_6\ : label is "lutpair26";
  attribute HLUTNM of \avg_right0_carry__1_i_7\ : label is "lutpair25";
  attribute HLUTNM of \avg_right0_carry__1_i_8\ : label is "lutpair24";
  attribute ADDER_THRESHOLD of \avg_right0_carry__2\ : label is 35;
  attribute HLUTNM of \avg_right0_carry__2_i_1\ : label is "lutpair30";
  attribute HLUTNM of \avg_right0_carry__2_i_2\ : label is "lutpair29";
  attribute HLUTNM of \avg_right0_carry__2_i_3\ : label is "lutpair28";
  attribute HLUTNM of \avg_right0_carry__2_i_4\ : label is "lutpair27";
  attribute HLUTNM of \avg_right0_carry__2_i_5\ : label is "lutpair31";
  attribute HLUTNM of \avg_right0_carry__2_i_6\ : label is "lutpair30";
  attribute HLUTNM of \avg_right0_carry__2_i_7\ : label is "lutpair29";
  attribute HLUTNM of \avg_right0_carry__2_i_8\ : label is "lutpair28";
  attribute ADDER_THRESHOLD of \avg_right0_carry__3\ : label is 35;
  attribute HLUTNM of \avg_right0_carry__3_i_2\ : label is "lutpair33";
  attribute HLUTNM of \avg_right0_carry__3_i_3\ : label is "lutpair32";
  attribute HLUTNM of \avg_right0_carry__3_i_4\ : label is "lutpair31";
  attribute HLUTNM of \avg_right0_carry__3_i_7\ : label is "lutpair33";
  attribute HLUTNM of \avg_right0_carry__3_i_8\ : label is "lutpair32";
  attribute ADDER_THRESHOLD of \avg_right0_carry__4\ : label is 35;
  attribute HLUTNM of avg_right0_carry_i_1 : label is "lutpair18";
  attribute HLUTNM of avg_right0_carry_i_2 : label is "lutpair17";
  attribute HLUTNM of avg_right0_carry_i_3 : label is "lutpair35";
  attribute HLUTNM of avg_right0_carry_i_5 : label is "lutpair19";
  attribute HLUTNM of avg_right0_carry_i_6 : label is "lutpair18";
  attribute HLUTNM of avg_right0_carry_i_7 : label is "lutpair17";
  attribute HLUTNM of avg_right0_carry_i_8 : label is "lutpair35";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name : string;
  attribute srl_name of \last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_28 ";
  attribute srl_bus_name of \last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29] ";
  attribute srl_name of \last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_28\ : label is "\U0/last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_28 ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of last_data_left_reg_gate : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__11\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__12\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__13\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__14\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__15\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__16\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__6\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__8\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \last_data_left_reg_gate__9\ : label is "soft_lutpair6";
  attribute srl_bus_name of \last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_58 ";
  attribute srl_bus_name of \last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29] ";
  attribute srl_name of \last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_58\ : label is "\U0/last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_58 ";
  attribute SOFT_HLUTNM of last_data_right_reg_gate : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__10\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__11\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__12\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__13\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__14\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__15\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__16\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__6\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__7\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__8\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \last_data_right_reg_gate__9\ : label is "soft_lutpair15";
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
  attribute XILINX_LEGACY_PRIM of m_axis_tlast_reg_LDC : label is "LDC";
  attribute XILINX_LEGACY_PRIM of m_axis_tvalid_reg_LDC : label is "LDC";
  attribute SOFT_HLUTNM of s_axis_tready_C_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM of s_axis_tready_reg_LDC : label is "LDC";
begin
  m_axis_tlast <= \^m_axis_tlast\;
avg_left0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => avg_left0_carry_n_0,
      CO(2) => avg_left0_carry_n_1,
      CO(1) => avg_left0_carry_n_2,
      CO(0) => avg_left0_carry_n_3,
      CYINIT => '0',
      DI(3) => avg_left0_carry_i_1_n_0,
      DI(2) => avg_left0_carry_i_2_n_0,
      DI(1) => avg_left0_carry_i_3_n_0,
      DI(0) => avg_left0_carry_i_4_n_0,
      O(3) => avg_left0_carry_n_4,
      O(2) => avg_left0_carry_n_5,
      O(1) => avg_left0_carry_n_6,
      O(0) => avg_left0_carry_n_7,
      S(3) => avg_left0_carry_i_5_n_0,
      S(2) => avg_left0_carry_i_6_n_0,
      S(1) => avg_left0_carry_i_7_n_0,
      S(0) => avg_left0_carry_i_8_n_0
    );
\avg_left0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => avg_left0_carry_n_0,
      CO(3) => \avg_left0_carry__0_n_0\,
      CO(2) => \avg_left0_carry__0_n_1\,
      CO(1) => \avg_left0_carry__0_n_2\,
      CO(0) => \avg_left0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \avg_left0_carry__0_i_1_n_0\,
      DI(2) => \avg_left0_carry__0_i_2_n_0\,
      DI(1) => \avg_left0_carry__0_i_3_n_0\,
      DI(0) => \avg_left0_carry__0_i_4_n_0\,
      O(3) => \avg_left0_carry__0_n_4\,
      O(2) => \avg_left0_carry__0_n_5\,
      O(1) => \avg_left0_carry__0_n_6\,
      O(0) => \avg_left0_carry__0_n_7\,
      S(3) => \avg_left0_carry__0_i_5_n_0\,
      S(2) => \avg_left0_carry__0_i_6_n_0\,
      S(1) => \avg_left0_carry__0_i_7_n_0\,
      S(0) => \avg_left0_carry__0_i_8_n_0\
    );
\avg_left0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(6),
      I1 => s_axis_tdata(11),
      I2 => \last_data_left_reg[31]\(11),
      O => \avg_left0_carry__0_i_1_n_0\
    );
\avg_left0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(5),
      I1 => s_axis_tdata(10),
      I2 => \last_data_left_reg[31]\(10),
      O => \avg_left0_carry__0_i_2_n_0\
    );
\avg_left0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(4),
      I1 => s_axis_tdata(9),
      I2 => \last_data_left_reg[31]\(9),
      O => \avg_left0_carry__0_i_3_n_0\
    );
\avg_left0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(3),
      I1 => s_axis_tdata(8),
      I2 => \last_data_left_reg[31]\(8),
      O => \avg_left0_carry__0_i_4_n_0\
    );
\avg_left0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(7),
      I1 => s_axis_tdata(12),
      I2 => \last_data_left_reg[31]\(12),
      I3 => \avg_left0_carry__0_i_1_n_0\,
      O => \avg_left0_carry__0_i_5_n_0\
    );
\avg_left0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(6),
      I1 => s_axis_tdata(11),
      I2 => \last_data_left_reg[31]\(11),
      I3 => \avg_left0_carry__0_i_2_n_0\,
      O => \avg_left0_carry__0_i_6_n_0\
    );
\avg_left0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(5),
      I1 => s_axis_tdata(10),
      I2 => \last_data_left_reg[31]\(10),
      I3 => \avg_left0_carry__0_i_3_n_0\,
      O => \avg_left0_carry__0_i_7_n_0\
    );
\avg_left0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(4),
      I1 => s_axis_tdata(9),
      I2 => \last_data_left_reg[31]\(9),
      I3 => \avg_left0_carry__0_i_4_n_0\,
      O => \avg_left0_carry__0_i_8_n_0\
    );
\avg_left0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \avg_left0_carry__0_n_0\,
      CO(3) => \avg_left0_carry__1_n_0\,
      CO(2) => \avg_left0_carry__1_n_1\,
      CO(1) => \avg_left0_carry__1_n_2\,
      CO(0) => \avg_left0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \avg_left0_carry__1_i_1_n_0\,
      DI(2) => \avg_left0_carry__1_i_2_n_0\,
      DI(1) => \avg_left0_carry__1_i_3_n_0\,
      DI(0) => \avg_left0_carry__1_i_4_n_0\,
      O(3) => \avg_left0_carry__1_n_4\,
      O(2) => \avg_left0_carry__1_n_5\,
      O(1) => \avg_left0_carry__1_n_6\,
      O(0) => \avg_left0_carry__1_n_7\,
      S(3) => \avg_left0_carry__1_i_5_n_0\,
      S(2) => \avg_left0_carry__1_i_6_n_0\,
      S(1) => \avg_left0_carry__1_i_7_n_0\,
      S(0) => \avg_left0_carry__1_i_8_n_0\
    );
\avg_left0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(10),
      I1 => s_axis_tdata(15),
      I2 => \last_data_left_reg[31]\(15),
      O => \avg_left0_carry__1_i_1_n_0\
    );
\avg_left0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(9),
      I1 => s_axis_tdata(14),
      I2 => \last_data_left_reg[31]\(14),
      O => \avg_left0_carry__1_i_2_n_0\
    );
\avg_left0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(8),
      I1 => s_axis_tdata(13),
      I2 => \last_data_left_reg[31]\(13),
      O => \avg_left0_carry__1_i_3_n_0\
    );
\avg_left0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(7),
      I1 => s_axis_tdata(12),
      I2 => \last_data_left_reg[31]\(12),
      O => \avg_left0_carry__1_i_4_n_0\
    );
\avg_left0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(11),
      I1 => s_axis_tdata(16),
      I2 => \last_data_left_reg[31]\(16),
      I3 => \avg_left0_carry__1_i_1_n_0\,
      O => \avg_left0_carry__1_i_5_n_0\
    );
\avg_left0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(10),
      I1 => s_axis_tdata(15),
      I2 => \last_data_left_reg[31]\(15),
      I3 => \avg_left0_carry__1_i_2_n_0\,
      O => \avg_left0_carry__1_i_6_n_0\
    );
\avg_left0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(9),
      I1 => s_axis_tdata(14),
      I2 => \last_data_left_reg[31]\(14),
      I3 => \avg_left0_carry__1_i_3_n_0\,
      O => \avg_left0_carry__1_i_7_n_0\
    );
\avg_left0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(8),
      I1 => s_axis_tdata(13),
      I2 => \last_data_left_reg[31]\(13),
      I3 => \avg_left0_carry__1_i_4_n_0\,
      O => \avg_left0_carry__1_i_8_n_0\
    );
\avg_left0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \avg_left0_carry__1_n_0\,
      CO(3) => \avg_left0_carry__2_n_0\,
      CO(2) => \avg_left0_carry__2_n_1\,
      CO(1) => \avg_left0_carry__2_n_2\,
      CO(0) => \avg_left0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \avg_left0_carry__2_i_1_n_0\,
      DI(2) => \avg_left0_carry__2_i_2_n_0\,
      DI(1) => \avg_left0_carry__2_i_3_n_0\,
      DI(0) => \avg_left0_carry__2_i_4_n_0\,
      O(3) => \avg_left0_carry__2_n_4\,
      O(2) => \avg_left0_carry__2_n_5\,
      O(1) => \avg_left0_carry__2_n_6\,
      O(0) => \avg_left0_carry__2_n_7\,
      S(3) => \avg_left0_carry__2_i_5_n_0\,
      S(2) => \avg_left0_carry__2_i_6_n_0\,
      S(1) => \avg_left0_carry__2_i_7_n_0\,
      S(0) => \avg_left0_carry__2_i_8_n_0\
    );
\avg_left0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(14),
      I1 => s_axis_tdata(19),
      I2 => \last_data_left_reg[31]\(19),
      O => \avg_left0_carry__2_i_1_n_0\
    );
\avg_left0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(13),
      I1 => s_axis_tdata(18),
      I2 => \last_data_left_reg[31]\(18),
      O => \avg_left0_carry__2_i_2_n_0\
    );
\avg_left0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(12),
      I1 => s_axis_tdata(17),
      I2 => \last_data_left_reg[31]\(17),
      O => \avg_left0_carry__2_i_3_n_0\
    );
\avg_left0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(11),
      I1 => s_axis_tdata(16),
      I2 => \last_data_left_reg[31]\(16),
      O => \avg_left0_carry__2_i_4_n_0\
    );
\avg_left0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(15),
      I1 => s_axis_tdata(20),
      I2 => \last_data_left_reg[31]\(20),
      I3 => \avg_left0_carry__2_i_1_n_0\,
      O => \avg_left0_carry__2_i_5_n_0\
    );
\avg_left0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(14),
      I1 => s_axis_tdata(19),
      I2 => \last_data_left_reg[31]\(19),
      I3 => \avg_left0_carry__2_i_2_n_0\,
      O => \avg_left0_carry__2_i_6_n_0\
    );
\avg_left0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(13),
      I1 => s_axis_tdata(18),
      I2 => \last_data_left_reg[31]\(18),
      I3 => \avg_left0_carry__2_i_3_n_0\,
      O => \avg_left0_carry__2_i_7_n_0\
    );
\avg_left0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(12),
      I1 => s_axis_tdata(17),
      I2 => \last_data_left_reg[31]\(17),
      I3 => \avg_left0_carry__2_i_4_n_0\,
      O => \avg_left0_carry__2_i_8_n_0\
    );
\avg_left0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \avg_left0_carry__2_n_0\,
      CO(3) => \avg_left0_carry__3_n_0\,
      CO(2) => \avg_left0_carry__3_n_1\,
      CO(1) => \avg_left0_carry__3_n_2\,
      CO(0) => \avg_left0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \avg_left0_carry__3_i_1_n_0\,
      DI(2) => \avg_left0_carry__3_i_2_n_0\,
      DI(1) => \avg_left0_carry__3_i_3_n_0\,
      DI(0) => \avg_left0_carry__3_i_4_n_0\,
      O(3) => \avg_left0_carry__3_n_4\,
      O(2) => \avg_left0_carry__3_n_5\,
      O(1) => \avg_left0_carry__3_n_6\,
      O(0) => \avg_left0_carry__3_n_7\,
      S(3) => \avg_left0_carry__3_i_5_n_0\,
      S(2) => \avg_left0_carry__3_i_6_n_0\,
      S(1) => \avg_left0_carry__3_i_7_n_0\,
      S(0) => \avg_left0_carry__3_i_8_n_0\
    );
\avg_left0_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => avg_left(18),
      I2 => \last_data_left_reg[31]\(23),
      O => \avg_left0_carry__3_i_1_n_0\
    );
\avg_left0_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(17),
      I1 => s_axis_tdata(22),
      I2 => \last_data_left_reg[31]\(22),
      O => \avg_left0_carry__3_i_2_n_0\
    );
\avg_left0_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(16),
      I1 => s_axis_tdata(21),
      I2 => \last_data_left_reg[31]\(21),
      O => \avg_left0_carry__3_i_3_n_0\
    );
\avg_left0_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(15),
      I1 => s_axis_tdata(20),
      I2 => \last_data_left_reg[31]\(20),
      O => \avg_left0_carry__3_i_4_n_0\
    );
\avg_left0_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => \last_data_left_reg[31]\(23),
      I1 => avg_left(18),
      I2 => s_axis_tdata(23),
      I3 => avg_left(19),
      O => \avg_left0_carry__3_i_5_n_0\
    );
\avg_left0_carry__3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \avg_left0_carry__3_i_2_n_0\,
      I1 => s_axis_tdata(23),
      I2 => avg_left(18),
      I3 => \last_data_left_reg[31]\(23),
      O => \avg_left0_carry__3_i_6_n_0\
    );
\avg_left0_carry__3_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(17),
      I1 => s_axis_tdata(22),
      I2 => \last_data_left_reg[31]\(22),
      I3 => \avg_left0_carry__3_i_3_n_0\,
      O => \avg_left0_carry__3_i_7_n_0\
    );
\avg_left0_carry__3_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(16),
      I1 => s_axis_tdata(21),
      I2 => \last_data_left_reg[31]\(21),
      I3 => \avg_left0_carry__3_i_4_n_0\,
      O => \avg_left0_carry__3_i_8_n_0\
    );
\avg_left0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \avg_left0_carry__3_n_0\,
      CO(3) => \NLW_avg_left0_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \avg_left0_carry__4_n_1\,
      CO(1) => \avg_left0_carry__4_n_2\,
      CO(0) => \avg_left0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => avg_left(21 downto 19),
      O(3) => \avg_left0_carry__4_n_4\,
      O(2) => \avg_left0_carry__4_n_5\,
      O(1) => \avg_left0_carry__4_n_6\,
      O(0) => \avg_left0_carry__4_n_7\,
      S(3) => \avg_left0_carry__4_i_1_n_0\,
      S(2) => \avg_left0_carry__4_i_2_n_0\,
      S(1) => \avg_left0_carry__4_i_3_n_0\,
      S(0) => \avg_left0_carry__4_i_4_n_0\
    );
\avg_left0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_left(22),
      I1 => avg_left(23),
      O => \avg_left0_carry__4_i_1_n_0\
    );
\avg_left0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_left(21),
      I1 => avg_left(22),
      O => \avg_left0_carry__4_i_2_n_0\
    );
\avg_left0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_left(20),
      I1 => avg_left(21),
      O => \avg_left0_carry__4_i_3_n_0\
    );
\avg_left0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_left(19),
      I1 => avg_left(20),
      O => \avg_left0_carry__4_i_4_n_0\
    );
avg_left0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(2),
      I1 => s_axis_tdata(7),
      I2 => \last_data_left_reg[31]\(7),
      O => avg_left0_carry_i_1_n_0
    );
avg_left0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_left(1),
      I1 => s_axis_tdata(6),
      I2 => \last_data_left_reg[31]\(6),
      O => avg_left0_carry_i_2_n_0
    );
avg_left0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => avg_left(0),
      O => avg_left0_carry_i_3_n_0
    );
avg_left0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_left(0),
      I1 => s_axis_tdata(5),
      O => avg_left0_carry_i_4_n_0
    );
avg_left0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(3),
      I1 => s_axis_tdata(8),
      I2 => \last_data_left_reg[31]\(8),
      I3 => avg_left0_carry_i_1_n_0,
      O => avg_left0_carry_i_5_n_0
    );
avg_left0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(2),
      I1 => s_axis_tdata(7),
      I2 => \last_data_left_reg[31]\(7),
      I3 => avg_left0_carry_i_2_n_0,
      O => avg_left0_carry_i_6_n_0
    );
avg_left0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_left(1),
      I1 => s_axis_tdata(6),
      I2 => \last_data_left_reg[31]\(6),
      I3 => avg_left0_carry_i_3_n_0,
      O => avg_left0_carry_i_7_n_0
    );
avg_left0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => avg_left(0),
      I2 => \last_data_left_reg[31]\(5),
      O => avg_left0_carry_i_8_n_0
    );
\avg_left[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => is_left_data_ready_reg_n_0,
      I1 => s_axis_tlast,
      I2 => s_axis_tvalid,
      I3 => filter_enable,
      I4 => aresetn,
      O => avg_left0
    );
\avg_left_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => avg_left0_carry_n_7,
      Q => avg_left(0),
      R => '0'
    );
\avg_left_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__1_n_5\,
      Q => avg_left(10),
      R => '0'
    );
\avg_left_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__1_n_4\,
      Q => avg_left(11),
      R => '0'
    );
\avg_left_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__2_n_7\,
      Q => avg_left(12),
      R => '0'
    );
\avg_left_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__2_n_6\,
      Q => avg_left(13),
      R => '0'
    );
\avg_left_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__2_n_5\,
      Q => avg_left(14),
      R => '0'
    );
\avg_left_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__2_n_4\,
      Q => avg_left(15),
      R => '0'
    );
\avg_left_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__3_n_7\,
      Q => avg_left(16),
      R => '0'
    );
\avg_left_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__3_n_6\,
      Q => avg_left(17),
      R => '0'
    );
\avg_left_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__3_n_5\,
      Q => avg_left(18),
      R => '0'
    );
\avg_left_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__3_n_4\,
      Q => avg_left(19),
      R => '0'
    );
\avg_left_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => avg_left0_carry_n_6,
      Q => avg_left(1),
      R => '0'
    );
\avg_left_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__4_n_7\,
      Q => avg_left(20),
      R => '0'
    );
\avg_left_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__4_n_6\,
      Q => avg_left(21),
      R => '0'
    );
\avg_left_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__4_n_5\,
      Q => avg_left(22),
      R => '0'
    );
\avg_left_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__4_n_4\,
      Q => avg_left(23),
      R => '0'
    );
\avg_left_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => avg_left0_carry_n_5,
      Q => avg_left(2),
      R => '0'
    );
\avg_left_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => avg_left0_carry_n_4,
      Q => avg_left(3),
      R => '0'
    );
\avg_left_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__0_n_7\,
      Q => avg_left(4),
      R => '0'
    );
\avg_left_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__0_n_6\,
      Q => avg_left(5),
      R => '0'
    );
\avg_left_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__0_n_5\,
      Q => avg_left(6),
      R => '0'
    );
\avg_left_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__0_n_4\,
      Q => avg_left(7),
      R => '0'
    );
\avg_left_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__1_n_7\,
      Q => avg_left(8),
      R => '0'
    );
\avg_left_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \avg_left0_carry__1_n_6\,
      Q => avg_left(9),
      R => '0'
    );
avg_right0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => avg_right0_carry_n_0,
      CO(2) => avg_right0_carry_n_1,
      CO(1) => avg_right0_carry_n_2,
      CO(0) => avg_right0_carry_n_3,
      CYINIT => '0',
      DI(3) => avg_right0_carry_i_1_n_0,
      DI(2) => avg_right0_carry_i_2_n_0,
      DI(1) => avg_right0_carry_i_3_n_0,
      DI(0) => avg_right0_carry_i_4_n_0,
      O(3) => avg_right0_carry_n_4,
      O(2) => avg_right0_carry_n_5,
      O(1) => avg_right0_carry_n_6,
      O(0) => avg_right0_carry_n_7,
      S(3) => avg_right0_carry_i_5_n_0,
      S(2) => avg_right0_carry_i_6_n_0,
      S(1) => avg_right0_carry_i_7_n_0,
      S(0) => avg_right0_carry_i_8_n_0
    );
\avg_right0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => avg_right0_carry_n_0,
      CO(3) => \avg_right0_carry__0_n_0\,
      CO(2) => \avg_right0_carry__0_n_1\,
      CO(1) => \avg_right0_carry__0_n_2\,
      CO(0) => \avg_right0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \avg_right0_carry__0_i_1_n_0\,
      DI(2) => \avg_right0_carry__0_i_2_n_0\,
      DI(1) => \avg_right0_carry__0_i_3_n_0\,
      DI(0) => \avg_right0_carry__0_i_4_n_0\,
      O(3) => \avg_right0_carry__0_n_4\,
      O(2) => \avg_right0_carry__0_n_5\,
      O(1) => \avg_right0_carry__0_n_6\,
      O(0) => \avg_right0_carry__0_n_7\,
      S(3) => \avg_right0_carry__0_i_5_n_0\,
      S(2) => \avg_right0_carry__0_i_6_n_0\,
      S(1) => \avg_right0_carry__0_i_7_n_0\,
      S(0) => \avg_right0_carry__0_i_8_n_0\
    );
\avg_right0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(6),
      I1 => s_axis_tdata(11),
      I2 => \last_data_right_reg[31]\(11),
      O => \avg_right0_carry__0_i_1_n_0\
    );
\avg_right0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(5),
      I1 => s_axis_tdata(10),
      I2 => \last_data_right_reg[31]\(10),
      O => \avg_right0_carry__0_i_2_n_0\
    );
\avg_right0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(4),
      I1 => s_axis_tdata(9),
      I2 => \last_data_right_reg[31]\(9),
      O => \avg_right0_carry__0_i_3_n_0\
    );
\avg_right0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(3),
      I1 => s_axis_tdata(8),
      I2 => \last_data_right_reg[31]\(8),
      O => \avg_right0_carry__0_i_4_n_0\
    );
\avg_right0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(7),
      I1 => s_axis_tdata(12),
      I2 => \last_data_right_reg[31]\(12),
      I3 => \avg_right0_carry__0_i_1_n_0\,
      O => \avg_right0_carry__0_i_5_n_0\
    );
\avg_right0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(6),
      I1 => s_axis_tdata(11),
      I2 => \last_data_right_reg[31]\(11),
      I3 => \avg_right0_carry__0_i_2_n_0\,
      O => \avg_right0_carry__0_i_6_n_0\
    );
\avg_right0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(5),
      I1 => s_axis_tdata(10),
      I2 => \last_data_right_reg[31]\(10),
      I3 => \avg_right0_carry__0_i_3_n_0\,
      O => \avg_right0_carry__0_i_7_n_0\
    );
\avg_right0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(4),
      I1 => s_axis_tdata(9),
      I2 => \last_data_right_reg[31]\(9),
      I3 => \avg_right0_carry__0_i_4_n_0\,
      O => \avg_right0_carry__0_i_8_n_0\
    );
\avg_right0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \avg_right0_carry__0_n_0\,
      CO(3) => \avg_right0_carry__1_n_0\,
      CO(2) => \avg_right0_carry__1_n_1\,
      CO(1) => \avg_right0_carry__1_n_2\,
      CO(0) => \avg_right0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \avg_right0_carry__1_i_1_n_0\,
      DI(2) => \avg_right0_carry__1_i_2_n_0\,
      DI(1) => \avg_right0_carry__1_i_3_n_0\,
      DI(0) => \avg_right0_carry__1_i_4_n_0\,
      O(3) => \avg_right0_carry__1_n_4\,
      O(2) => \avg_right0_carry__1_n_5\,
      O(1) => \avg_right0_carry__1_n_6\,
      O(0) => \avg_right0_carry__1_n_7\,
      S(3) => \avg_right0_carry__1_i_5_n_0\,
      S(2) => \avg_right0_carry__1_i_6_n_0\,
      S(1) => \avg_right0_carry__1_i_7_n_0\,
      S(0) => \avg_right0_carry__1_i_8_n_0\
    );
\avg_right0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(10),
      I1 => s_axis_tdata(15),
      I2 => \last_data_right_reg[31]\(15),
      O => \avg_right0_carry__1_i_1_n_0\
    );
\avg_right0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(9),
      I1 => s_axis_tdata(14),
      I2 => \last_data_right_reg[31]\(14),
      O => \avg_right0_carry__1_i_2_n_0\
    );
\avg_right0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(8),
      I1 => s_axis_tdata(13),
      I2 => \last_data_right_reg[31]\(13),
      O => \avg_right0_carry__1_i_3_n_0\
    );
\avg_right0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(7),
      I1 => s_axis_tdata(12),
      I2 => \last_data_right_reg[31]\(12),
      O => \avg_right0_carry__1_i_4_n_0\
    );
\avg_right0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(11),
      I1 => s_axis_tdata(16),
      I2 => \last_data_right_reg[31]\(16),
      I3 => \avg_right0_carry__1_i_1_n_0\,
      O => \avg_right0_carry__1_i_5_n_0\
    );
\avg_right0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(10),
      I1 => s_axis_tdata(15),
      I2 => \last_data_right_reg[31]\(15),
      I3 => \avg_right0_carry__1_i_2_n_0\,
      O => \avg_right0_carry__1_i_6_n_0\
    );
\avg_right0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(9),
      I1 => s_axis_tdata(14),
      I2 => \last_data_right_reg[31]\(14),
      I3 => \avg_right0_carry__1_i_3_n_0\,
      O => \avg_right0_carry__1_i_7_n_0\
    );
\avg_right0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(8),
      I1 => s_axis_tdata(13),
      I2 => \last_data_right_reg[31]\(13),
      I3 => \avg_right0_carry__1_i_4_n_0\,
      O => \avg_right0_carry__1_i_8_n_0\
    );
\avg_right0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \avg_right0_carry__1_n_0\,
      CO(3) => \avg_right0_carry__2_n_0\,
      CO(2) => \avg_right0_carry__2_n_1\,
      CO(1) => \avg_right0_carry__2_n_2\,
      CO(0) => \avg_right0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \avg_right0_carry__2_i_1_n_0\,
      DI(2) => \avg_right0_carry__2_i_2_n_0\,
      DI(1) => \avg_right0_carry__2_i_3_n_0\,
      DI(0) => \avg_right0_carry__2_i_4_n_0\,
      O(3) => \avg_right0_carry__2_n_4\,
      O(2) => \avg_right0_carry__2_n_5\,
      O(1) => \avg_right0_carry__2_n_6\,
      O(0) => \avg_right0_carry__2_n_7\,
      S(3) => \avg_right0_carry__2_i_5_n_0\,
      S(2) => \avg_right0_carry__2_i_6_n_0\,
      S(1) => \avg_right0_carry__2_i_7_n_0\,
      S(0) => \avg_right0_carry__2_i_8_n_0\
    );
\avg_right0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(14),
      I1 => s_axis_tdata(19),
      I2 => \last_data_right_reg[31]\(19),
      O => \avg_right0_carry__2_i_1_n_0\
    );
\avg_right0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(13),
      I1 => s_axis_tdata(18),
      I2 => \last_data_right_reg[31]\(18),
      O => \avg_right0_carry__2_i_2_n_0\
    );
\avg_right0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(12),
      I1 => s_axis_tdata(17),
      I2 => \last_data_right_reg[31]\(17),
      O => \avg_right0_carry__2_i_3_n_0\
    );
\avg_right0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(11),
      I1 => s_axis_tdata(16),
      I2 => \last_data_right_reg[31]\(16),
      O => \avg_right0_carry__2_i_4_n_0\
    );
\avg_right0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(15),
      I1 => s_axis_tdata(20),
      I2 => \last_data_right_reg[31]\(20),
      I3 => \avg_right0_carry__2_i_1_n_0\,
      O => \avg_right0_carry__2_i_5_n_0\
    );
\avg_right0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(14),
      I1 => s_axis_tdata(19),
      I2 => \last_data_right_reg[31]\(19),
      I3 => \avg_right0_carry__2_i_2_n_0\,
      O => \avg_right0_carry__2_i_6_n_0\
    );
\avg_right0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(13),
      I1 => s_axis_tdata(18),
      I2 => \last_data_right_reg[31]\(18),
      I3 => \avg_right0_carry__2_i_3_n_0\,
      O => \avg_right0_carry__2_i_7_n_0\
    );
\avg_right0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(12),
      I1 => s_axis_tdata(17),
      I2 => \last_data_right_reg[31]\(17),
      I3 => \avg_right0_carry__2_i_4_n_0\,
      O => \avg_right0_carry__2_i_8_n_0\
    );
\avg_right0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \avg_right0_carry__2_n_0\,
      CO(3) => \avg_right0_carry__3_n_0\,
      CO(2) => \avg_right0_carry__3_n_1\,
      CO(1) => \avg_right0_carry__3_n_2\,
      CO(0) => \avg_right0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \avg_right0_carry__3_i_1_n_0\,
      DI(2) => \avg_right0_carry__3_i_2_n_0\,
      DI(1) => \avg_right0_carry__3_i_3_n_0\,
      DI(0) => \avg_right0_carry__3_i_4_n_0\,
      O(3) => \avg_right0_carry__3_n_4\,
      O(2) => \avg_right0_carry__3_n_5\,
      O(1) => \avg_right0_carry__3_n_6\,
      O(0) => \avg_right0_carry__3_n_7\,
      S(3) => \avg_right0_carry__3_i_5_n_0\,
      S(2) => \avg_right0_carry__3_i_6_n_0\,
      S(1) => \avg_right0_carry__3_i_7_n_0\,
      S(0) => \avg_right0_carry__3_i_8_n_0\
    );
\avg_right0_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => avg_right(18),
      I2 => \last_data_right_reg[31]\(23),
      O => \avg_right0_carry__3_i_1_n_0\
    );
\avg_right0_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(17),
      I1 => s_axis_tdata(22),
      I2 => \last_data_right_reg[31]\(22),
      O => \avg_right0_carry__3_i_2_n_0\
    );
\avg_right0_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(16),
      I1 => s_axis_tdata(21),
      I2 => \last_data_right_reg[31]\(21),
      O => \avg_right0_carry__3_i_3_n_0\
    );
\avg_right0_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(15),
      I1 => s_axis_tdata(20),
      I2 => \last_data_right_reg[31]\(20),
      O => \avg_right0_carry__3_i_4_n_0\
    );
\avg_right0_carry__3_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8E71"
    )
        port map (
      I0 => \last_data_right_reg[31]\(23),
      I1 => avg_right(18),
      I2 => s_axis_tdata(23),
      I3 => avg_right(19),
      O => \avg_right0_carry__3_i_5_n_0\
    );
\avg_right0_carry__3_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \avg_right0_carry__3_i_2_n_0\,
      I1 => s_axis_tdata(23),
      I2 => avg_right(18),
      I3 => \last_data_right_reg[31]\(23),
      O => \avg_right0_carry__3_i_6_n_0\
    );
\avg_right0_carry__3_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(17),
      I1 => s_axis_tdata(22),
      I2 => \last_data_right_reg[31]\(22),
      I3 => \avg_right0_carry__3_i_3_n_0\,
      O => \avg_right0_carry__3_i_7_n_0\
    );
\avg_right0_carry__3_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(16),
      I1 => s_axis_tdata(21),
      I2 => \last_data_right_reg[31]\(21),
      I3 => \avg_right0_carry__3_i_4_n_0\,
      O => \avg_right0_carry__3_i_8_n_0\
    );
\avg_right0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \avg_right0_carry__3_n_0\,
      CO(3) => \NLW_avg_right0_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \avg_right0_carry__4_n_1\,
      CO(1) => \avg_right0_carry__4_n_2\,
      CO(0) => \avg_right0_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => avg_right(21 downto 19),
      O(3) => \avg_right0_carry__4_n_4\,
      O(2) => \avg_right0_carry__4_n_5\,
      O(1) => \avg_right0_carry__4_n_6\,
      O(0) => \avg_right0_carry__4_n_7\,
      S(3) => \avg_right0_carry__4_i_1_n_0\,
      S(2) => \avg_right0_carry__4_i_2_n_0\,
      S(1) => \avg_right0_carry__4_i_3_n_0\,
      S(0) => \avg_right0_carry__4_i_4_n_0\
    );
\avg_right0_carry__4_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_right(22),
      I1 => avg_right(23),
      O => \avg_right0_carry__4_i_1_n_0\
    );
\avg_right0_carry__4_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_right(21),
      I1 => avg_right(22),
      O => \avg_right0_carry__4_i_2_n_0\
    );
\avg_right0_carry__4_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_right(20),
      I1 => avg_right(21),
      O => \avg_right0_carry__4_i_3_n_0\
    );
\avg_right0_carry__4_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_right(19),
      I1 => avg_right(20),
      O => \avg_right0_carry__4_i_4_n_0\
    );
avg_right0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(2),
      I1 => s_axis_tdata(7),
      I2 => \last_data_right_reg[31]\(7),
      O => avg_right0_carry_i_1_n_0
    );
avg_right0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8E"
    )
        port map (
      I0 => avg_right(1),
      I1 => s_axis_tdata(6),
      I2 => \last_data_right_reg[31]\(6),
      O => avg_right0_carry_i_2_n_0
    );
avg_right0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => avg_right(0),
      O => avg_right0_carry_i_3_n_0
    );
avg_right0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => avg_right(0),
      I1 => s_axis_tdata(5),
      O => avg_right0_carry_i_4_n_0
    );
avg_right0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(3),
      I1 => s_axis_tdata(8),
      I2 => \last_data_right_reg[31]\(8),
      I3 => avg_right0_carry_i_1_n_0,
      O => avg_right0_carry_i_5_n_0
    );
avg_right0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(2),
      I1 => s_axis_tdata(7),
      I2 => \last_data_right_reg[31]\(7),
      I3 => avg_right0_carry_i_2_n_0,
      O => avg_right0_carry_i_6_n_0
    );
avg_right0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => avg_right(1),
      I1 => s_axis_tdata(6),
      I2 => \last_data_right_reg[31]\(6),
      I3 => avg_right0_carry_i_3_n_0,
      O => avg_right0_carry_i_7_n_0
    );
avg_right0_carry_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => s_axis_tdata(5),
      I1 => avg_right(0),
      I2 => \last_data_right_reg[31]\(5),
      O => avg_right0_carry_i_8_n_0
    );
\avg_right[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => is_right_data_ready_reg_n_0,
      I1 => s_axis_tlast,
      I2 => s_axis_tvalid,
      I3 => filter_enable,
      I4 => aresetn,
      O => avg_right0
    );
\avg_right_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => avg_right0_carry_n_7,
      Q => avg_right(0),
      R => '0'
    );
\avg_right_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__1_n_5\,
      Q => avg_right(10),
      R => '0'
    );
\avg_right_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__1_n_4\,
      Q => avg_right(11),
      R => '0'
    );
\avg_right_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__2_n_7\,
      Q => avg_right(12),
      R => '0'
    );
\avg_right_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__2_n_6\,
      Q => avg_right(13),
      R => '0'
    );
\avg_right_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__2_n_5\,
      Q => avg_right(14),
      R => '0'
    );
\avg_right_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__2_n_4\,
      Q => avg_right(15),
      R => '0'
    );
\avg_right_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__3_n_7\,
      Q => avg_right(16),
      R => '0'
    );
\avg_right_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__3_n_6\,
      Q => avg_right(17),
      R => '0'
    );
\avg_right_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__3_n_5\,
      Q => avg_right(18),
      R => '0'
    );
\avg_right_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__3_n_4\,
      Q => avg_right(19),
      R => '0'
    );
\avg_right_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => avg_right0_carry_n_6,
      Q => avg_right(1),
      R => '0'
    );
\avg_right_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__4_n_7\,
      Q => avg_right(20),
      R => '0'
    );
\avg_right_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__4_n_6\,
      Q => avg_right(21),
      R => '0'
    );
\avg_right_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__4_n_5\,
      Q => avg_right(22),
      R => '0'
    );
\avg_right_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__4_n_4\,
      Q => avg_right(23),
      R => '0'
    );
\avg_right_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => avg_right0_carry_n_5,
      Q => avg_right(2),
      R => '0'
    );
\avg_right_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => avg_right0_carry_n_4,
      Q => avg_right(3),
      R => '0'
    );
\avg_right_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__0_n_7\,
      Q => avg_right(4),
      R => '0'
    );
\avg_right_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__0_n_6\,
      Q => avg_right(5),
      R => '0'
    );
\avg_right_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__0_n_5\,
      Q => avg_right(6),
      R => '0'
    );
\avg_right_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__0_n_4\,
      Q => avg_right(7),
      R => '0'
    );
\avg_right_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__1_n_7\,
      Q => avg_right(8),
      R => '0'
    );
\avg_right_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_right0,
      D => \avg_right0_carry__1_n_6\,
      Q => avg_right(9),
      R => '0'
    );
is_left_data_ready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FC505C00000000"
    )
        port map (
      I0 => m_axis_tready,
      I1 => s_axis_tvalid,
      I2 => is_left_data_ready_reg_n_0,
      I3 => s_axis_tlast,
      I4 => is_right_data_ready_reg_n_0,
      I5 => filter_enable,
      O => is_left_data_ready_i_1_n_0
    );
is_left_data_ready_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => is_right_data_ready_i_2_n_0,
      D => is_left_data_ready_i_1_n_0,
      Q => is_left_data_ready_reg_n_0
    );
is_right_data_ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C500000"
    )
        port map (
      I0 => m_axis_tready,
      I1 => s_axis_tvalid,
      I2 => is_right_data_ready_reg_n_0,
      I3 => s_axis_tlast,
      I4 => filter_enable,
      O => is_right_data_ready_i_1_n_0
    );
is_right_data_ready_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => is_right_data_ready_i_2_n_0
    );
is_right_data_ready_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => is_right_data_ready_i_2_n_0,
      D => is_right_data_ready_i_1_n_0,
      Q => is_right_data_ready_reg_n_0
    );
last_data_left_c_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => is_left_data_ready_reg_n_0,
      I1 => s_axis_tlast,
      I2 => s_axis_tvalid,
      I3 => filter_enable,
      O => last_data_left_c_i_1_n_0
    );
\last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(10),
      Q => \last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(11),
      Q => \last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(12),
      Q => \last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(13),
      Q => \last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(14),
      Q => \last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(15),
      Q => \last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(16),
      Q => \last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(17),
      Q => \last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(18),
      Q => \last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(19),
      Q => \last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(20),
      Q => \last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(21),
      Q => \last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(22),
      Q => \last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(23),
      Q => \last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(5),
      Q => \last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(6),
      Q => \last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(7),
      Q => \last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(8),
      Q => \last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_left_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(9),
      Q => \last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q31 => \NLW_last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_28_Q31_UNCONNECTED\
    );
\last_data_left_reg[30][10]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][10]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][11]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][11]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][12]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][12]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][13]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][13]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][14]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][14]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][15]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][15]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][16]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][16]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][17]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][17]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][18]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][18]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][19]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][19]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][20]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][20]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][21]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][21]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][22]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][22]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][23]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][23]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][5]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][5]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][6]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][6]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][7]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][7]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][8]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][8]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[30][9]_U0_last_data_left_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      D => \last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_28_n_0\,
      Q => \last_data_left_reg[30][9]_U0_last_data_left_reg_c_29_n_0\,
      R => '0'
    );
\last_data_left_reg[31][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__12_n_0\,
      Q => \last_data_left_reg[31]\(10)
    );
\last_data_left_reg[31][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__11_n_0\,
      Q => \last_data_left_reg[31]\(11)
    );
\last_data_left_reg[31][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__10_n_0\,
      Q => \last_data_left_reg[31]\(12)
    );
\last_data_left_reg[31][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__9_n_0\,
      Q => \last_data_left_reg[31]\(13)
    );
\last_data_left_reg[31][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__8_n_0\,
      Q => \last_data_left_reg[31]\(14)
    );
\last_data_left_reg[31][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__7_n_0\,
      Q => \last_data_left_reg[31]\(15)
    );
\last_data_left_reg[31][16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__6_n_0\,
      Q => \last_data_left_reg[31]\(16)
    );
\last_data_left_reg[31][17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__5_n_0\,
      Q => \last_data_left_reg[31]\(17)
    );
\last_data_left_reg[31][18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__4_n_0\,
      Q => \last_data_left_reg[31]\(18)
    );
\last_data_left_reg[31][19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__3_n_0\,
      Q => \last_data_left_reg[31]\(19)
    );
\last_data_left_reg[31][20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__2_n_0\,
      Q => \last_data_left_reg[31]\(20)
    );
\last_data_left_reg[31][21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__1_n_0\,
      Q => \last_data_left_reg[31]\(21)
    );
\last_data_left_reg[31][22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__0_n_0\,
      Q => \last_data_left_reg[31]\(22)
    );
\last_data_left_reg[31][23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_gate_n_0,
      Q => \last_data_left_reg[31]\(23)
    );
\last_data_left_reg[31][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__17_n_0\,
      Q => \last_data_left_reg[31]\(5)
    );
\last_data_left_reg[31][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__16_n_0\,
      Q => \last_data_left_reg[31]\(6)
    );
\last_data_left_reg[31][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__15_n_0\,
      Q => \last_data_left_reg[31]\(7)
    );
\last_data_left_reg[31][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__14_n_0\,
      Q => \last_data_left_reg[31]\(8)
    );
\last_data_left_reg[31][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_left_reg_gate__13_n_0\,
      Q => \last_data_left_reg[31]\(9)
    );
last_data_left_reg_c: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => '1',
      Q => last_data_left_reg_c_n_0
    );
last_data_left_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_n_0,
      Q => last_data_left_reg_c_0_n_0
    );
last_data_left_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_0_n_0,
      Q => last_data_left_reg_c_1_n_0
    );
last_data_left_reg_c_10: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_9_n_0,
      Q => last_data_left_reg_c_10_n_0
    );
last_data_left_reg_c_11: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_10_n_0,
      Q => last_data_left_reg_c_11_n_0
    );
last_data_left_reg_c_12: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_11_n_0,
      Q => last_data_left_reg_c_12_n_0
    );
last_data_left_reg_c_13: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_12_n_0,
      Q => last_data_left_reg_c_13_n_0
    );
last_data_left_reg_c_14: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_13_n_0,
      Q => last_data_left_reg_c_14_n_0
    );
last_data_left_reg_c_15: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_14_n_0,
      Q => last_data_left_reg_c_15_n_0
    );
last_data_left_reg_c_16: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_15_n_0,
      Q => last_data_left_reg_c_16_n_0
    );
last_data_left_reg_c_17: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_16_n_0,
      Q => last_data_left_reg_c_17_n_0
    );
last_data_left_reg_c_18: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_17_n_0,
      Q => last_data_left_reg_c_18_n_0
    );
last_data_left_reg_c_19: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_18_n_0,
      Q => last_data_left_reg_c_19_n_0
    );
last_data_left_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_1_n_0,
      Q => last_data_left_reg_c_2_n_0
    );
last_data_left_reg_c_20: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_19_n_0,
      Q => last_data_left_reg_c_20_n_0
    );
last_data_left_reg_c_21: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_20_n_0,
      Q => last_data_left_reg_c_21_n_0
    );
last_data_left_reg_c_22: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_21_n_0,
      Q => last_data_left_reg_c_22_n_0
    );
last_data_left_reg_c_23: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_22_n_0,
      Q => last_data_left_reg_c_23_n_0
    );
last_data_left_reg_c_24: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_23_n_0,
      Q => last_data_left_reg_c_24_n_0
    );
last_data_left_reg_c_25: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_24_n_0,
      Q => last_data_left_reg_c_25_n_0
    );
last_data_left_reg_c_26: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_25_n_0,
      Q => last_data_left_reg_c_26_n_0
    );
last_data_left_reg_c_27: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_26_n_0,
      Q => last_data_left_reg_c_27_n_0
    );
last_data_left_reg_c_28: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_27_n_0,
      Q => last_data_left_reg_c_28_n_0
    );
last_data_left_reg_c_29: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_28_n_0,
      Q => last_data_left_reg_c_29_n_0
    );
last_data_left_reg_c_3: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_2_n_0,
      Q => last_data_left_reg_c_3_n_0
    );
last_data_left_reg_c_4: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_3_n_0,
      Q => last_data_left_reg_c_4_n_0
    );
last_data_left_reg_c_5: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_4_n_0,
      Q => last_data_left_reg_c_5_n_0
    );
last_data_left_reg_c_6: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_5_n_0,
      Q => last_data_left_reg_c_6_n_0
    );
last_data_left_reg_c_7: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_6_n_0,
      Q => last_data_left_reg_c_7_n_0
    );
last_data_left_reg_c_8: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_7_n_0,
      Q => last_data_left_reg_c_8_n_0
    );
last_data_left_reg_c_9: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_left_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_left_reg_c_8_n_0,
      Q => last_data_left_reg_c_9_n_0
    );
last_data_left_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][23]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => last_data_left_reg_gate_n_0
    );
\last_data_left_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][22]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__0_n_0\
    );
\last_data_left_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][21]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__1_n_0\
    );
\last_data_left_reg_gate__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][12]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__10_n_0\
    );
\last_data_left_reg_gate__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][11]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__11_n_0\
    );
\last_data_left_reg_gate__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][10]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__12_n_0\
    );
\last_data_left_reg_gate__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][9]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__13_n_0\
    );
\last_data_left_reg_gate__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][8]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__14_n_0\
    );
\last_data_left_reg_gate__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][7]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__15_n_0\
    );
\last_data_left_reg_gate__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][6]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__16_n_0\
    );
\last_data_left_reg_gate__17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][5]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__17_n_0\
    );
\last_data_left_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][20]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__2_n_0\
    );
\last_data_left_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][19]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__3_n_0\
    );
\last_data_left_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][18]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__4_n_0\
    );
\last_data_left_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][17]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__5_n_0\
    );
\last_data_left_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][16]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__6_n_0\
    );
\last_data_left_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][15]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__7_n_0\
    );
\last_data_left_reg_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][14]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__8_n_0\
    );
\last_data_left_reg_gate__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_left_reg[30][13]_U0_last_data_left_reg_c_29_n_0\,
      I1 => last_data_left_reg_c_29_n_0,
      O => \last_data_left_reg_gate__9_n_0\
    );
last_data_right_c_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => is_right_data_ready_reg_n_0,
      I1 => s_axis_tlast,
      I2 => s_axis_tvalid,
      I3 => filter_enable,
      O => last_data_right_c_i_1_n_0
    );
\last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(10),
      Q => \last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(11),
      Q => \last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(12),
      Q => \last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(13),
      Q => \last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(14),
      Q => \last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(15),
      Q => \last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(16),
      Q => \last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(17),
      Q => \last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(18),
      Q => \last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(19),
      Q => \last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(20),
      Q => \last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(21),
      Q => \last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(22),
      Q => \last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(23),
      Q => \last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(5),
      Q => \last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(6),
      Q => \last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(7),
      Q => \last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(8),
      Q => \last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => last_data_right_c_i_1_n_0,
      CLK => aclk,
      D => s_axis_tdata(9),
      Q => \last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q31 => \NLW_last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_58_Q31_UNCONNECTED\
    );
\last_data_right_reg[30][10]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][10]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][11]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][11]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][12]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][12]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][13]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][13]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][14]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][14]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][15]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][15]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][16]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][16]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][17]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][17]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][18]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][18]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][19]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][19]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][20]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][20]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][21]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][21]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][22]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][22]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][23]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][23]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][5]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][5]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][6]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][6]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][7]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][7]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][8]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][8]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[30][9]_U0_last_data_right_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      D => \last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_58_n_0\,
      Q => \last_data_right_reg[30][9]_U0_last_data_right_reg_c_59_n_0\,
      R => '0'
    );
\last_data_right_reg[31][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__12_n_0\,
      Q => \last_data_right_reg[31]\(10)
    );
\last_data_right_reg[31][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__11_n_0\,
      Q => \last_data_right_reg[31]\(11)
    );
\last_data_right_reg[31][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__10_n_0\,
      Q => \last_data_right_reg[31]\(12)
    );
\last_data_right_reg[31][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__9_n_0\,
      Q => \last_data_right_reg[31]\(13)
    );
\last_data_right_reg[31][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__8_n_0\,
      Q => \last_data_right_reg[31]\(14)
    );
\last_data_right_reg[31][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__7_n_0\,
      Q => \last_data_right_reg[31]\(15)
    );
\last_data_right_reg[31][16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__6_n_0\,
      Q => \last_data_right_reg[31]\(16)
    );
\last_data_right_reg[31][17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__5_n_0\,
      Q => \last_data_right_reg[31]\(17)
    );
\last_data_right_reg[31][18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__4_n_0\,
      Q => \last_data_right_reg[31]\(18)
    );
\last_data_right_reg[31][19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__3_n_0\,
      Q => \last_data_right_reg[31]\(19)
    );
\last_data_right_reg[31][20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__2_n_0\,
      Q => \last_data_right_reg[31]\(20)
    );
\last_data_right_reg[31][21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__1_n_0\,
      Q => \last_data_right_reg[31]\(21)
    );
\last_data_right_reg[31][22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__0_n_0\,
      Q => \last_data_right_reg[31]\(22)
    );
\last_data_right_reg[31][23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_gate_n_0,
      Q => \last_data_right_reg[31]\(23)
    );
\last_data_right_reg[31][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__17_n_0\,
      Q => \last_data_right_reg[31]\(5)
    );
\last_data_right_reg[31][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__16_n_0\,
      Q => \last_data_right_reg[31]\(6)
    );
\last_data_right_reg[31][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__15_n_0\,
      Q => \last_data_right_reg[31]\(7)
    );
\last_data_right_reg[31][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__14_n_0\,
      Q => \last_data_right_reg[31]\(8)
    );
\last_data_right_reg[31][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => \last_data_right_reg_gate__13_n_0\,
      Q => \last_data_right_reg[31]\(9)
    );
last_data_right_reg_c: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => '1',
      Q => last_data_right_reg_c_n_0
    );
last_data_right_reg_c_30: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_n_0,
      Q => last_data_right_reg_c_30_n_0
    );
last_data_right_reg_c_31: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_30_n_0,
      Q => last_data_right_reg_c_31_n_0
    );
last_data_right_reg_c_32: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_31_n_0,
      Q => last_data_right_reg_c_32_n_0
    );
last_data_right_reg_c_33: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_32_n_0,
      Q => last_data_right_reg_c_33_n_0
    );
last_data_right_reg_c_34: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_33_n_0,
      Q => last_data_right_reg_c_34_n_0
    );
last_data_right_reg_c_35: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_34_n_0,
      Q => last_data_right_reg_c_35_n_0
    );
last_data_right_reg_c_36: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_35_n_0,
      Q => last_data_right_reg_c_36_n_0
    );
last_data_right_reg_c_37: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_36_n_0,
      Q => last_data_right_reg_c_37_n_0
    );
last_data_right_reg_c_38: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_37_n_0,
      Q => last_data_right_reg_c_38_n_0
    );
last_data_right_reg_c_39: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_38_n_0,
      Q => last_data_right_reg_c_39_n_0
    );
last_data_right_reg_c_40: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_39_n_0,
      Q => last_data_right_reg_c_40_n_0
    );
last_data_right_reg_c_41: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_40_n_0,
      Q => last_data_right_reg_c_41_n_0
    );
last_data_right_reg_c_42: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_41_n_0,
      Q => last_data_right_reg_c_42_n_0
    );
last_data_right_reg_c_43: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_42_n_0,
      Q => last_data_right_reg_c_43_n_0
    );
last_data_right_reg_c_44: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_43_n_0,
      Q => last_data_right_reg_c_44_n_0
    );
last_data_right_reg_c_45: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_44_n_0,
      Q => last_data_right_reg_c_45_n_0
    );
last_data_right_reg_c_46: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_45_n_0,
      Q => last_data_right_reg_c_46_n_0
    );
last_data_right_reg_c_47: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_46_n_0,
      Q => last_data_right_reg_c_47_n_0
    );
last_data_right_reg_c_48: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_47_n_0,
      Q => last_data_right_reg_c_48_n_0
    );
last_data_right_reg_c_49: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_48_n_0,
      Q => last_data_right_reg_c_49_n_0
    );
last_data_right_reg_c_50: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_49_n_0,
      Q => last_data_right_reg_c_50_n_0
    );
last_data_right_reg_c_51: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_50_n_0,
      Q => last_data_right_reg_c_51_n_0
    );
last_data_right_reg_c_52: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_51_n_0,
      Q => last_data_right_reg_c_52_n_0
    );
last_data_right_reg_c_53: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_52_n_0,
      Q => last_data_right_reg_c_53_n_0
    );
last_data_right_reg_c_54: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_53_n_0,
      Q => last_data_right_reg_c_54_n_0
    );
last_data_right_reg_c_55: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_54_n_0,
      Q => last_data_right_reg_c_55_n_0
    );
last_data_right_reg_c_56: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_55_n_0,
      Q => last_data_right_reg_c_56_n_0
    );
last_data_right_reg_c_57: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_56_n_0,
      Q => last_data_right_reg_c_57_n_0
    );
last_data_right_reg_c_58: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_57_n_0,
      Q => last_data_right_reg_c_58_n_0
    );
last_data_right_reg_c_59: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => last_data_right_c_i_1_n_0,
      CLR => is_right_data_ready_i_2_n_0,
      D => last_data_right_reg_c_58_n_0,
      Q => last_data_right_reg_c_59_n_0
    );
last_data_right_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][23]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => last_data_right_reg_gate_n_0
    );
\last_data_right_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][22]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__0_n_0\
    );
\last_data_right_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][21]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__1_n_0\
    );
\last_data_right_reg_gate__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][12]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__10_n_0\
    );
\last_data_right_reg_gate__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][11]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__11_n_0\
    );
\last_data_right_reg_gate__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][10]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__12_n_0\
    );
\last_data_right_reg_gate__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][9]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__13_n_0\
    );
\last_data_right_reg_gate__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][8]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__14_n_0\
    );
\last_data_right_reg_gate__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][7]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__15_n_0\
    );
\last_data_right_reg_gate__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][6]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__16_n_0\
    );
\last_data_right_reg_gate__17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][5]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__17_n_0\
    );
\last_data_right_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][20]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__2_n_0\
    );
\last_data_right_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][19]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__3_n_0\
    );
\last_data_right_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][18]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__4_n_0\
    );
\last_data_right_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][17]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__5_n_0\
    );
\last_data_right_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][16]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__6_n_0\
    );
\last_data_right_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][15]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__7_n_0\
    );
\last_data_right_reg_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][14]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__8_n_0\
    );
\last_data_right_reg_gate__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \last_data_right_reg[30][13]_U0_last_data_right_reg_c_59_n_0\,
      I1 => last_data_right_reg_c_59_n_0,
      O => \last_data_right_reg_gate__9_n_0\
    );
\m_axis_tdata[0]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(0),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[0]_C_n_0\,
      O => \m_axis_tdata[0]_C_i_1_n_0\
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
\m_axis_tdata[0]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(0),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(0),
      I3 => filter_enable,
      I4 => s_axis_tdata(0),
      O => p_3_in(0)
    );
\m_axis_tdata[10]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(10),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[10]_C_n_0\,
      O => \m_axis_tdata[10]_C_i_1_n_0\
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
\m_axis_tdata[10]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(10),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(10),
      I3 => filter_enable,
      I4 => s_axis_tdata(10),
      O => p_3_in(10)
    );
\m_axis_tdata[11]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(11),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[11]_C_n_0\,
      O => \m_axis_tdata[11]_C_i_1_n_0\
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
\m_axis_tdata[11]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(11),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(11),
      I3 => filter_enable,
      I4 => s_axis_tdata(11),
      O => p_3_in(11)
    );
\m_axis_tdata[12]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(12),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[12]_C_n_0\,
      O => \m_axis_tdata[12]_C_i_1_n_0\
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
\m_axis_tdata[12]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(12),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(12),
      I3 => filter_enable,
      I4 => s_axis_tdata(12),
      O => p_3_in(12)
    );
\m_axis_tdata[13]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(13),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[13]_C_n_0\,
      O => \m_axis_tdata[13]_C_i_1_n_0\
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
\m_axis_tdata[13]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(13),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(13),
      I3 => filter_enable,
      I4 => s_axis_tdata(13),
      O => p_3_in(13)
    );
\m_axis_tdata[14]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(14),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[14]_C_n_0\,
      O => \m_axis_tdata[14]_C_i_1_n_0\
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
\m_axis_tdata[14]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(14),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(14),
      I3 => filter_enable,
      I4 => s_axis_tdata(14),
      O => p_3_in(14)
    );
\m_axis_tdata[15]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(15),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[15]_C_n_0\,
      O => \m_axis_tdata[15]_C_i_1_n_0\
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
\m_axis_tdata[15]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(15),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(15),
      I3 => filter_enable,
      I4 => s_axis_tdata(15),
      O => p_3_in(15)
    );
\m_axis_tdata[16]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(16),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[16]_C_n_0\,
      O => \m_axis_tdata[16]_C_i_1_n_0\
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
\m_axis_tdata[16]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(16),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(16),
      I3 => filter_enable,
      I4 => s_axis_tdata(16),
      O => p_3_in(16)
    );
\m_axis_tdata[17]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(17),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[17]_C_n_0\,
      O => \m_axis_tdata[17]_C_i_1_n_0\
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
\m_axis_tdata[17]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(17),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(17),
      I3 => filter_enable,
      I4 => s_axis_tdata(17),
      O => p_3_in(17)
    );
\m_axis_tdata[18]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(18),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[18]_C_n_0\,
      O => \m_axis_tdata[18]_C_i_1_n_0\
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
\m_axis_tdata[18]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(18),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(18),
      I3 => filter_enable,
      I4 => s_axis_tdata(18),
      O => p_3_in(18)
    );
\m_axis_tdata[19]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(19),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[19]_C_n_0\,
      O => \m_axis_tdata[19]_C_i_1_n_0\
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
\m_axis_tdata[19]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(19),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(19),
      I3 => filter_enable,
      I4 => s_axis_tdata(19),
      O => p_3_in(19)
    );
\m_axis_tdata[1]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(1),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[1]_C_n_0\,
      O => \m_axis_tdata[1]_C_i_1_n_0\
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
\m_axis_tdata[1]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(1),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(1),
      I3 => filter_enable,
      I4 => s_axis_tdata(1),
      O => p_3_in(1)
    );
\m_axis_tdata[20]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(20),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[20]_C_n_0\,
      O => \m_axis_tdata[20]_C_i_1_n_0\
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
\m_axis_tdata[20]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(20),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(20),
      I3 => filter_enable,
      I4 => s_axis_tdata(20),
      O => p_3_in(20)
    );
\m_axis_tdata[21]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(21),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[21]_C_n_0\,
      O => \m_axis_tdata[21]_C_i_1_n_0\
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
\m_axis_tdata[21]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(21),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(21),
      I3 => filter_enable,
      I4 => s_axis_tdata(21),
      O => p_3_in(21)
    );
\m_axis_tdata[22]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(22),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[22]_C_n_0\,
      O => \m_axis_tdata[22]_C_i_1_n_0\
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
\m_axis_tdata[22]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(22),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(22),
      I3 => filter_enable,
      I4 => s_axis_tdata(22),
      O => p_3_in(22)
    );
\m_axis_tdata[23]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(23),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[23]_C_n_0\,
      O => \m_axis_tdata[23]_C_i_1_n_0\
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
\m_axis_tdata[23]_P_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => is_left_data_ready_reg_n_0,
      I1 => is_right_data_ready_reg_n_0,
      I2 => filter_enable,
      O => \m_axis_tdata[23]_P_i_1_n_0\
    );
\m_axis_tdata[23]_P_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(23),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(23),
      I3 => filter_enable,
      I4 => s_axis_tdata(23),
      O => p_3_in(23)
    );
\m_axis_tdata[2]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(2),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[2]_C_n_0\,
      O => \m_axis_tdata[2]_C_i_1_n_0\
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
\m_axis_tdata[2]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(2),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(2),
      I3 => filter_enable,
      I4 => s_axis_tdata(2),
      O => p_3_in(2)
    );
\m_axis_tdata[3]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(3),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[3]_C_n_0\,
      O => \m_axis_tdata[3]_C_i_1_n_0\
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
\m_axis_tdata[3]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(3),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(3),
      I3 => filter_enable,
      I4 => s_axis_tdata(3),
      O => p_3_in(3)
    );
\m_axis_tdata[4]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(4),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[4]_C_n_0\,
      O => \m_axis_tdata[4]_C_i_1_n_0\
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
\m_axis_tdata[4]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(4),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(4),
      I3 => filter_enable,
      I4 => s_axis_tdata(4),
      O => p_3_in(4)
    );
\m_axis_tdata[5]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(5),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[5]_C_n_0\,
      O => \m_axis_tdata[5]_C_i_1_n_0\
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
\m_axis_tdata[5]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(5),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(5),
      I3 => filter_enable,
      I4 => s_axis_tdata(5),
      O => p_3_in(5)
    );
\m_axis_tdata[6]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(6),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[6]_C_n_0\,
      O => \m_axis_tdata[6]_C_i_1_n_0\
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
\m_axis_tdata[6]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(6),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(6),
      I3 => filter_enable,
      I4 => s_axis_tdata(6),
      O => p_3_in(6)
    );
\m_axis_tdata[7]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(7),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[7]_C_n_0\,
      O => \m_axis_tdata[7]_C_i_1_n_0\
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
\m_axis_tdata[7]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(7),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(7),
      I3 => filter_enable,
      I4 => s_axis_tdata(7),
      O => p_3_in(7)
    );
\m_axis_tdata[8]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(8),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[8]_C_n_0\,
      O => \m_axis_tdata[8]_C_i_1_n_0\
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
\m_axis_tdata[8]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(8),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(8),
      I3 => filter_enable,
      I4 => s_axis_tdata(8),
      O => p_3_in(8)
    );
\m_axis_tdata[9]_C_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAA8AA"
    )
        port map (
      I0 => p_3_in(9),
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \m_axis_tdata_reg[9]_C_n_0\,
      O => \m_axis_tdata[9]_C_i_1_n_0\
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
\m_axis_tdata[9]_P_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => avg_right(9),
      I1 => is_right_data_ready_reg_n_0,
      I2 => avg_left(9),
      I3 => filter_enable,
      I4 => s_axis_tdata(9),
      O => p_3_in(9)
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(0),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(10),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(11),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(12),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(13),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(14),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(15),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(16),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(17),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(18),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(19),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(1),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(20),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(21),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(22),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(23),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(2),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(3),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(4),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(5),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(6),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(7),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(8),
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
      CE => \m_axis_tdata[23]_P_i_1_n_0\,
      D => p_3_in(9),
      PRE => \m_axis_tdata_reg[9]_LDC_i_1_n_0\,
      Q => \m_axis_tdata_reg[9]_P_n_0\
    );
m_axis_tlast_C_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3AAF0AA"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => is_left_data_ready_reg_n_0,
      I2 => is_right_data_ready_reg_n_0,
      I3 => filter_enable,
      I4 => \^m_axis_tlast\,
      O => m_axis_tlast_C_i_1_n_0
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_tlast_reg_P_n_0,
      I1 => m_axis_tlast_reg_LDC_n_0,
      I2 => m_axis_tlast_reg_C_n_0,
      O => \^m_axis_tlast\
    );
m_axis_tlast_reg_C: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => m_axis_tlast_reg_LDC_i_2_n_0,
      D => m_axis_tlast_C_i_1_n_0,
      Q => m_axis_tlast_reg_C_n_0
    );
m_axis_tlast_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => m_axis_tlast_reg_LDC_i_2_n_0,
      D => '1',
      G => m_axis_tlast_reg_LDC_i_1_n_0,
      GE => '1',
      Q => m_axis_tlast_reg_LDC_n_0
    );
m_axis_tlast_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => aresetn,
      O => m_axis_tlast_reg_LDC_i_1_n_0
    );
m_axis_tlast_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tlast,
      O => m_axis_tlast_reg_LDC_i_2_n_0
    );
m_axis_tlast_reg_P: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tlast_C_i_1_n_0,
      PRE => m_axis_tlast_reg_LDC_i_1_n_0,
      Q => m_axis_tlast_reg_P_n_0
    );
m_axis_tvalid_C_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFE0"
    )
        port map (
      I0 => is_right_data_ready_reg_n_0,
      I1 => is_left_data_ready_reg_n_0,
      I2 => filter_enable,
      I3 => s_axis_tvalid,
      O => m_axis_tvalid_C_i_1_n_0
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axis_tvalid_reg_P_n_0,
      I1 => m_axis_tvalid_reg_LDC_n_0,
      I2 => m_axis_tvalid_reg_C_n_0,
      O => m_axis_tvalid
    );
m_axis_tvalid_reg_C: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => m_axis_tvalid_reg_LDC_i_2_n_0,
      D => m_axis_tvalid_C_i_1_n_0,
      Q => m_axis_tvalid_reg_C_n_0
    );
m_axis_tvalid_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => m_axis_tvalid_reg_LDC_i_2_n_0,
      D => '1',
      G => m_axis_tvalid_reg_LDC_i_1_n_0,
      GE => '1',
      Q => m_axis_tvalid_reg_LDC_n_0
    );
m_axis_tvalid_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => aresetn,
      O => m_axis_tvalid_reg_LDC_i_1_n_0
    );
m_axis_tvalid_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      I1 => s_axis_tvalid,
      O => m_axis_tvalid_reg_LDC_i_2_n_0
    );
m_axis_tvalid_reg_P: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => m_axis_tvalid_C_i_1_n_0,
      PRE => m_axis_tvalid_reg_LDC_i_1_n_0,
      Q => m_axis_tvalid_reg_P_n_0
    );
s_axis_tready_C_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => s_axis_tready_reg_P_n_0,
      I1 => s_axis_tready_reg_LDC_n_0,
      I2 => s_axis_tready_reg_C_n_0,
      I3 => filter_enable,
      I4 => m_axis_tready,
      O => s_axis_tready_C_i_1_n_0
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axis_tready_reg_P_n_0,
      I1 => s_axis_tready_reg_LDC_n_0,
      I2 => s_axis_tready_reg_C_n_0,
      O => s_axis_tready
    );
s_axis_tready_reg_C: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => s_axis_tready_reg_LDC_i_2_n_0,
      D => s_axis_tready_C_i_1_n_0,
      Q => s_axis_tready_reg_C_n_0
    );
s_axis_tready_reg_LDC: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => s_axis_tready_reg_LDC_i_2_n_0,
      D => '1',
      G => s_axis_tready_reg_LDC_i_1_n_0,
      GE => '1',
      Q => s_axis_tready_reg_LDC_n_0
    );
s_axis_tready_reg_LDC_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axis_tready,
      I1 => aresetn,
      O => s_axis_tready_reg_LDC_i_1_n_0
    );
s_axis_tready_reg_LDC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      I1 => m_axis_tready,
      O => s_axis_tready_reg_LDC_i_2_n_0
    );
s_axis_tready_reg_P: unisim.vcomponents.FDPE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tready_C_i_1_n_0,
      PRE => s_axis_tready_reg_LDC_i_1_n_0,
      Q => s_axis_tready_reg_P_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_dual_moving_average_0_0 is
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
    filter_enable : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2CBalancer_dual_moving_average_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_dual_moving_average_0_0 : entity is "I2CBalancer_dual_moving_average_0_0,dual_moving_average,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_dual_moving_average_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_dual_moving_average_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_dual_moving_average_0_0 : entity is "dual_moving_average,Vivado 2020.2";
end I2CBalancer_dual_moving_average_0_0;

architecture STRUCTURE of I2CBalancer_dual_moving_average_0_0 is
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
U0: entity work.I2CBalancer_dual_moving_average_0_0_dual_moving_average
     port map (
      aclk => aclk,
      aresetn => aresetn,
      filter_enable => filter_enable,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
