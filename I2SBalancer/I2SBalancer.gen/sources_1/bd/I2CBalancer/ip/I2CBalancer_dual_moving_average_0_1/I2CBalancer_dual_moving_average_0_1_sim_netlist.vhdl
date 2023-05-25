-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri May 26 01:07:35 2023
-- Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_dual_moving_average_0_1/I2CBalancer_dual_moving_average_0_1_sim_netlist.vhdl
-- Design      : I2CBalancer_dual_moving_average_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_dual_moving_average_0_1_dual_moving_average is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aresetn : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    filter_enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2CBalancer_dual_moving_average_0_1_dual_moving_average : entity is "dual_moving_average";
end I2CBalancer_dual_moving_average_0_1_dual_moving_average;

architecture STRUCTURE of I2CBalancer_dual_moving_average_0_1_dual_moving_average is
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \__69_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \__69_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \__69_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \__69_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \__69_carry__0_n_0\ : STD_LOGIC;
  signal \__69_carry__0_n_1\ : STD_LOGIC;
  signal \__69_carry__0_n_2\ : STD_LOGIC;
  signal \__69_carry__0_n_3\ : STD_LOGIC;
  signal \__69_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \__69_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \__69_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \__69_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \__69_carry__1_n_0\ : STD_LOGIC;
  signal \__69_carry__1_n_1\ : STD_LOGIC;
  signal \__69_carry__1_n_2\ : STD_LOGIC;
  signal \__69_carry__1_n_3\ : STD_LOGIC;
  signal \__69_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \__69_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \__69_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \__69_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \__69_carry__2_n_0\ : STD_LOGIC;
  signal \__69_carry__2_n_1\ : STD_LOGIC;
  signal \__69_carry__2_n_2\ : STD_LOGIC;
  signal \__69_carry__2_n_3\ : STD_LOGIC;
  signal \__69_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \__69_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \__69_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \__69_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \__69_carry__3_n_0\ : STD_LOGIC;
  signal \__69_carry__3_n_1\ : STD_LOGIC;
  signal \__69_carry__3_n_2\ : STD_LOGIC;
  signal \__69_carry__3_n_3\ : STD_LOGIC;
  signal \__69_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \__69_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \__69_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \__69_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \__69_carry__4_n_1\ : STD_LOGIC;
  signal \__69_carry__4_n_2\ : STD_LOGIC;
  signal \__69_carry__4_n_3\ : STD_LOGIC;
  signal \__69_carry_i_1_n_0\ : STD_LOGIC;
  signal \__69_carry_i_2_n_0\ : STD_LOGIC;
  signal \__69_carry_i_3_n_0\ : STD_LOGIC;
  signal \__69_carry_i_4_n_0\ : STD_LOGIC;
  signal \__69_carry_i_5_n_0\ : STD_LOGIC;
  signal \__69_carry_n_0\ : STD_LOGIC;
  signal \__69_carry_n_1\ : STD_LOGIC;
  signal \__69_carry_n_2\ : STD_LOGIC;
  signal \__69_carry_n_3\ : STD_LOGIC;
  signal \_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \_carry__0_n_0\ : STD_LOGIC;
  signal \_carry__0_n_1\ : STD_LOGIC;
  signal \_carry__0_n_2\ : STD_LOGIC;
  signal \_carry__0_n_3\ : STD_LOGIC;
  signal \_carry__0_n_4\ : STD_LOGIC;
  signal \_carry__0_n_5\ : STD_LOGIC;
  signal \_carry__0_n_6\ : STD_LOGIC;
  signal \_carry__0_n_7\ : STD_LOGIC;
  signal \_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \_carry__1_n_0\ : STD_LOGIC;
  signal \_carry__1_n_1\ : STD_LOGIC;
  signal \_carry__1_n_2\ : STD_LOGIC;
  signal \_carry__1_n_3\ : STD_LOGIC;
  signal \_carry__1_n_4\ : STD_LOGIC;
  signal \_carry__1_n_5\ : STD_LOGIC;
  signal \_carry__1_n_6\ : STD_LOGIC;
  signal \_carry__1_n_7\ : STD_LOGIC;
  signal \_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \_carry__2_n_0\ : STD_LOGIC;
  signal \_carry__2_n_1\ : STD_LOGIC;
  signal \_carry__2_n_2\ : STD_LOGIC;
  signal \_carry__2_n_3\ : STD_LOGIC;
  signal \_carry__2_n_4\ : STD_LOGIC;
  signal \_carry__2_n_5\ : STD_LOGIC;
  signal \_carry__2_n_6\ : STD_LOGIC;
  signal \_carry__2_n_7\ : STD_LOGIC;
  signal \_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \_carry__3_n_0\ : STD_LOGIC;
  signal \_carry__3_n_1\ : STD_LOGIC;
  signal \_carry__3_n_2\ : STD_LOGIC;
  signal \_carry__3_n_3\ : STD_LOGIC;
  signal \_carry__3_n_4\ : STD_LOGIC;
  signal \_carry__3_n_5\ : STD_LOGIC;
  signal \_carry__3_n_6\ : STD_LOGIC;
  signal \_carry__3_n_7\ : STD_LOGIC;
  signal \_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \_carry__4_n_1\ : STD_LOGIC;
  signal \_carry__4_n_2\ : STD_LOGIC;
  signal \_carry__4_n_3\ : STD_LOGIC;
  signal \_carry__4_n_4\ : STD_LOGIC;
  signal \_carry__4_n_5\ : STD_LOGIC;
  signal \_carry__4_n_6\ : STD_LOGIC;
  signal \_carry__4_n_7\ : STD_LOGIC;
  signal \_carry_i_1_n_0\ : STD_LOGIC;
  signal \_carry_i_2_n_0\ : STD_LOGIC;
  signal \_carry_i_3_n_0\ : STD_LOGIC;
  signal \_carry_i_4_n_0\ : STD_LOGIC;
  signal \_carry_i_5_n_0\ : STD_LOGIC;
  signal \_carry_n_0\ : STD_LOGIC;
  signal \_carry_n_1\ : STD_LOGIC;
  signal \_carry_n_2\ : STD_LOGIC;
  signal \_carry_n_3\ : STD_LOGIC;
  signal \_carry_n_4\ : STD_LOGIC;
  signal \_carry_n_5\ : STD_LOGIC;
  signal \_carry_n_6\ : STD_LOGIC;
  signal \_carry_n_7\ : STD_LOGIC;
  signal avg_left : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal avg_left0 : STD_LOGIC;
  signal avg_right : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \buffer_left[0]_1\ : STD_LOGIC;
  signal \buffer_left_reg[0]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][10]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][11]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][12]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][13]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][14]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][15]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][16]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][17]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][18]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][19]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][20]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][21]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][22]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][23]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][5]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][6]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][7]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][8]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[31][9]_U0_buffer_left_reg_c_59_n_0\ : STD_LOGIC;
  signal \buffer_left_reg[32]\ : STD_LOGIC_VECTOR ( 23 downto 5 );
  signal buffer_left_reg_c_30_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_31_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_32_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_33_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_34_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_35_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_36_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_37_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_38_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_39_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_40_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_41_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_42_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_43_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_44_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_45_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_46_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_47_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_48_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_49_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_50_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_51_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_52_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_53_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_54_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_55_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_56_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_57_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_58_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_59_n_0 : STD_LOGIC;
  signal buffer_left_reg_c_n_0 : STD_LOGIC;
  signal \buffer_left_reg_gate__0_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__10_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__11_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__12_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__13_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__14_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__15_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__16_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__17_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__1_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__2_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__3_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__4_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__5_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__6_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__7_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__8_n_0\ : STD_LOGIC;
  signal \buffer_left_reg_gate__9_n_0\ : STD_LOGIC;
  signal buffer_left_reg_gate_n_0 : STD_LOGIC;
  signal \buffer_right[0]_0\ : STD_LOGIC;
  signal \buffer_right_reg[0]\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][10]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][11]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][12]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][13]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][14]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][15]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][16]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][17]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][18]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][19]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][20]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][21]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][22]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][23]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][5]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][6]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][7]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][8]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[31][9]_U0_buffer_right_reg_c_29_n_0\ : STD_LOGIC;
  signal \buffer_right_reg[32]\ : STD_LOGIC_VECTOR ( 23 downto 5 );
  signal buffer_right_reg_c_0_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_10_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_11_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_12_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_13_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_14_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_15_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_16_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_17_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_18_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_19_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_1_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_20_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_21_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_22_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_23_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_24_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_25_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_26_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_27_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_28_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_29_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_2_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_3_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_4_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_5_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_6_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_7_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_8_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_9_n_0 : STD_LOGIC;
  signal buffer_right_reg_c_n_0 : STD_LOGIC;
  signal \buffer_right_reg_gate__0_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__10_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__11_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__12_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__13_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__14_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__15_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__16_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__17_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__1_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__2_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__3_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__4_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__5_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__6_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__7_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__8_n_0\ : STD_LOGIC;
  signal \buffer_right_reg_gate__9_n_0\ : STD_LOGIC;
  signal buffer_right_reg_gate_n_0 : STD_LOGIC;
  signal lDadR4dsP_dspDelayedAccum : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal m_axis_tdata0 : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[9]_i_1_n_0\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW___69_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW__carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "read_left:000,read_right:001,compute_sub:010,compute_sum:011,write_left:100,write_right:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "read_left:000,read_right:001,compute_sub:010,compute_sum:011,write_left:100,write_right:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "read_left:000,read_right:001,compute_sub:010,compute_sum:011,write_left:100,write_right:101,";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \__69_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \__69_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \__69_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \__69_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \__69_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \__69_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \_carry__4\ : label is 35;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name : string;
  attribute srl_name of \buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58 ";
  attribute srl_bus_name of \buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30] ";
  attribute srl_name of \buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58\ : label is "\U0/buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58 ";
  attribute SOFT_HLUTNM of buffer_left_reg_gate : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__10\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__13\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__14\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__15\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__16\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__6\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__7\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__8\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \buffer_left_reg_gate__9\ : label is "soft_lutpair16";
  attribute srl_bus_name of \buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28 ";
  attribute srl_bus_name of \buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30] ";
  attribute srl_name of \buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28\ : label is "\U0/buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28 ";
  attribute SOFT_HLUTNM of buffer_right_reg_gate : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__11\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__12\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__13\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__14\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__15\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__16\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \buffer_right_reg_gate__9\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair20";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B383838383B3838"
    )
        port map (
      I0 => m_axis_tready,
      I1 => state(2),
      I2 => state(1),
      I3 => s_axis_tlast,
      I4 => s_axis_tvalid,
      I5 => state(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \state__0\(2),
      Q => state(2)
    );
\__69_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \__69_carry_n_0\,
      CO(2) => \__69_carry_n_1\,
      CO(1) => \__69_carry_n_2\,
      CO(0) => \__69_carry_n_3\,
      CYINIT => avg_left(0),
      DI(3 downto 1) => avg_left(3 downto 1),
      DI(0) => \__69_carry_i_1_n_0\,
      O(3 downto 0) => lDadR4dsP_dspDelayedAccum(3 downto 0),
      S(3) => \__69_carry_i_2_n_0\,
      S(2) => \__69_carry_i_3_n_0\,
      S(1) => \__69_carry_i_4_n_0\,
      S(0) => \__69_carry_i_5_n_0\
    );
\__69_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \__69_carry_n_0\,
      CO(3) => \__69_carry__0_n_0\,
      CO(2) => \__69_carry__0_n_1\,
      CO(1) => \__69_carry__0_n_2\,
      CO(0) => \__69_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => avg_left(7 downto 4),
      O(3 downto 0) => lDadR4dsP_dspDelayedAccum(7 downto 4),
      S(3) => \__69_carry__0_i_1_n_0\,
      S(2) => \__69_carry__0_i_2_n_0\,
      S(1) => \__69_carry__0_i_3_n_0\,
      S(0) => \__69_carry__0_i_4_n_0\
    );
\__69_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(12),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(12),
      I4 => avg_left(7),
      O => \__69_carry__0_i_1_n_0\
    );
\__69_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(11),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(11),
      I4 => avg_left(6),
      O => \__69_carry__0_i_2_n_0\
    );
\__69_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(10),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(10),
      I4 => avg_left(5),
      O => \__69_carry__0_i_3_n_0\
    );
\__69_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(9),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(9),
      I4 => avg_left(4),
      O => \__69_carry__0_i_4_n_0\
    );
\__69_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \__69_carry__0_n_0\,
      CO(3) => \__69_carry__1_n_0\,
      CO(2) => \__69_carry__1_n_1\,
      CO(1) => \__69_carry__1_n_2\,
      CO(0) => \__69_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => avg_left(11 downto 8),
      O(3 downto 0) => lDadR4dsP_dspDelayedAccum(11 downto 8),
      S(3) => \__69_carry__1_i_1_n_0\,
      S(2) => \__69_carry__1_i_2_n_0\,
      S(1) => \__69_carry__1_i_3_n_0\,
      S(0) => \__69_carry__1_i_4_n_0\
    );
\__69_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(16),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(16),
      I4 => avg_left(11),
      O => \__69_carry__1_i_1_n_0\
    );
\__69_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(15),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(15),
      I4 => avg_left(10),
      O => \__69_carry__1_i_2_n_0\
    );
\__69_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(14),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(14),
      I4 => avg_left(9),
      O => \__69_carry__1_i_3_n_0\
    );
\__69_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(13),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(13),
      I4 => avg_left(8),
      O => \__69_carry__1_i_4_n_0\
    );
\__69_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \__69_carry__1_n_0\,
      CO(3) => \__69_carry__2_n_0\,
      CO(2) => \__69_carry__2_n_1\,
      CO(1) => \__69_carry__2_n_2\,
      CO(0) => \__69_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => avg_left(15 downto 12),
      O(3 downto 0) => lDadR4dsP_dspDelayedAccum(15 downto 12),
      S(3) => \__69_carry__2_i_1_n_0\,
      S(2) => \__69_carry__2_i_2_n_0\,
      S(1) => \__69_carry__2_i_3_n_0\,
      S(0) => \__69_carry__2_i_4_n_0\
    );
\__69_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(20),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(20),
      I4 => avg_left(15),
      O => \__69_carry__2_i_1_n_0\
    );
\__69_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(19),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(19),
      I4 => avg_left(14),
      O => \__69_carry__2_i_2_n_0\
    );
\__69_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(18),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(18),
      I4 => avg_left(13),
      O => \__69_carry__2_i_3_n_0\
    );
\__69_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(17),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(17),
      I4 => avg_left(12),
      O => \__69_carry__2_i_4_n_0\
    );
\__69_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \__69_carry__2_n_0\,
      CO(3) => \__69_carry__3_n_0\,
      CO(2) => \__69_carry__3_n_1\,
      CO(1) => \__69_carry__3_n_2\,
      CO(0) => \__69_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => avg_left(19 downto 16),
      O(3 downto 0) => lDadR4dsP_dspDelayedAccum(19 downto 16),
      S(3) => \__69_carry__3_i_1_n_0\,
      S(2) => \__69_carry__3_i_2_n_0\,
      S(1) => \__69_carry__3_i_3_n_0\,
      S(0) => \__69_carry__3_i_4_n_0\
    );
\__69_carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(23),
      I4 => avg_left(19),
      O => \__69_carry__3_i_1_n_0\
    );
\__69_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(23),
      I4 => avg_left(18),
      O => \__69_carry__3_i_2_n_0\
    );
\__69_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(22),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(22),
      I4 => avg_left(17),
      O => \__69_carry__3_i_3_n_0\
    );
\__69_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(21),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(21),
      I4 => avg_left(16),
      O => \__69_carry__3_i_4_n_0\
    );
\__69_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \__69_carry__3_n_0\,
      CO(3) => \NLW___69_carry__4_CO_UNCONNECTED\(3),
      CO(2) => \__69_carry__4_n_1\,
      CO(1) => \__69_carry__4_n_2\,
      CO(0) => \__69_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => avg_left(22 downto 20),
      O(3 downto 0) => lDadR4dsP_dspDelayedAccum(23 downto 20),
      S(3) => \__69_carry__4_i_1_n_0\,
      S(2) => \__69_carry__4_i_2_n_0\,
      S(1) => \__69_carry__4_i_3_n_0\,
      S(0) => \__69_carry__4_i_4_n_0\
    );
\__69_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(23),
      I4 => avg_left(23),
      O => \__69_carry__4_i_1_n_0\
    );
\__69_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(23),
      I4 => avg_left(22),
      O => \__69_carry__4_i_2_n_0\
    );
\__69_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(23),
      I4 => avg_left(21),
      O => \__69_carry__4_i_3_n_0\
    );
\__69_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(23),
      I4 => avg_left(20),
      O => \__69_carry__4_i_4_n_0\
    );
\__69_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      O => \__69_carry_i_1_n_0\
    );
\__69_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(8),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(8),
      I4 => avg_left(3),
      O => \__69_carry_i_2_n_0\
    );
\__69_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(7),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(7),
      I4 => avg_left(2),
      O => \__69_carry_i_3_n_0\
    );
\__69_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(6),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(6),
      I4 => avg_left(1),
      O => \__69_carry_i_4_n_0\
    );
\__69_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_left_reg[0]\(5),
      I2 => state(0),
      I3 => \buffer_left_reg[32]\(5),
      O => \__69_carry_i_5_n_0\
    );
\_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_carry_n_0\,
      CO(2) => \_carry_n_1\,
      CO(1) => \_carry_n_2\,
      CO(0) => \_carry_n_3\,
      CYINIT => avg_right(0),
      DI(3 downto 1) => avg_right(3 downto 1),
      DI(0) => \_carry_i_1_n_0\,
      O(3) => \_carry_n_4\,
      O(2) => \_carry_n_5\,
      O(1) => \_carry_n_6\,
      O(0) => \_carry_n_7\,
      S(3) => \_carry_i_2_n_0\,
      S(2) => \_carry_i_3_n_0\,
      S(1) => \_carry_i_4_n_0\,
      S(0) => \_carry_i_5_n_0\
    );
\_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry_n_0\,
      CO(3) => \_carry__0_n_0\,
      CO(2) => \_carry__0_n_1\,
      CO(1) => \_carry__0_n_2\,
      CO(0) => \_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => avg_right(7 downto 4),
      O(3) => \_carry__0_n_4\,
      O(2) => \_carry__0_n_5\,
      O(1) => \_carry__0_n_6\,
      O(0) => \_carry__0_n_7\,
      S(3) => \_carry__0_i_1_n_0\,
      S(2) => \_carry__0_i_2_n_0\,
      S(1) => \_carry__0_i_3_n_0\,
      S(0) => \_carry__0_i_4_n_0\
    );
\_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(12),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(12),
      I4 => avg_right(7),
      O => \_carry__0_i_1_n_0\
    );
\_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(11),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(11),
      I4 => avg_right(6),
      O => \_carry__0_i_2_n_0\
    );
\_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(10),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(10),
      I4 => avg_right(5),
      O => \_carry__0_i_3_n_0\
    );
\_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(9),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(9),
      I4 => avg_right(4),
      O => \_carry__0_i_4_n_0\
    );
\_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__0_n_0\,
      CO(3) => \_carry__1_n_0\,
      CO(2) => \_carry__1_n_1\,
      CO(1) => \_carry__1_n_2\,
      CO(0) => \_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => avg_right(11 downto 8),
      O(3) => \_carry__1_n_4\,
      O(2) => \_carry__1_n_5\,
      O(1) => \_carry__1_n_6\,
      O(0) => \_carry__1_n_7\,
      S(3) => \_carry__1_i_1_n_0\,
      S(2) => \_carry__1_i_2_n_0\,
      S(1) => \_carry__1_i_3_n_0\,
      S(0) => \_carry__1_i_4_n_0\
    );
\_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(16),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(16),
      I4 => avg_right(11),
      O => \_carry__1_i_1_n_0\
    );
\_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(15),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(15),
      I4 => avg_right(10),
      O => \_carry__1_i_2_n_0\
    );
\_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(14),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(14),
      I4 => avg_right(9),
      O => \_carry__1_i_3_n_0\
    );
\_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(13),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(13),
      I4 => avg_right(8),
      O => \_carry__1_i_4_n_0\
    );
\_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__1_n_0\,
      CO(3) => \_carry__2_n_0\,
      CO(2) => \_carry__2_n_1\,
      CO(1) => \_carry__2_n_2\,
      CO(0) => \_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => avg_right(15 downto 12),
      O(3) => \_carry__2_n_4\,
      O(2) => \_carry__2_n_5\,
      O(1) => \_carry__2_n_6\,
      O(0) => \_carry__2_n_7\,
      S(3) => \_carry__2_i_1_n_0\,
      S(2) => \_carry__2_i_2_n_0\,
      S(1) => \_carry__2_i_3_n_0\,
      S(0) => \_carry__2_i_4_n_0\
    );
\_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(20),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(20),
      I4 => avg_right(15),
      O => \_carry__2_i_1_n_0\
    );
\_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(19),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(19),
      I4 => avg_right(14),
      O => \_carry__2_i_2_n_0\
    );
\_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(18),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(18),
      I4 => avg_right(13),
      O => \_carry__2_i_3_n_0\
    );
\_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(17),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(17),
      I4 => avg_right(12),
      O => \_carry__2_i_4_n_0\
    );
\_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__2_n_0\,
      CO(3) => \_carry__3_n_0\,
      CO(2) => \_carry__3_n_1\,
      CO(1) => \_carry__3_n_2\,
      CO(0) => \_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => avg_right(19 downto 16),
      O(3) => \_carry__3_n_4\,
      O(2) => \_carry__3_n_5\,
      O(1) => \_carry__3_n_6\,
      O(0) => \_carry__3_n_7\,
      S(3) => \_carry__3_i_1_n_0\,
      S(2) => \_carry__3_i_2_n_0\,
      S(1) => \_carry__3_i_3_n_0\,
      S(0) => \_carry__3_i_4_n_0\
    );
\_carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(23),
      I4 => avg_right(19),
      O => \_carry__3_i_1_n_0\
    );
\_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(23),
      I4 => avg_right(18),
      O => \_carry__3_i_2_n_0\
    );
\_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(22),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(22),
      I4 => avg_right(17),
      O => \_carry__3_i_3_n_0\
    );
\_carry__3_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(21),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(21),
      I4 => avg_right(16),
      O => \_carry__3_i_4_n_0\
    );
\_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \_carry__3_n_0\,
      CO(3) => \NLW__carry__4_CO_UNCONNECTED\(3),
      CO(2) => \_carry__4_n_1\,
      CO(1) => \_carry__4_n_2\,
      CO(0) => \_carry__4_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => avg_right(22 downto 20),
      O(3) => \_carry__4_n_4\,
      O(2) => \_carry__4_n_5\,
      O(1) => \_carry__4_n_6\,
      O(0) => \_carry__4_n_7\,
      S(3) => \_carry__4_i_1_n_0\,
      S(2) => \_carry__4_i_2_n_0\,
      S(1) => \_carry__4_i_3_n_0\,
      S(0) => \_carry__4_i_4_n_0\
    );
\_carry__4_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(23),
      I4 => avg_right(23),
      O => \_carry__4_i_1_n_0\
    );
\_carry__4_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(23),
      I4 => avg_right(22),
      O => \_carry__4_i_2_n_0\
    );
\_carry__4_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(23),
      I4 => avg_right(21),
      O => \_carry__4_i_3_n_0\
    );
\_carry__4_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(23),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(23),
      I4 => avg_right(20),
      O => \_carry__4_i_4_n_0\
    );
\_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      O => \_carry_i_1_n_0\
    );
\_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(8),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(8),
      I4 => avg_right(3),
      O => \_carry_i_2_n_0\
    );
\_carry_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(7),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(7),
      I4 => avg_right(2),
      O => \_carry_i_3_n_0\
    );
\_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBA4045"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(6),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(6),
      I4 => avg_right(1),
      O => \_carry_i_4_n_0\
    );
\_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4540"
    )
        port map (
      I0 => state(2),
      I1 => \buffer_right_reg[0]\(5),
      I2 => state(0),
      I3 => \buffer_right_reg[32]\(5),
      O => \_carry_i_5_n_0\
    );
\avg_left_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => lDadR4dsP_dspDelayedAccum(0),
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
      D => lDadR4dsP_dspDelayedAccum(10),
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
      D => lDadR4dsP_dspDelayedAccum(11),
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
      D => lDadR4dsP_dspDelayedAccum(12),
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
      D => lDadR4dsP_dspDelayedAccum(13),
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
      D => lDadR4dsP_dspDelayedAccum(14),
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
      D => lDadR4dsP_dspDelayedAccum(15),
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
      D => lDadR4dsP_dspDelayedAccum(16),
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
      D => lDadR4dsP_dspDelayedAccum(17),
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
      D => lDadR4dsP_dspDelayedAccum(18),
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
      D => lDadR4dsP_dspDelayedAccum(19),
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
      D => lDadR4dsP_dspDelayedAccum(1),
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
      D => lDadR4dsP_dspDelayedAccum(20),
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
      D => lDadR4dsP_dspDelayedAccum(21),
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
      D => lDadR4dsP_dspDelayedAccum(22),
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
      D => lDadR4dsP_dspDelayedAccum(23),
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
      D => lDadR4dsP_dspDelayedAccum(2),
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
      D => lDadR4dsP_dspDelayedAccum(3),
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
      D => lDadR4dsP_dspDelayedAccum(4),
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
      D => lDadR4dsP_dspDelayedAccum(5),
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
      D => lDadR4dsP_dspDelayedAccum(6),
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
      D => lDadR4dsP_dspDelayedAccum(7),
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
      D => lDadR4dsP_dspDelayedAccum(8),
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
      D => lDadR4dsP_dspDelayedAccum(9),
      Q => avg_left(9),
      R => '0'
    );
\avg_right[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => aresetn,
      I1 => state(2),
      I2 => state(1),
      O => avg_left0
    );
\avg_right_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry_n_7\,
      Q => avg_right(0),
      R => '0'
    );
\avg_right_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__1_n_5\,
      Q => avg_right(10),
      R => '0'
    );
\avg_right_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__1_n_4\,
      Q => avg_right(11),
      R => '0'
    );
\avg_right_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__2_n_7\,
      Q => avg_right(12),
      R => '0'
    );
\avg_right_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__2_n_6\,
      Q => avg_right(13),
      R => '0'
    );
\avg_right_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__2_n_5\,
      Q => avg_right(14),
      R => '0'
    );
\avg_right_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__2_n_4\,
      Q => avg_right(15),
      R => '0'
    );
\avg_right_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__3_n_7\,
      Q => avg_right(16),
      R => '0'
    );
\avg_right_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__3_n_6\,
      Q => avg_right(17),
      R => '0'
    );
\avg_right_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__3_n_5\,
      Q => avg_right(18),
      R => '0'
    );
\avg_right_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__3_n_4\,
      Q => avg_right(19),
      R => '0'
    );
\avg_right_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry_n_6\,
      Q => avg_right(1),
      R => '0'
    );
\avg_right_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__4_n_7\,
      Q => avg_right(20),
      R => '0'
    );
\avg_right_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__4_n_6\,
      Q => avg_right(21),
      R => '0'
    );
\avg_right_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__4_n_5\,
      Q => avg_right(22),
      R => '0'
    );
\avg_right_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__4_n_4\,
      Q => avg_right(23),
      R => '0'
    );
\avg_right_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry_n_5\,
      Q => avg_right(2),
      R => '0'
    );
\avg_right_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry_n_4\,
      Q => avg_right(3),
      R => '0'
    );
\avg_right_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__0_n_7\,
      Q => avg_right(4),
      R => '0'
    );
\avg_right_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__0_n_6\,
      Q => avg_right(5),
      R => '0'
    );
\avg_right_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__0_n_5\,
      Q => avg_right(6),
      R => '0'
    );
\avg_right_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__0_n_4\,
      Q => avg_right(7),
      R => '0'
    );
\avg_right_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__1_n_7\,
      Q => avg_right(8),
      R => '0'
    );
\avg_right_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => avg_left0,
      D => \_carry__1_n_6\,
      Q => avg_right(9),
      R => '0'
    );
\buffer_left[0][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => s_axis_tvalid,
      I3 => s_axis_tlast,
      I4 => state(1),
      O => \buffer_left[0]_1\
    );
\buffer_left_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(0),
      Q => \buffer_left_reg[0]\(0)
    );
\buffer_left_reg[0][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(10),
      Q => \buffer_left_reg[0]\(10)
    );
\buffer_left_reg[0][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(11),
      Q => \buffer_left_reg[0]\(11)
    );
\buffer_left_reg[0][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(12),
      Q => \buffer_left_reg[0]\(12)
    );
\buffer_left_reg[0][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(13),
      Q => \buffer_left_reg[0]\(13)
    );
\buffer_left_reg[0][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(14),
      Q => \buffer_left_reg[0]\(14)
    );
\buffer_left_reg[0][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(15),
      Q => \buffer_left_reg[0]\(15)
    );
\buffer_left_reg[0][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(16),
      Q => \buffer_left_reg[0]\(16)
    );
\buffer_left_reg[0][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(17),
      Q => \buffer_left_reg[0]\(17)
    );
\buffer_left_reg[0][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(18),
      Q => \buffer_left_reg[0]\(18)
    );
\buffer_left_reg[0][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(19),
      Q => \buffer_left_reg[0]\(19)
    );
\buffer_left_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(1),
      Q => \buffer_left_reg[0]\(1)
    );
\buffer_left_reg[0][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(20),
      Q => \buffer_left_reg[0]\(20)
    );
\buffer_left_reg[0][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(21),
      Q => \buffer_left_reg[0]\(21)
    );
\buffer_left_reg[0][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(22),
      Q => \buffer_left_reg[0]\(22)
    );
\buffer_left_reg[0][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(23),
      Q => \buffer_left_reg[0]\(23)
    );
\buffer_left_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(2),
      Q => \buffer_left_reg[0]\(2)
    );
\buffer_left_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(3),
      Q => \buffer_left_reg[0]\(3)
    );
\buffer_left_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(4),
      Q => \buffer_left_reg[0]\(4)
    );
\buffer_left_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(5),
      Q => \buffer_left_reg[0]\(5)
    );
\buffer_left_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(6),
      Q => \buffer_left_reg[0]\(6)
    );
\buffer_left_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(7),
      Q => \buffer_left_reg[0]\(7)
    );
\buffer_left_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(8),
      Q => \buffer_left_reg[0]\(8)
    );
\buffer_left_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(9),
      Q => \buffer_left_reg[0]\(9)
    );
\buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(10),
      Q => \buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(11),
      Q => \buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(12),
      Q => \buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(13),
      Q => \buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(14),
      Q => \buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(15),
      Q => \buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(16),
      Q => \buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(17),
      Q => \buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(18),
      Q => \buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(19),
      Q => \buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(20),
      Q => \buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(21),
      Q => \buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(22),
      Q => \buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(23),
      Q => \buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(5),
      Q => \buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(6),
      Q => \buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(7),
      Q => \buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(8),
      Q => \buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_left[0]_1\,
      CLK => aclk,
      D => \buffer_left_reg[0]\(9),
      Q => \buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q31 => \NLW_buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED\
    );
\buffer_left_reg[31][10]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][10]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][11]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][11]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][12]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][12]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][13]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][13]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][14]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][14]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][15]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][15]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][16]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][16]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][17]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][17]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][18]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][18]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][19]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][19]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][20]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][20]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][21]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][21]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][22]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][22]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][23]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][23]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][5]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][5]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][6]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][6]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][7]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][7]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][8]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][8]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[31][9]_U0_buffer_left_reg_c_59\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      D => \buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_n_0\,
      Q => \buffer_left_reg[31][9]_U0_buffer_left_reg_c_59_n_0\,
      R => '0'
    );
\buffer_left_reg[32][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__12_n_0\,
      Q => \buffer_left_reg[32]\(10)
    );
\buffer_left_reg[32][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__11_n_0\,
      Q => \buffer_left_reg[32]\(11)
    );
\buffer_left_reg[32][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__10_n_0\,
      Q => \buffer_left_reg[32]\(12)
    );
\buffer_left_reg[32][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__9_n_0\,
      Q => \buffer_left_reg[32]\(13)
    );
\buffer_left_reg[32][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__8_n_0\,
      Q => \buffer_left_reg[32]\(14)
    );
\buffer_left_reg[32][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__7_n_0\,
      Q => \buffer_left_reg[32]\(15)
    );
\buffer_left_reg[32][16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__6_n_0\,
      Q => \buffer_left_reg[32]\(16)
    );
\buffer_left_reg[32][17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__5_n_0\,
      Q => \buffer_left_reg[32]\(17)
    );
\buffer_left_reg[32][18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__4_n_0\,
      Q => \buffer_left_reg[32]\(18)
    );
\buffer_left_reg[32][19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__3_n_0\,
      Q => \buffer_left_reg[32]\(19)
    );
\buffer_left_reg[32][20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__2_n_0\,
      Q => \buffer_left_reg[32]\(20)
    );
\buffer_left_reg[32][21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__1_n_0\,
      Q => \buffer_left_reg[32]\(21)
    );
\buffer_left_reg[32][22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__0_n_0\,
      Q => \buffer_left_reg[32]\(22)
    );
\buffer_left_reg[32][23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_gate_n_0,
      Q => \buffer_left_reg[32]\(23)
    );
\buffer_left_reg[32][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__17_n_0\,
      Q => \buffer_left_reg[32]\(5)
    );
\buffer_left_reg[32][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__16_n_0\,
      Q => \buffer_left_reg[32]\(6)
    );
\buffer_left_reg[32][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__15_n_0\,
      Q => \buffer_left_reg[32]\(7)
    );
\buffer_left_reg[32][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__14_n_0\,
      Q => \buffer_left_reg[32]\(8)
    );
\buffer_left_reg[32][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_left_reg_gate__13_n_0\,
      Q => \buffer_left_reg[32]\(9)
    );
buffer_left_reg_c: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => '1',
      Q => buffer_left_reg_c_n_0
    );
buffer_left_reg_c_30: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_n_0,
      Q => buffer_left_reg_c_30_n_0
    );
buffer_left_reg_c_31: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_30_n_0,
      Q => buffer_left_reg_c_31_n_0
    );
buffer_left_reg_c_32: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_31_n_0,
      Q => buffer_left_reg_c_32_n_0
    );
buffer_left_reg_c_33: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_32_n_0,
      Q => buffer_left_reg_c_33_n_0
    );
buffer_left_reg_c_34: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_33_n_0,
      Q => buffer_left_reg_c_34_n_0
    );
buffer_left_reg_c_35: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_34_n_0,
      Q => buffer_left_reg_c_35_n_0
    );
buffer_left_reg_c_36: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_35_n_0,
      Q => buffer_left_reg_c_36_n_0
    );
buffer_left_reg_c_37: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_36_n_0,
      Q => buffer_left_reg_c_37_n_0
    );
buffer_left_reg_c_38: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_37_n_0,
      Q => buffer_left_reg_c_38_n_0
    );
buffer_left_reg_c_39: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_38_n_0,
      Q => buffer_left_reg_c_39_n_0
    );
buffer_left_reg_c_40: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_39_n_0,
      Q => buffer_left_reg_c_40_n_0
    );
buffer_left_reg_c_41: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_40_n_0,
      Q => buffer_left_reg_c_41_n_0
    );
buffer_left_reg_c_42: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_41_n_0,
      Q => buffer_left_reg_c_42_n_0
    );
buffer_left_reg_c_43: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_42_n_0,
      Q => buffer_left_reg_c_43_n_0
    );
buffer_left_reg_c_44: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_43_n_0,
      Q => buffer_left_reg_c_44_n_0
    );
buffer_left_reg_c_45: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_44_n_0,
      Q => buffer_left_reg_c_45_n_0
    );
buffer_left_reg_c_46: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_45_n_0,
      Q => buffer_left_reg_c_46_n_0
    );
buffer_left_reg_c_47: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_46_n_0,
      Q => buffer_left_reg_c_47_n_0
    );
buffer_left_reg_c_48: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_47_n_0,
      Q => buffer_left_reg_c_48_n_0
    );
buffer_left_reg_c_49: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_48_n_0,
      Q => buffer_left_reg_c_49_n_0
    );
buffer_left_reg_c_50: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_49_n_0,
      Q => buffer_left_reg_c_50_n_0
    );
buffer_left_reg_c_51: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_50_n_0,
      Q => buffer_left_reg_c_51_n_0
    );
buffer_left_reg_c_52: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_51_n_0,
      Q => buffer_left_reg_c_52_n_0
    );
buffer_left_reg_c_53: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_52_n_0,
      Q => buffer_left_reg_c_53_n_0
    );
buffer_left_reg_c_54: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_53_n_0,
      Q => buffer_left_reg_c_54_n_0
    );
buffer_left_reg_c_55: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_54_n_0,
      Q => buffer_left_reg_c_55_n_0
    );
buffer_left_reg_c_56: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_55_n_0,
      Q => buffer_left_reg_c_56_n_0
    );
buffer_left_reg_c_57: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_56_n_0,
      Q => buffer_left_reg_c_57_n_0
    );
buffer_left_reg_c_58: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_57_n_0,
      Q => buffer_left_reg_c_58_n_0
    );
buffer_left_reg_c_59: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_left[0]_1\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_left_reg_c_58_n_0,
      Q => buffer_left_reg_c_59_n_0
    );
buffer_left_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][23]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => buffer_left_reg_gate_n_0
    );
\buffer_left_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][22]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__0_n_0\
    );
\buffer_left_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][21]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__1_n_0\
    );
\buffer_left_reg_gate__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][12]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__10_n_0\
    );
\buffer_left_reg_gate__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][11]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__11_n_0\
    );
\buffer_left_reg_gate__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][10]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__12_n_0\
    );
\buffer_left_reg_gate__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][9]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__13_n_0\
    );
\buffer_left_reg_gate__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][8]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__14_n_0\
    );
\buffer_left_reg_gate__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][7]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__15_n_0\
    );
\buffer_left_reg_gate__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][6]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__16_n_0\
    );
\buffer_left_reg_gate__17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][5]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__17_n_0\
    );
\buffer_left_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][20]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__2_n_0\
    );
\buffer_left_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][19]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__3_n_0\
    );
\buffer_left_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][18]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__4_n_0\
    );
\buffer_left_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][17]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__5_n_0\
    );
\buffer_left_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][16]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__6_n_0\
    );
\buffer_left_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][15]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__7_n_0\
    );
\buffer_left_reg_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][14]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__8_n_0\
    );
\buffer_left_reg_gate__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_left_reg[31][13]_U0_buffer_left_reg_c_59_n_0\,
      I1 => buffer_left_reg_c_59_n_0,
      O => \buffer_left_reg_gate__9_n_0\
    );
\buffer_right[0][23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => s_axis_tvalid,
      I4 => s_axis_tlast,
      O => \buffer_right[0]_0\
    );
\buffer_right_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(0),
      Q => \buffer_right_reg[0]\(0)
    );
\buffer_right_reg[0][10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(10),
      Q => \buffer_right_reg[0]\(10)
    );
\buffer_right_reg[0][11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(11),
      Q => \buffer_right_reg[0]\(11)
    );
\buffer_right_reg[0][12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(12),
      Q => \buffer_right_reg[0]\(12)
    );
\buffer_right_reg[0][13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(13),
      Q => \buffer_right_reg[0]\(13)
    );
\buffer_right_reg[0][14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(14),
      Q => \buffer_right_reg[0]\(14)
    );
\buffer_right_reg[0][15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(15),
      Q => \buffer_right_reg[0]\(15)
    );
\buffer_right_reg[0][16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(16),
      Q => \buffer_right_reg[0]\(16)
    );
\buffer_right_reg[0][17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(17),
      Q => \buffer_right_reg[0]\(17)
    );
\buffer_right_reg[0][18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(18),
      Q => \buffer_right_reg[0]\(18)
    );
\buffer_right_reg[0][19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(19),
      Q => \buffer_right_reg[0]\(19)
    );
\buffer_right_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(1),
      Q => \buffer_right_reg[0]\(1)
    );
\buffer_right_reg[0][20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(20),
      Q => \buffer_right_reg[0]\(20)
    );
\buffer_right_reg[0][21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(21),
      Q => \buffer_right_reg[0]\(21)
    );
\buffer_right_reg[0][22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(22),
      Q => \buffer_right_reg[0]\(22)
    );
\buffer_right_reg[0][23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(23),
      Q => \buffer_right_reg[0]\(23)
    );
\buffer_right_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(2),
      Q => \buffer_right_reg[0]\(2)
    );
\buffer_right_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(3),
      Q => \buffer_right_reg[0]\(3)
    );
\buffer_right_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(4),
      Q => \buffer_right_reg[0]\(4)
    );
\buffer_right_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(5),
      Q => \buffer_right_reg[0]\(5)
    );
\buffer_right_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(6),
      Q => \buffer_right_reg[0]\(6)
    );
\buffer_right_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(7),
      Q => \buffer_right_reg[0]\(7)
    );
\buffer_right_reg[0][8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(8),
      Q => \buffer_right_reg[0]\(8)
    );
\buffer_right_reg[0][9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => s_axis_tdata(9),
      Q => \buffer_right_reg[0]\(9)
    );
\buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(10),
      Q => \buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(11),
      Q => \buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(12),
      Q => \buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(13),
      Q => \buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(14),
      Q => \buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(15),
      Q => \buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(16),
      Q => \buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(17),
      Q => \buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(18),
      Q => \buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(19),
      Q => \buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(20),
      Q => \buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(21),
      Q => \buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(22),
      Q => \buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(23),
      Q => \buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(5),
      Q => \buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(6),
      Q => \buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(7),
      Q => \buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(8),
      Q => \buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000"
    )
        port map (
      A(4 downto 0) => B"11101",
      CE => \buffer_right[0]_0\,
      CLK => aclk,
      D => \buffer_right_reg[0]\(9),
      Q => \buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q31 => \NLW_buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED\
    );
\buffer_right_reg[31][10]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][10]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][11]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][11]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][12]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][12]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][13]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][13]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][14]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][14]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][15]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][15]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][16]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][16]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][17]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][17]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][18]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][18]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][19]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][19]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][20]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][20]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][21]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][21]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][22]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][22]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][23]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][23]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][5]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][5]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][6]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][6]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][7]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][7]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][8]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][8]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[31][9]_U0_buffer_right_reg_c_29\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      D => \buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_n_0\,
      Q => \buffer_right_reg[31][9]_U0_buffer_right_reg_c_29_n_0\,
      R => '0'
    );
\buffer_right_reg[32][10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__12_n_0\,
      Q => \buffer_right_reg[32]\(10)
    );
\buffer_right_reg[32][11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__11_n_0\,
      Q => \buffer_right_reg[32]\(11)
    );
\buffer_right_reg[32][12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__10_n_0\,
      Q => \buffer_right_reg[32]\(12)
    );
\buffer_right_reg[32][13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__9_n_0\,
      Q => \buffer_right_reg[32]\(13)
    );
\buffer_right_reg[32][14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__8_n_0\,
      Q => \buffer_right_reg[32]\(14)
    );
\buffer_right_reg[32][15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__7_n_0\,
      Q => \buffer_right_reg[32]\(15)
    );
\buffer_right_reg[32][16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__6_n_0\,
      Q => \buffer_right_reg[32]\(16)
    );
\buffer_right_reg[32][17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__5_n_0\,
      Q => \buffer_right_reg[32]\(17)
    );
\buffer_right_reg[32][18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__4_n_0\,
      Q => \buffer_right_reg[32]\(18)
    );
\buffer_right_reg[32][19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__3_n_0\,
      Q => \buffer_right_reg[32]\(19)
    );
\buffer_right_reg[32][20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__2_n_0\,
      Q => \buffer_right_reg[32]\(20)
    );
\buffer_right_reg[32][21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__1_n_0\,
      Q => \buffer_right_reg[32]\(21)
    );
\buffer_right_reg[32][22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__0_n_0\,
      Q => \buffer_right_reg[32]\(22)
    );
\buffer_right_reg[32][23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_gate_n_0,
      Q => \buffer_right_reg[32]\(23)
    );
\buffer_right_reg[32][5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__17_n_0\,
      Q => \buffer_right_reg[32]\(5)
    );
\buffer_right_reg[32][6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__16_n_0\,
      Q => \buffer_right_reg[32]\(6)
    );
\buffer_right_reg[32][7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__15_n_0\,
      Q => \buffer_right_reg[32]\(7)
    );
\buffer_right_reg[32][8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__14_n_0\,
      Q => \buffer_right_reg[32]\(8)
    );
\buffer_right_reg[32][9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \buffer_right_reg_gate__13_n_0\,
      Q => \buffer_right_reg[32]\(9)
    );
buffer_right_reg_c: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => '1',
      Q => buffer_right_reg_c_n_0
    );
buffer_right_reg_c_0: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_n_0,
      Q => buffer_right_reg_c_0_n_0
    );
buffer_right_reg_c_1: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_0_n_0,
      Q => buffer_right_reg_c_1_n_0
    );
buffer_right_reg_c_10: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_9_n_0,
      Q => buffer_right_reg_c_10_n_0
    );
buffer_right_reg_c_11: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_10_n_0,
      Q => buffer_right_reg_c_11_n_0
    );
buffer_right_reg_c_12: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_11_n_0,
      Q => buffer_right_reg_c_12_n_0
    );
buffer_right_reg_c_13: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_12_n_0,
      Q => buffer_right_reg_c_13_n_0
    );
buffer_right_reg_c_14: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_13_n_0,
      Q => buffer_right_reg_c_14_n_0
    );
buffer_right_reg_c_15: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_14_n_0,
      Q => buffer_right_reg_c_15_n_0
    );
buffer_right_reg_c_16: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_15_n_0,
      Q => buffer_right_reg_c_16_n_0
    );
buffer_right_reg_c_17: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_16_n_0,
      Q => buffer_right_reg_c_17_n_0
    );
buffer_right_reg_c_18: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_17_n_0,
      Q => buffer_right_reg_c_18_n_0
    );
buffer_right_reg_c_19: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_18_n_0,
      Q => buffer_right_reg_c_19_n_0
    );
buffer_right_reg_c_2: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_1_n_0,
      Q => buffer_right_reg_c_2_n_0
    );
buffer_right_reg_c_20: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_19_n_0,
      Q => buffer_right_reg_c_20_n_0
    );
buffer_right_reg_c_21: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_20_n_0,
      Q => buffer_right_reg_c_21_n_0
    );
buffer_right_reg_c_22: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_21_n_0,
      Q => buffer_right_reg_c_22_n_0
    );
buffer_right_reg_c_23: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_22_n_0,
      Q => buffer_right_reg_c_23_n_0
    );
buffer_right_reg_c_24: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_23_n_0,
      Q => buffer_right_reg_c_24_n_0
    );
buffer_right_reg_c_25: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_24_n_0,
      Q => buffer_right_reg_c_25_n_0
    );
buffer_right_reg_c_26: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_25_n_0,
      Q => buffer_right_reg_c_26_n_0
    );
buffer_right_reg_c_27: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_26_n_0,
      Q => buffer_right_reg_c_27_n_0
    );
buffer_right_reg_c_28: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_27_n_0,
      Q => buffer_right_reg_c_28_n_0
    );
buffer_right_reg_c_29: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_28_n_0,
      Q => buffer_right_reg_c_29_n_0
    );
buffer_right_reg_c_3: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_2_n_0,
      Q => buffer_right_reg_c_3_n_0
    );
buffer_right_reg_c_4: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_3_n_0,
      Q => buffer_right_reg_c_4_n_0
    );
buffer_right_reg_c_5: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_4_n_0,
      Q => buffer_right_reg_c_5_n_0
    );
buffer_right_reg_c_6: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_5_n_0,
      Q => buffer_right_reg_c_6_n_0
    );
buffer_right_reg_c_7: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_6_n_0,
      Q => buffer_right_reg_c_7_n_0
    );
buffer_right_reg_c_8: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_7_n_0,
      Q => buffer_right_reg_c_8_n_0
    );
buffer_right_reg_c_9: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \buffer_right[0]_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => buffer_right_reg_c_8_n_0,
      Q => buffer_right_reg_c_9_n_0
    );
buffer_right_reg_gate: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][23]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => buffer_right_reg_gate_n_0
    );
\buffer_right_reg_gate__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][22]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__0_n_0\
    );
\buffer_right_reg_gate__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][21]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__1_n_0\
    );
\buffer_right_reg_gate__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][12]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__10_n_0\
    );
\buffer_right_reg_gate__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][11]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__11_n_0\
    );
\buffer_right_reg_gate__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][10]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__12_n_0\
    );
\buffer_right_reg_gate__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][9]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__13_n_0\
    );
\buffer_right_reg_gate__14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][8]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__14_n_0\
    );
\buffer_right_reg_gate__15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][7]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__15_n_0\
    );
\buffer_right_reg_gate__16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][6]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__16_n_0\
    );
\buffer_right_reg_gate__17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][5]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__17_n_0\
    );
\buffer_right_reg_gate__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][20]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__2_n_0\
    );
\buffer_right_reg_gate__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][19]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__3_n_0\
    );
\buffer_right_reg_gate__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][18]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__4_n_0\
    );
\buffer_right_reg_gate__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][17]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__5_n_0\
    );
\buffer_right_reg_gate__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][16]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__6_n_0\
    );
\buffer_right_reg_gate__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][15]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__7_n_0\
    );
\buffer_right_reg_gate__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][14]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__8_n_0\
    );
\buffer_right_reg_gate__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \buffer_right_reg[31][13]_U0_buffer_right_reg_c_29_n_0\,
      I1 => buffer_right_reg_c_29_n_0,
      O => \buffer_right_reg_gate__9_n_0\
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(0),
      I1 => \buffer_right_reg[0]\(0),
      I2 => state(0),
      I3 => avg_left(0),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(0),
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(10),
      I1 => \buffer_right_reg[0]\(10),
      I2 => state(0),
      I3 => avg_left(10),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(10),
      O => \m_axis_tdata[10]_i_1_n_0\
    );
\m_axis_tdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(11),
      I1 => \buffer_right_reg[0]\(11),
      I2 => state(0),
      I3 => avg_left(11),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(11),
      O => \m_axis_tdata[11]_i_1_n_0\
    );
\m_axis_tdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(12),
      I1 => \buffer_right_reg[0]\(12),
      I2 => state(0),
      I3 => avg_left(12),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(12),
      O => \m_axis_tdata[12]_i_1_n_0\
    );
\m_axis_tdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(13),
      I1 => \buffer_right_reg[0]\(13),
      I2 => state(0),
      I3 => avg_left(13),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(13),
      O => \m_axis_tdata[13]_i_1_n_0\
    );
\m_axis_tdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(14),
      I1 => \buffer_right_reg[0]\(14),
      I2 => state(0),
      I3 => avg_left(14),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(14),
      O => \m_axis_tdata[14]_i_1_n_0\
    );
\m_axis_tdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(15),
      I1 => \buffer_right_reg[0]\(15),
      I2 => state(0),
      I3 => avg_left(15),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(15),
      O => \m_axis_tdata[15]_i_1_n_0\
    );
\m_axis_tdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(16),
      I1 => \buffer_right_reg[0]\(16),
      I2 => state(0),
      I3 => avg_left(16),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(16),
      O => \m_axis_tdata[16]_i_1_n_0\
    );
\m_axis_tdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(17),
      I1 => \buffer_right_reg[0]\(17),
      I2 => state(0),
      I3 => avg_left(17),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(17),
      O => \m_axis_tdata[17]_i_1_n_0\
    );
\m_axis_tdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(18),
      I1 => \buffer_right_reg[0]\(18),
      I2 => state(0),
      I3 => avg_left(18),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(18),
      O => \m_axis_tdata[18]_i_1_n_0\
    );
\m_axis_tdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(19),
      I1 => \buffer_right_reg[0]\(19),
      I2 => state(0),
      I3 => avg_left(19),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(19),
      O => \m_axis_tdata[19]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(1),
      I1 => \buffer_right_reg[0]\(1),
      I2 => state(0),
      I3 => avg_left(1),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(1),
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(20),
      I1 => \buffer_right_reg[0]\(20),
      I2 => state(0),
      I3 => avg_left(20),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(20),
      O => \m_axis_tdata[20]_i_1_n_0\
    );
\m_axis_tdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(21),
      I1 => \buffer_right_reg[0]\(21),
      I2 => state(0),
      I3 => avg_left(21),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(21),
      O => \m_axis_tdata[21]_i_1_n_0\
    );
\m_axis_tdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(22),
      I1 => \buffer_right_reg[0]\(22),
      I2 => state(0),
      I3 => avg_left(22),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(22),
      O => \m_axis_tdata[22]_i_1_n_0\
    );
\m_axis_tdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => aresetn,
      I1 => state(2),
      I2 => m_axis_tready,
      I3 => state(1),
      O => m_axis_tdata0
    );
\m_axis_tdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(23),
      I1 => \buffer_right_reg[0]\(23),
      I2 => state(0),
      I3 => avg_left(23),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(23),
      O => \m_axis_tdata[23]_i_2_n_0\
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(2),
      I1 => \buffer_right_reg[0]\(2),
      I2 => state(0),
      I3 => avg_left(2),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(2),
      O => \m_axis_tdata[2]_i_1_n_0\
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(3),
      I1 => \buffer_right_reg[0]\(3),
      I2 => state(0),
      I3 => avg_left(3),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(3),
      O => \m_axis_tdata[3]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(4),
      I1 => \buffer_right_reg[0]\(4),
      I2 => state(0),
      I3 => avg_left(4),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(4),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(5),
      I1 => \buffer_right_reg[0]\(5),
      I2 => state(0),
      I3 => avg_left(5),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(5),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(6),
      I1 => \buffer_right_reg[0]\(6),
      I2 => state(0),
      I3 => avg_left(6),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(6),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(7),
      I1 => \buffer_right_reg[0]\(7),
      I2 => state(0),
      I3 => avg_left(7),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(7),
      O => \m_axis_tdata[7]_i_1_n_0\
    );
\m_axis_tdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(8),
      I1 => \buffer_right_reg[0]\(8),
      I2 => state(0),
      I3 => avg_left(8),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(8),
      O => \m_axis_tdata[8]_i_1_n_0\
    );
\m_axis_tdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => avg_right(9),
      I1 => \buffer_right_reg[0]\(9),
      I2 => state(0),
      I3 => avg_left(9),
      I4 => filter_enable,
      I5 => \buffer_left_reg[0]\(9),
      O => \m_axis_tdata[9]_i_1_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[10]_i_1_n_0\,
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[11]_i_1_n_0\,
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[12]_i_1_n_0\,
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[13]_i_1_n_0\,
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[14]_i_1_n_0\,
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[15]_i_1_n_0\,
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[16]_i_1_n_0\,
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[17]_i_1_n_0\,
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[18]_i_1_n_0\,
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[19]_i_1_n_0\,
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[20]_i_1_n_0\,
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[21]_i_1_n_0\,
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[22]_i_1_n_0\,
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[23]_i_2_n_0\,
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[2]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[3]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[7]_i_1_n_0\,
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[8]_i_1_n_0\,
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[9]_i_1_n_0\,
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => m_axis_tlast
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      O => s_axis_tready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_dual_moving_average_0_1 is
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
  attribute NotValidForBitStream of I2CBalancer_dual_moving_average_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_dual_moving_average_0_1 : entity is "I2CBalancer_dual_moving_average_0_1,dual_moving_average,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_dual_moving_average_0_1 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_dual_moving_average_0_1 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_dual_moving_average_0_1 : entity is "dual_moving_average,Vivado 2020.2";
end I2CBalancer_dual_moving_average_0_1;

architecture STRUCTURE of I2CBalancer_dual_moving_average_0_1 is
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
U0: entity work.I2CBalancer_dual_moving_average_0_1_dual_moving_average
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
