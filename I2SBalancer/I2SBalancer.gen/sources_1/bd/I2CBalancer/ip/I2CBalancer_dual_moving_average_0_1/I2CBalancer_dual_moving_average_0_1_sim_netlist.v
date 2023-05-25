// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri May 26 01:07:35 2023
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_dual_moving_average_0_1/I2CBalancer_dual_moving_average_0_1_sim_netlist.v
// Design      : I2CBalancer_dual_moving_average_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2CBalancer_dual_moving_average_0_1,dual_moving_average,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "dual_moving_average,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module I2CBalancer_dual_moving_average_0_1
   (m_axis_tvalid,
    m_axis_tlast,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tdata,
    s_axis_tready,
    aclk,
    aresetn,
    filter_enable);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 180000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 180000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 180000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input filter_enable;

  wire aclk;
  wire aresetn;
  wire filter_enable;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  I2CBalancer_dual_moving_average_0_1_dual_moving_average U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .filter_enable(filter_enable),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "dual_moving_average" *) 
module I2CBalancer_dual_moving_average_0_1_dual_moving_average
   (m_axis_tvalid,
    m_axis_tdata,
    s_axis_tready,
    m_axis_tlast,
    aclk,
    s_axis_tdata,
    aresetn,
    m_axis_tready,
    s_axis_tlast,
    s_axis_tvalid,
    filter_enable);
  output m_axis_tvalid;
  output [23:0]m_axis_tdata;
  output s_axis_tready;
  output m_axis_tlast;
  input aclk;
  input [23:0]s_axis_tdata;
  input aresetn;
  input m_axis_tready;
  input s_axis_tlast;
  input s_axis_tvalid;
  input filter_enable;

  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire __69_carry__0_i_1_n_0;
  wire __69_carry__0_i_2_n_0;
  wire __69_carry__0_i_3_n_0;
  wire __69_carry__0_i_4_n_0;
  wire __69_carry__0_n_0;
  wire __69_carry__0_n_1;
  wire __69_carry__0_n_2;
  wire __69_carry__0_n_3;
  wire __69_carry__1_i_1_n_0;
  wire __69_carry__1_i_2_n_0;
  wire __69_carry__1_i_3_n_0;
  wire __69_carry__1_i_4_n_0;
  wire __69_carry__1_n_0;
  wire __69_carry__1_n_1;
  wire __69_carry__1_n_2;
  wire __69_carry__1_n_3;
  wire __69_carry__2_i_1_n_0;
  wire __69_carry__2_i_2_n_0;
  wire __69_carry__2_i_3_n_0;
  wire __69_carry__2_i_4_n_0;
  wire __69_carry__2_n_0;
  wire __69_carry__2_n_1;
  wire __69_carry__2_n_2;
  wire __69_carry__2_n_3;
  wire __69_carry__3_i_1_n_0;
  wire __69_carry__3_i_2_n_0;
  wire __69_carry__3_i_3_n_0;
  wire __69_carry__3_i_4_n_0;
  wire __69_carry__3_n_0;
  wire __69_carry__3_n_1;
  wire __69_carry__3_n_2;
  wire __69_carry__3_n_3;
  wire __69_carry__4_i_1_n_0;
  wire __69_carry__4_i_2_n_0;
  wire __69_carry__4_i_3_n_0;
  wire __69_carry__4_i_4_n_0;
  wire __69_carry__4_n_1;
  wire __69_carry__4_n_2;
  wire __69_carry__4_n_3;
  wire __69_carry_i_1_n_0;
  wire __69_carry_i_2_n_0;
  wire __69_carry_i_3_n_0;
  wire __69_carry_i_4_n_0;
  wire __69_carry_i_5_n_0;
  wire __69_carry_n_0;
  wire __69_carry_n_1;
  wire __69_carry_n_2;
  wire __69_carry_n_3;
  wire _carry__0_i_1_n_0;
  wire _carry__0_i_2_n_0;
  wire _carry__0_i_3_n_0;
  wire _carry__0_i_4_n_0;
  wire _carry__0_n_0;
  wire _carry__0_n_1;
  wire _carry__0_n_2;
  wire _carry__0_n_3;
  wire _carry__0_n_4;
  wire _carry__0_n_5;
  wire _carry__0_n_6;
  wire _carry__0_n_7;
  wire _carry__1_i_1_n_0;
  wire _carry__1_i_2_n_0;
  wire _carry__1_i_3_n_0;
  wire _carry__1_i_4_n_0;
  wire _carry__1_n_0;
  wire _carry__1_n_1;
  wire _carry__1_n_2;
  wire _carry__1_n_3;
  wire _carry__1_n_4;
  wire _carry__1_n_5;
  wire _carry__1_n_6;
  wire _carry__1_n_7;
  wire _carry__2_i_1_n_0;
  wire _carry__2_i_2_n_0;
  wire _carry__2_i_3_n_0;
  wire _carry__2_i_4_n_0;
  wire _carry__2_n_0;
  wire _carry__2_n_1;
  wire _carry__2_n_2;
  wire _carry__2_n_3;
  wire _carry__2_n_4;
  wire _carry__2_n_5;
  wire _carry__2_n_6;
  wire _carry__2_n_7;
  wire _carry__3_i_1_n_0;
  wire _carry__3_i_2_n_0;
  wire _carry__3_i_3_n_0;
  wire _carry__3_i_4_n_0;
  wire _carry__3_n_0;
  wire _carry__3_n_1;
  wire _carry__3_n_2;
  wire _carry__3_n_3;
  wire _carry__3_n_4;
  wire _carry__3_n_5;
  wire _carry__3_n_6;
  wire _carry__3_n_7;
  wire _carry__4_i_1_n_0;
  wire _carry__4_i_2_n_0;
  wire _carry__4_i_3_n_0;
  wire _carry__4_i_4_n_0;
  wire _carry__4_n_1;
  wire _carry__4_n_2;
  wire _carry__4_n_3;
  wire _carry__4_n_4;
  wire _carry__4_n_5;
  wire _carry__4_n_6;
  wire _carry__4_n_7;
  wire _carry_i_1_n_0;
  wire _carry_i_2_n_0;
  wire _carry_i_3_n_0;
  wire _carry_i_4_n_0;
  wire _carry_i_5_n_0;
  wire _carry_n_0;
  wire _carry_n_1;
  wire _carry_n_2;
  wire _carry_n_3;
  wire _carry_n_4;
  wire _carry_n_5;
  wire _carry_n_6;
  wire _carry_n_7;
  wire aclk;
  wire aresetn;
  wire [23:0]avg_left;
  wire avg_left0;
  wire [23:0]avg_right;
  wire \buffer_left[0]_1 ;
  wire [23:0]\buffer_left_reg[0] ;
  wire \buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_n_0 ;
  wire \buffer_left_reg[31][10]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][11]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][12]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][13]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][14]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][15]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][16]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][17]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][18]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][19]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][20]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][21]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][22]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][23]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][5]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][6]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][7]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][8]_U0_buffer_left_reg_c_59_n_0 ;
  wire \buffer_left_reg[31][9]_U0_buffer_left_reg_c_59_n_0 ;
  wire [23:5]\buffer_left_reg[32] ;
  wire buffer_left_reg_c_30_n_0;
  wire buffer_left_reg_c_31_n_0;
  wire buffer_left_reg_c_32_n_0;
  wire buffer_left_reg_c_33_n_0;
  wire buffer_left_reg_c_34_n_0;
  wire buffer_left_reg_c_35_n_0;
  wire buffer_left_reg_c_36_n_0;
  wire buffer_left_reg_c_37_n_0;
  wire buffer_left_reg_c_38_n_0;
  wire buffer_left_reg_c_39_n_0;
  wire buffer_left_reg_c_40_n_0;
  wire buffer_left_reg_c_41_n_0;
  wire buffer_left_reg_c_42_n_0;
  wire buffer_left_reg_c_43_n_0;
  wire buffer_left_reg_c_44_n_0;
  wire buffer_left_reg_c_45_n_0;
  wire buffer_left_reg_c_46_n_0;
  wire buffer_left_reg_c_47_n_0;
  wire buffer_left_reg_c_48_n_0;
  wire buffer_left_reg_c_49_n_0;
  wire buffer_left_reg_c_50_n_0;
  wire buffer_left_reg_c_51_n_0;
  wire buffer_left_reg_c_52_n_0;
  wire buffer_left_reg_c_53_n_0;
  wire buffer_left_reg_c_54_n_0;
  wire buffer_left_reg_c_55_n_0;
  wire buffer_left_reg_c_56_n_0;
  wire buffer_left_reg_c_57_n_0;
  wire buffer_left_reg_c_58_n_0;
  wire buffer_left_reg_c_59_n_0;
  wire buffer_left_reg_c_n_0;
  wire buffer_left_reg_gate__0_n_0;
  wire buffer_left_reg_gate__10_n_0;
  wire buffer_left_reg_gate__11_n_0;
  wire buffer_left_reg_gate__12_n_0;
  wire buffer_left_reg_gate__13_n_0;
  wire buffer_left_reg_gate__14_n_0;
  wire buffer_left_reg_gate__15_n_0;
  wire buffer_left_reg_gate__16_n_0;
  wire buffer_left_reg_gate__17_n_0;
  wire buffer_left_reg_gate__1_n_0;
  wire buffer_left_reg_gate__2_n_0;
  wire buffer_left_reg_gate__3_n_0;
  wire buffer_left_reg_gate__4_n_0;
  wire buffer_left_reg_gate__5_n_0;
  wire buffer_left_reg_gate__6_n_0;
  wire buffer_left_reg_gate__7_n_0;
  wire buffer_left_reg_gate__8_n_0;
  wire buffer_left_reg_gate__9_n_0;
  wire buffer_left_reg_gate_n_0;
  wire \buffer_right[0]_0 ;
  wire [23:0]\buffer_right_reg[0] ;
  wire \buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_n_0 ;
  wire \buffer_right_reg[31][10]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][11]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][12]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][13]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][14]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][15]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][16]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][17]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][18]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][19]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][20]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][21]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][22]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][23]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][5]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][6]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][7]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][8]_U0_buffer_right_reg_c_29_n_0 ;
  wire \buffer_right_reg[31][9]_U0_buffer_right_reg_c_29_n_0 ;
  wire [23:5]\buffer_right_reg[32] ;
  wire buffer_right_reg_c_0_n_0;
  wire buffer_right_reg_c_10_n_0;
  wire buffer_right_reg_c_11_n_0;
  wire buffer_right_reg_c_12_n_0;
  wire buffer_right_reg_c_13_n_0;
  wire buffer_right_reg_c_14_n_0;
  wire buffer_right_reg_c_15_n_0;
  wire buffer_right_reg_c_16_n_0;
  wire buffer_right_reg_c_17_n_0;
  wire buffer_right_reg_c_18_n_0;
  wire buffer_right_reg_c_19_n_0;
  wire buffer_right_reg_c_1_n_0;
  wire buffer_right_reg_c_20_n_0;
  wire buffer_right_reg_c_21_n_0;
  wire buffer_right_reg_c_22_n_0;
  wire buffer_right_reg_c_23_n_0;
  wire buffer_right_reg_c_24_n_0;
  wire buffer_right_reg_c_25_n_0;
  wire buffer_right_reg_c_26_n_0;
  wire buffer_right_reg_c_27_n_0;
  wire buffer_right_reg_c_28_n_0;
  wire buffer_right_reg_c_29_n_0;
  wire buffer_right_reg_c_2_n_0;
  wire buffer_right_reg_c_3_n_0;
  wire buffer_right_reg_c_4_n_0;
  wire buffer_right_reg_c_5_n_0;
  wire buffer_right_reg_c_6_n_0;
  wire buffer_right_reg_c_7_n_0;
  wire buffer_right_reg_c_8_n_0;
  wire buffer_right_reg_c_9_n_0;
  wire buffer_right_reg_c_n_0;
  wire buffer_right_reg_gate__0_n_0;
  wire buffer_right_reg_gate__10_n_0;
  wire buffer_right_reg_gate__11_n_0;
  wire buffer_right_reg_gate__12_n_0;
  wire buffer_right_reg_gate__13_n_0;
  wire buffer_right_reg_gate__14_n_0;
  wire buffer_right_reg_gate__15_n_0;
  wire buffer_right_reg_gate__16_n_0;
  wire buffer_right_reg_gate__17_n_0;
  wire buffer_right_reg_gate__1_n_0;
  wire buffer_right_reg_gate__2_n_0;
  wire buffer_right_reg_gate__3_n_0;
  wire buffer_right_reg_gate__4_n_0;
  wire buffer_right_reg_gate__5_n_0;
  wire buffer_right_reg_gate__6_n_0;
  wire buffer_right_reg_gate__7_n_0;
  wire buffer_right_reg_gate__8_n_0;
  wire buffer_right_reg_gate__9_n_0;
  wire buffer_right_reg_gate_n_0;
  wire filter_enable;
  wire [23:0]lDadR4dsP_dspDelayedAccum;
  wire [23:0]m_axis_tdata;
  wire m_axis_tdata0;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[10]_i_1_n_0 ;
  wire \m_axis_tdata[11]_i_1_n_0 ;
  wire \m_axis_tdata[12]_i_1_n_0 ;
  wire \m_axis_tdata[13]_i_1_n_0 ;
  wire \m_axis_tdata[14]_i_1_n_0 ;
  wire \m_axis_tdata[15]_i_1_n_0 ;
  wire \m_axis_tdata[16]_i_1_n_0 ;
  wire \m_axis_tdata[17]_i_1_n_0 ;
  wire \m_axis_tdata[18]_i_1_n_0 ;
  wire \m_axis_tdata[19]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[20]_i_1_n_0 ;
  wire \m_axis_tdata[21]_i_1_n_0 ;
  wire \m_axis_tdata[22]_i_1_n_0 ;
  wire \m_axis_tdata[23]_i_2_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_1_n_0 ;
  wire \m_axis_tdata[8]_i_1_n_0 ;
  wire \m_axis_tdata[9]_i_1_n_0 ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire [2:0]state__0;
  wire [3:3]NLW___69_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW__carry__4_CO_UNCONNECTED;
  wire \NLW_buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h15)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3B383838383B3838)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(m_axis_tready),
        .I1(state[2]),
        .I2(state[1]),
        .I3(s_axis_tlast),
        .I4(s_axis_tvalid),
        .I5(state[0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(state__0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(aresetn),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "read_left:000,read_right:001,compute_sub:010,compute_sum:011,write_left:100,write_right:101," *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "read_left:000,read_right:001,compute_sub:010,compute_sum:011,write_left:100,write_right:101," *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "read_left:000,read_right:001,compute_sub:010,compute_sum:011,write_left:100,write_right:101," *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[2]),
        .Q(state[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 __69_carry
       (.CI(1'b0),
        .CO({__69_carry_n_0,__69_carry_n_1,__69_carry_n_2,__69_carry_n_3}),
        .CYINIT(avg_left[0]),
        .DI({avg_left[3:1],__69_carry_i_1_n_0}),
        .O(lDadR4dsP_dspDelayedAccum[3:0]),
        .S({__69_carry_i_2_n_0,__69_carry_i_3_n_0,__69_carry_i_4_n_0,__69_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 __69_carry__0
       (.CI(__69_carry_n_0),
        .CO({__69_carry__0_n_0,__69_carry__0_n_1,__69_carry__0_n_2,__69_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(avg_left[7:4]),
        .O(lDadR4dsP_dspDelayedAccum[7:4]),
        .S({__69_carry__0_i_1_n_0,__69_carry__0_i_2_n_0,__69_carry__0_i_3_n_0,__69_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__0_i_1
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [12]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [12]),
        .I4(avg_left[7]),
        .O(__69_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__0_i_2
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [11]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [11]),
        .I4(avg_left[6]),
        .O(__69_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__0_i_3
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [10]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [10]),
        .I4(avg_left[5]),
        .O(__69_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__0_i_4
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [9]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [9]),
        .I4(avg_left[4]),
        .O(__69_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 __69_carry__1
       (.CI(__69_carry__0_n_0),
        .CO({__69_carry__1_n_0,__69_carry__1_n_1,__69_carry__1_n_2,__69_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(avg_left[11:8]),
        .O(lDadR4dsP_dspDelayedAccum[11:8]),
        .S({__69_carry__1_i_1_n_0,__69_carry__1_i_2_n_0,__69_carry__1_i_3_n_0,__69_carry__1_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__1_i_1
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [16]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [16]),
        .I4(avg_left[11]),
        .O(__69_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__1_i_2
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [15]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [15]),
        .I4(avg_left[10]),
        .O(__69_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__1_i_3
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [14]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [14]),
        .I4(avg_left[9]),
        .O(__69_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__1_i_4
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [13]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [13]),
        .I4(avg_left[8]),
        .O(__69_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 __69_carry__2
       (.CI(__69_carry__1_n_0),
        .CO({__69_carry__2_n_0,__69_carry__2_n_1,__69_carry__2_n_2,__69_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(avg_left[15:12]),
        .O(lDadR4dsP_dspDelayedAccum[15:12]),
        .S({__69_carry__2_i_1_n_0,__69_carry__2_i_2_n_0,__69_carry__2_i_3_n_0,__69_carry__2_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__2_i_1
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [20]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [20]),
        .I4(avg_left[15]),
        .O(__69_carry__2_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__2_i_2
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [19]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [19]),
        .I4(avg_left[14]),
        .O(__69_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__2_i_3
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [18]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [18]),
        .I4(avg_left[13]),
        .O(__69_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__2_i_4
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [17]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [17]),
        .I4(avg_left[12]),
        .O(__69_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 __69_carry__3
       (.CI(__69_carry__2_n_0),
        .CO({__69_carry__3_n_0,__69_carry__3_n_1,__69_carry__3_n_2,__69_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(avg_left[19:16]),
        .O(lDadR4dsP_dspDelayedAccum[19:16]),
        .S({__69_carry__3_i_1_n_0,__69_carry__3_i_2_n_0,__69_carry__3_i_3_n_0,__69_carry__3_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__3_i_1
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [23]),
        .I4(avg_left[19]),
        .O(__69_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__3_i_2
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [23]),
        .I4(avg_left[18]),
        .O(__69_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__3_i_3
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [22]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [22]),
        .I4(avg_left[17]),
        .O(__69_carry__3_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__3_i_4
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [21]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [21]),
        .I4(avg_left[16]),
        .O(__69_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 __69_carry__4
       (.CI(__69_carry__3_n_0),
        .CO({NLW___69_carry__4_CO_UNCONNECTED[3],__69_carry__4_n_1,__69_carry__4_n_2,__69_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,avg_left[22:20]}),
        .O(lDadR4dsP_dspDelayedAccum[23:20]),
        .S({__69_carry__4_i_1_n_0,__69_carry__4_i_2_n_0,__69_carry__4_i_3_n_0,__69_carry__4_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__4_i_1
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [23]),
        .I4(avg_left[23]),
        .O(__69_carry__4_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__4_i_2
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [23]),
        .I4(avg_left[22]),
        .O(__69_carry__4_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__4_i_3
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [23]),
        .I4(avg_left[21]),
        .O(__69_carry__4_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry__4_i_4
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [23]),
        .I4(avg_left[20]),
        .O(__69_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    __69_carry_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .O(__69_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry_i_2
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [8]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [8]),
        .I4(avg_left[3]),
        .O(__69_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry_i_3
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [7]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [7]),
        .I4(avg_left[2]),
        .O(__69_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    __69_carry_i_4
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [6]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [6]),
        .I4(avg_left[1]),
        .O(__69_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h4540)) 
    __69_carry_i_5
       (.I0(state[2]),
        .I1(\buffer_left_reg[0] [5]),
        .I2(state[0]),
        .I3(\buffer_left_reg[32] [5]),
        .O(__69_carry_i_5_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 _carry
       (.CI(1'b0),
        .CO({_carry_n_0,_carry_n_1,_carry_n_2,_carry_n_3}),
        .CYINIT(avg_right[0]),
        .DI({avg_right[3:1],_carry_i_1_n_0}),
        .O({_carry_n_4,_carry_n_5,_carry_n_6,_carry_n_7}),
        .S({_carry_i_2_n_0,_carry_i_3_n_0,_carry_i_4_n_0,_carry_i_5_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 _carry__0
       (.CI(_carry_n_0),
        .CO({_carry__0_n_0,_carry__0_n_1,_carry__0_n_2,_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(avg_right[7:4]),
        .O({_carry__0_n_4,_carry__0_n_5,_carry__0_n_6,_carry__0_n_7}),
        .S({_carry__0_i_1_n_0,_carry__0_i_2_n_0,_carry__0_i_3_n_0,_carry__0_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__0_i_1
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [12]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [12]),
        .I4(avg_right[7]),
        .O(_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__0_i_2
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [11]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [11]),
        .I4(avg_right[6]),
        .O(_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__0_i_3
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [10]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [10]),
        .I4(avg_right[5]),
        .O(_carry__0_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__0_i_4
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [9]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [9]),
        .I4(avg_right[4]),
        .O(_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 _carry__1
       (.CI(_carry__0_n_0),
        .CO({_carry__1_n_0,_carry__1_n_1,_carry__1_n_2,_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(avg_right[11:8]),
        .O({_carry__1_n_4,_carry__1_n_5,_carry__1_n_6,_carry__1_n_7}),
        .S({_carry__1_i_1_n_0,_carry__1_i_2_n_0,_carry__1_i_3_n_0,_carry__1_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__1_i_1
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [16]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [16]),
        .I4(avg_right[11]),
        .O(_carry__1_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__1_i_2
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [15]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [15]),
        .I4(avg_right[10]),
        .O(_carry__1_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__1_i_3
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [14]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [14]),
        .I4(avg_right[9]),
        .O(_carry__1_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__1_i_4
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [13]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [13]),
        .I4(avg_right[8]),
        .O(_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 _carry__2
       (.CI(_carry__1_n_0),
        .CO({_carry__2_n_0,_carry__2_n_1,_carry__2_n_2,_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(avg_right[15:12]),
        .O({_carry__2_n_4,_carry__2_n_5,_carry__2_n_6,_carry__2_n_7}),
        .S({_carry__2_i_1_n_0,_carry__2_i_2_n_0,_carry__2_i_3_n_0,_carry__2_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__2_i_1
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [20]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [20]),
        .I4(avg_right[15]),
        .O(_carry__2_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__2_i_2
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [19]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [19]),
        .I4(avg_right[14]),
        .O(_carry__2_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__2_i_3
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [18]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [18]),
        .I4(avg_right[13]),
        .O(_carry__2_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__2_i_4
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [17]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [17]),
        .I4(avg_right[12]),
        .O(_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 _carry__3
       (.CI(_carry__2_n_0),
        .CO({_carry__3_n_0,_carry__3_n_1,_carry__3_n_2,_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(avg_right[19:16]),
        .O({_carry__3_n_4,_carry__3_n_5,_carry__3_n_6,_carry__3_n_7}),
        .S({_carry__3_i_1_n_0,_carry__3_i_2_n_0,_carry__3_i_3_n_0,_carry__3_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__3_i_1
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [23]),
        .I4(avg_right[19]),
        .O(_carry__3_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__3_i_2
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [23]),
        .I4(avg_right[18]),
        .O(_carry__3_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__3_i_3
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [22]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [22]),
        .I4(avg_right[17]),
        .O(_carry__3_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__3_i_4
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [21]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [21]),
        .I4(avg_right[16]),
        .O(_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 _carry__4
       (.CI(_carry__3_n_0),
        .CO({NLW__carry__4_CO_UNCONNECTED[3],_carry__4_n_1,_carry__4_n_2,_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,avg_right[22:20]}),
        .O({_carry__4_n_4,_carry__4_n_5,_carry__4_n_6,_carry__4_n_7}),
        .S({_carry__4_i_1_n_0,_carry__4_i_2_n_0,_carry__4_i_3_n_0,_carry__4_i_4_n_0}));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__4_i_1
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [23]),
        .I4(avg_right[23]),
        .O(_carry__4_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__4_i_2
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [23]),
        .I4(avg_right[22]),
        .O(_carry__4_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__4_i_3
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [23]),
        .I4(avg_right[21]),
        .O(_carry__4_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry__4_i_4
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [23]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [23]),
        .I4(avg_right[20]),
        .O(_carry__4_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    _carry_i_1
       (.I0(state[0]),
        .I1(state[2]),
        .O(_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry_i_2
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [8]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [8]),
        .I4(avg_right[3]),
        .O(_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry_i_3
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [7]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [7]),
        .I4(avg_right[2]),
        .O(_carry_i_3_n_0));
  LUT5 #(
    .INIT(32'hBFBA4045)) 
    _carry_i_4
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [6]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [6]),
        .I4(avg_right[1]),
        .O(_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h4540)) 
    _carry_i_5
       (.I0(state[2]),
        .I1(\buffer_right_reg[0] [5]),
        .I2(state[0]),
        .I3(\buffer_right_reg[32] [5]),
        .O(_carry_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[0] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[0]),
        .Q(avg_left[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[10] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[10]),
        .Q(avg_left[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[11] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[11]),
        .Q(avg_left[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[12] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[12]),
        .Q(avg_left[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[13] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[13]),
        .Q(avg_left[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[14] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[14]),
        .Q(avg_left[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[15] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[15]),
        .Q(avg_left[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[16] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[16]),
        .Q(avg_left[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[17] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[17]),
        .Q(avg_left[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[18] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[18]),
        .Q(avg_left[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[19] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[19]),
        .Q(avg_left[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[1] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[1]),
        .Q(avg_left[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[20] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[20]),
        .Q(avg_left[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[21] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[21]),
        .Q(avg_left[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[22] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[22]),
        .Q(avg_left[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[23] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[23]),
        .Q(avg_left[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[2] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[2]),
        .Q(avg_left[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[3] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[3]),
        .Q(avg_left[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[4] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[4]),
        .Q(avg_left[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[5] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[5]),
        .Q(avg_left[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[6] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[6]),
        .Q(avg_left[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[7] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[7]),
        .Q(avg_left[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[8] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[8]),
        .Q(avg_left[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[9] 
       (.C(aclk),
        .CE(avg_left0),
        .D(lDadR4dsP_dspDelayedAccum[9]),
        .Q(avg_left[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h20)) 
    \avg_right[23]_i_1 
       (.I0(aresetn),
        .I1(state[2]),
        .I2(state[1]),
        .O(avg_left0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[0] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry_n_7),
        .Q(avg_right[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[10] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__1_n_5),
        .Q(avg_right[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[11] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__1_n_4),
        .Q(avg_right[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[12] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__2_n_7),
        .Q(avg_right[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[13] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__2_n_6),
        .Q(avg_right[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[14] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__2_n_5),
        .Q(avg_right[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[15] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__2_n_4),
        .Q(avg_right[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[16] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__3_n_7),
        .Q(avg_right[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[17] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__3_n_6),
        .Q(avg_right[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[18] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__3_n_5),
        .Q(avg_right[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[19] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__3_n_4),
        .Q(avg_right[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[1] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry_n_6),
        .Q(avg_right[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[20] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__4_n_7),
        .Q(avg_right[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[21] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__4_n_6),
        .Q(avg_right[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[22] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__4_n_5),
        .Q(avg_right[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[23] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__4_n_4),
        .Q(avg_right[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[2] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry_n_5),
        .Q(avg_right[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[3] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry_n_4),
        .Q(avg_right[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[4] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__0_n_7),
        .Q(avg_right[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[5] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__0_n_6),
        .Q(avg_right[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[6] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__0_n_5),
        .Q(avg_right[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[7] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__0_n_4),
        .Q(avg_right[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[8] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__1_n_7),
        .Q(avg_right[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[9] 
       (.C(aclk),
        .CE(avg_left0),
        .D(_carry__1_n_6),
        .Q(avg_right[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000010)) 
    \buffer_left[0][23]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(s_axis_tvalid),
        .I3(s_axis_tlast),
        .I4(state[1]),
        .O(\buffer_left[0]_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][0] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\buffer_left_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][10] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\buffer_left_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][11] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\buffer_left_reg[0] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][12] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\buffer_left_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][13] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\buffer_left_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][14] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\buffer_left_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][15] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\buffer_left_reg[0] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][16] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(\buffer_left_reg[0] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][17] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(\buffer_left_reg[0] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][18] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(\buffer_left_reg[0] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][19] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(\buffer_left_reg[0] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][1] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\buffer_left_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][20] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(\buffer_left_reg[0] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][21] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(\buffer_left_reg[0] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][22] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(\buffer_left_reg[0] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][23] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(\buffer_left_reg[0] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][2] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\buffer_left_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][3] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\buffer_left_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][4] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\buffer_left_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][5] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\buffer_left_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][6] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\buffer_left_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][7] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\buffer_left_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][8] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\buffer_left_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_left_reg[0][9] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\buffer_left_reg[0] [9]));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [10]),
        .Q(\buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [11]),
        .Q(\buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [12]),
        .Q(\buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [13]),
        .Q(\buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [14]),
        .Q(\buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [15]),
        .Q(\buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [16]),
        .Q(\buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [17]),
        .Q(\buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [18]),
        .Q(\buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [19]),
        .Q(\buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [20]),
        .Q(\buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [21]),
        .Q(\buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [22]),
        .Q(\buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [23]),
        .Q(\buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [5]),
        .Q(\buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [6]),
        .Q(\buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [7]),
        .Q(\buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [8]),
        .Q(\buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_left_reg[30] " *) 
  (* srl_name = "\U0/buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_left[0]_1 ),
        .CLK(aclk),
        .D(\buffer_left_reg[0] [9]),
        .Q(\buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q31(\NLW_buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_Q31_UNCONNECTED ));
  FDRE \buffer_left_reg[31][10]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][10]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][10]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][11]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][11]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][11]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][12]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][12]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][12]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][13]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][13]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][13]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][14]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][14]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][14]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][15]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][15]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][15]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][16]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][16]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][16]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][17]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][17]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][17]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][18]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][18]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][18]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][19]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][19]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][19]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][20]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][20]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][20]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][21]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][21]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][21]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][22]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][22]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][22]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][23]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][23]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][23]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][5]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][5]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][5]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][6]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][6]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][6]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][7]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][7]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][7]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][8]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][8]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][8]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \buffer_left_reg[31][9]_U0_buffer_left_reg_c_59 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .D(\buffer_left_reg[30][9]_srl30_U0_buffer_left_reg_c_58_n_0 ),
        .Q(\buffer_left_reg[31][9]_U0_buffer_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDCE \buffer_left_reg[32][10] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__12_n_0),
        .Q(\buffer_left_reg[32] [10]));
  FDCE \buffer_left_reg[32][11] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__11_n_0),
        .Q(\buffer_left_reg[32] [11]));
  FDCE \buffer_left_reg[32][12] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__10_n_0),
        .Q(\buffer_left_reg[32] [12]));
  FDCE \buffer_left_reg[32][13] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__9_n_0),
        .Q(\buffer_left_reg[32] [13]));
  FDCE \buffer_left_reg[32][14] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__8_n_0),
        .Q(\buffer_left_reg[32] [14]));
  FDCE \buffer_left_reg[32][15] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__7_n_0),
        .Q(\buffer_left_reg[32] [15]));
  FDCE \buffer_left_reg[32][16] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__6_n_0),
        .Q(\buffer_left_reg[32] [16]));
  FDCE \buffer_left_reg[32][17] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__5_n_0),
        .Q(\buffer_left_reg[32] [17]));
  FDCE \buffer_left_reg[32][18] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__4_n_0),
        .Q(\buffer_left_reg[32] [18]));
  FDCE \buffer_left_reg[32][19] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__3_n_0),
        .Q(\buffer_left_reg[32] [19]));
  FDCE \buffer_left_reg[32][20] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__2_n_0),
        .Q(\buffer_left_reg[32] [20]));
  FDCE \buffer_left_reg[32][21] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__1_n_0),
        .Q(\buffer_left_reg[32] [21]));
  FDCE \buffer_left_reg[32][22] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__0_n_0),
        .Q(\buffer_left_reg[32] [22]));
  FDCE \buffer_left_reg[32][23] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate_n_0),
        .Q(\buffer_left_reg[32] [23]));
  FDCE \buffer_left_reg[32][5] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__17_n_0),
        .Q(\buffer_left_reg[32] [5]));
  FDCE \buffer_left_reg[32][6] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__16_n_0),
        .Q(\buffer_left_reg[32] [6]));
  FDCE \buffer_left_reg[32][7] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__15_n_0),
        .Q(\buffer_left_reg[32] [7]));
  FDCE \buffer_left_reg[32][8] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__14_n_0),
        .Q(\buffer_left_reg[32] [8]));
  FDCE \buffer_left_reg[32][9] 
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_gate__13_n_0),
        .Q(\buffer_left_reg[32] [9]));
  FDCE buffer_left_reg_c
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(1'b1),
        .Q(buffer_left_reg_c_n_0));
  FDCE buffer_left_reg_c_30
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_n_0),
        .Q(buffer_left_reg_c_30_n_0));
  FDCE buffer_left_reg_c_31
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_30_n_0),
        .Q(buffer_left_reg_c_31_n_0));
  FDCE buffer_left_reg_c_32
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_31_n_0),
        .Q(buffer_left_reg_c_32_n_0));
  FDCE buffer_left_reg_c_33
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_32_n_0),
        .Q(buffer_left_reg_c_33_n_0));
  FDCE buffer_left_reg_c_34
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_33_n_0),
        .Q(buffer_left_reg_c_34_n_0));
  FDCE buffer_left_reg_c_35
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_34_n_0),
        .Q(buffer_left_reg_c_35_n_0));
  FDCE buffer_left_reg_c_36
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_35_n_0),
        .Q(buffer_left_reg_c_36_n_0));
  FDCE buffer_left_reg_c_37
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_36_n_0),
        .Q(buffer_left_reg_c_37_n_0));
  FDCE buffer_left_reg_c_38
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_37_n_0),
        .Q(buffer_left_reg_c_38_n_0));
  FDCE buffer_left_reg_c_39
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_38_n_0),
        .Q(buffer_left_reg_c_39_n_0));
  FDCE buffer_left_reg_c_40
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_39_n_0),
        .Q(buffer_left_reg_c_40_n_0));
  FDCE buffer_left_reg_c_41
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_40_n_0),
        .Q(buffer_left_reg_c_41_n_0));
  FDCE buffer_left_reg_c_42
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_41_n_0),
        .Q(buffer_left_reg_c_42_n_0));
  FDCE buffer_left_reg_c_43
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_42_n_0),
        .Q(buffer_left_reg_c_43_n_0));
  FDCE buffer_left_reg_c_44
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_43_n_0),
        .Q(buffer_left_reg_c_44_n_0));
  FDCE buffer_left_reg_c_45
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_44_n_0),
        .Q(buffer_left_reg_c_45_n_0));
  FDCE buffer_left_reg_c_46
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_45_n_0),
        .Q(buffer_left_reg_c_46_n_0));
  FDCE buffer_left_reg_c_47
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_46_n_0),
        .Q(buffer_left_reg_c_47_n_0));
  FDCE buffer_left_reg_c_48
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_47_n_0),
        .Q(buffer_left_reg_c_48_n_0));
  FDCE buffer_left_reg_c_49
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_48_n_0),
        .Q(buffer_left_reg_c_49_n_0));
  FDCE buffer_left_reg_c_50
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_49_n_0),
        .Q(buffer_left_reg_c_50_n_0));
  FDCE buffer_left_reg_c_51
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_50_n_0),
        .Q(buffer_left_reg_c_51_n_0));
  FDCE buffer_left_reg_c_52
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_51_n_0),
        .Q(buffer_left_reg_c_52_n_0));
  FDCE buffer_left_reg_c_53
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_52_n_0),
        .Q(buffer_left_reg_c_53_n_0));
  FDCE buffer_left_reg_c_54
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_53_n_0),
        .Q(buffer_left_reg_c_54_n_0));
  FDCE buffer_left_reg_c_55
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_54_n_0),
        .Q(buffer_left_reg_c_55_n_0));
  FDCE buffer_left_reg_c_56
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_55_n_0),
        .Q(buffer_left_reg_c_56_n_0));
  FDCE buffer_left_reg_c_57
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_56_n_0),
        .Q(buffer_left_reg_c_57_n_0));
  FDCE buffer_left_reg_c_58
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_57_n_0),
        .Q(buffer_left_reg_c_58_n_0));
  FDCE buffer_left_reg_c_59
       (.C(aclk),
        .CE(\buffer_left[0]_1 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_left_reg_c_58_n_0),
        .Q(buffer_left_reg_c_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate
       (.I0(\buffer_left_reg[31][23]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__0
       (.I0(\buffer_left_reg[31][22]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__1
       (.I0(\buffer_left_reg[31][21]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__10
       (.I0(\buffer_left_reg[31][12]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__11
       (.I0(\buffer_left_reg[31][11]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__12
       (.I0(\buffer_left_reg[31][10]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__13
       (.I0(\buffer_left_reg[31][9]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__14
       (.I0(\buffer_left_reg[31][8]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__15
       (.I0(\buffer_left_reg[31][7]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__16
       (.I0(\buffer_left_reg[31][6]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__17
       (.I0(\buffer_left_reg[31][5]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__2
       (.I0(\buffer_left_reg[31][20]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__3
       (.I0(\buffer_left_reg[31][19]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__4
       (.I0(\buffer_left_reg[31][18]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__5
       (.I0(\buffer_left_reg[31][17]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__6
       (.I0(\buffer_left_reg[31][16]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__7
       (.I0(\buffer_left_reg[31][15]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__8
       (.I0(\buffer_left_reg[31][14]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_left_reg_gate__9
       (.I0(\buffer_left_reg[31][13]_U0_buffer_left_reg_c_59_n_0 ),
        .I1(buffer_left_reg_c_59_n_0),
        .O(buffer_left_reg_gate__9_n_0));
  LUT5 #(
    .INIT(32'h10000000)) 
    \buffer_right[0][23]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(s_axis_tvalid),
        .I4(s_axis_tlast),
        .O(\buffer_right[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][0] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\buffer_right_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][10] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(\buffer_right_reg[0] [10]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][11] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(\buffer_right_reg[0] [11]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][12] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(\buffer_right_reg[0] [12]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][13] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(\buffer_right_reg[0] [13]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][14] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(\buffer_right_reg[0] [14]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][15] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(\buffer_right_reg[0] [15]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][16] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(\buffer_right_reg[0] [16]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][17] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(\buffer_right_reg[0] [17]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][18] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(\buffer_right_reg[0] [18]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][19] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(\buffer_right_reg[0] [19]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][1] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\buffer_right_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][20] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(\buffer_right_reg[0] [20]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][21] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[21]),
        .Q(\buffer_right_reg[0] [21]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][22] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(\buffer_right_reg[0] [22]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][23] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(\buffer_right_reg[0] [23]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][2] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\buffer_right_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][3] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\buffer_right_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][4] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\buffer_right_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][5] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(\buffer_right_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][6] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(\buffer_right_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][7] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(\buffer_right_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][8] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(\buffer_right_reg[0] [8]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_right_reg[0][9] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(\buffer_right_reg[0] [9]));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [10]),
        .Q(\buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [11]),
        .Q(\buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [12]),
        .Q(\buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [13]),
        .Q(\buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [14]),
        .Q(\buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [15]),
        .Q(\buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [16]),
        .Q(\buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [17]),
        .Q(\buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [18]),
        .Q(\buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [19]),
        .Q(\buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [20]),
        .Q(\buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [21]),
        .Q(\buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [22]),
        .Q(\buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [23]),
        .Q(\buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [5]),
        .Q(\buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [6]),
        .Q(\buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [7]),
        .Q(\buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [8]),
        .Q(\buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/buffer_right_reg[30] " *) 
  (* srl_name = "\U0/buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(\buffer_right[0]_0 ),
        .CLK(aclk),
        .D(\buffer_right_reg[0] [9]),
        .Q(\buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q31(\NLW_buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_Q31_UNCONNECTED ));
  FDRE \buffer_right_reg[31][10]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][10]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][10]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][11]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][11]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][11]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][12]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][12]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][12]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][13]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][13]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][13]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][14]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][14]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][14]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][15]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][15]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][15]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][16]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][16]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][16]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][17]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][17]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][17]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][18]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][18]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][18]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][19]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][19]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][19]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][20]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][20]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][20]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][21]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][21]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][21]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][22]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][22]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][22]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][23]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][23]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][23]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][5]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][5]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][5]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][6]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][6]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][6]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][7]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][7]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][7]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][8]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][8]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][8]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \buffer_right_reg[31][9]_U0_buffer_right_reg_c_29 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .D(\buffer_right_reg[30][9]_srl30_U0_buffer_right_reg_c_28_n_0 ),
        .Q(\buffer_right_reg[31][9]_U0_buffer_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDCE \buffer_right_reg[32][10] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__12_n_0),
        .Q(\buffer_right_reg[32] [10]));
  FDCE \buffer_right_reg[32][11] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__11_n_0),
        .Q(\buffer_right_reg[32] [11]));
  FDCE \buffer_right_reg[32][12] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__10_n_0),
        .Q(\buffer_right_reg[32] [12]));
  FDCE \buffer_right_reg[32][13] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__9_n_0),
        .Q(\buffer_right_reg[32] [13]));
  FDCE \buffer_right_reg[32][14] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__8_n_0),
        .Q(\buffer_right_reg[32] [14]));
  FDCE \buffer_right_reg[32][15] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__7_n_0),
        .Q(\buffer_right_reg[32] [15]));
  FDCE \buffer_right_reg[32][16] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__6_n_0),
        .Q(\buffer_right_reg[32] [16]));
  FDCE \buffer_right_reg[32][17] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__5_n_0),
        .Q(\buffer_right_reg[32] [17]));
  FDCE \buffer_right_reg[32][18] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__4_n_0),
        .Q(\buffer_right_reg[32] [18]));
  FDCE \buffer_right_reg[32][19] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__3_n_0),
        .Q(\buffer_right_reg[32] [19]));
  FDCE \buffer_right_reg[32][20] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__2_n_0),
        .Q(\buffer_right_reg[32] [20]));
  FDCE \buffer_right_reg[32][21] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__1_n_0),
        .Q(\buffer_right_reg[32] [21]));
  FDCE \buffer_right_reg[32][22] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__0_n_0),
        .Q(\buffer_right_reg[32] [22]));
  FDCE \buffer_right_reg[32][23] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate_n_0),
        .Q(\buffer_right_reg[32] [23]));
  FDCE \buffer_right_reg[32][5] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__17_n_0),
        .Q(\buffer_right_reg[32] [5]));
  FDCE \buffer_right_reg[32][6] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__16_n_0),
        .Q(\buffer_right_reg[32] [6]));
  FDCE \buffer_right_reg[32][7] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__15_n_0),
        .Q(\buffer_right_reg[32] [7]));
  FDCE \buffer_right_reg[32][8] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__14_n_0),
        .Q(\buffer_right_reg[32] [8]));
  FDCE \buffer_right_reg[32][9] 
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_gate__13_n_0),
        .Q(\buffer_right_reg[32] [9]));
  FDCE buffer_right_reg_c
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(1'b1),
        .Q(buffer_right_reg_c_n_0));
  FDCE buffer_right_reg_c_0
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_n_0),
        .Q(buffer_right_reg_c_0_n_0));
  FDCE buffer_right_reg_c_1
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_0_n_0),
        .Q(buffer_right_reg_c_1_n_0));
  FDCE buffer_right_reg_c_10
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_9_n_0),
        .Q(buffer_right_reg_c_10_n_0));
  FDCE buffer_right_reg_c_11
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_10_n_0),
        .Q(buffer_right_reg_c_11_n_0));
  FDCE buffer_right_reg_c_12
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_11_n_0),
        .Q(buffer_right_reg_c_12_n_0));
  FDCE buffer_right_reg_c_13
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_12_n_0),
        .Q(buffer_right_reg_c_13_n_0));
  FDCE buffer_right_reg_c_14
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_13_n_0),
        .Q(buffer_right_reg_c_14_n_0));
  FDCE buffer_right_reg_c_15
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_14_n_0),
        .Q(buffer_right_reg_c_15_n_0));
  FDCE buffer_right_reg_c_16
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_15_n_0),
        .Q(buffer_right_reg_c_16_n_0));
  FDCE buffer_right_reg_c_17
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_16_n_0),
        .Q(buffer_right_reg_c_17_n_0));
  FDCE buffer_right_reg_c_18
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_17_n_0),
        .Q(buffer_right_reg_c_18_n_0));
  FDCE buffer_right_reg_c_19
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_18_n_0),
        .Q(buffer_right_reg_c_19_n_0));
  FDCE buffer_right_reg_c_2
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_1_n_0),
        .Q(buffer_right_reg_c_2_n_0));
  FDCE buffer_right_reg_c_20
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_19_n_0),
        .Q(buffer_right_reg_c_20_n_0));
  FDCE buffer_right_reg_c_21
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_20_n_0),
        .Q(buffer_right_reg_c_21_n_0));
  FDCE buffer_right_reg_c_22
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_21_n_0),
        .Q(buffer_right_reg_c_22_n_0));
  FDCE buffer_right_reg_c_23
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_22_n_0),
        .Q(buffer_right_reg_c_23_n_0));
  FDCE buffer_right_reg_c_24
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_23_n_0),
        .Q(buffer_right_reg_c_24_n_0));
  FDCE buffer_right_reg_c_25
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_24_n_0),
        .Q(buffer_right_reg_c_25_n_0));
  FDCE buffer_right_reg_c_26
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_25_n_0),
        .Q(buffer_right_reg_c_26_n_0));
  FDCE buffer_right_reg_c_27
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_26_n_0),
        .Q(buffer_right_reg_c_27_n_0));
  FDCE buffer_right_reg_c_28
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_27_n_0),
        .Q(buffer_right_reg_c_28_n_0));
  FDCE buffer_right_reg_c_29
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_28_n_0),
        .Q(buffer_right_reg_c_29_n_0));
  FDCE buffer_right_reg_c_3
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_2_n_0),
        .Q(buffer_right_reg_c_3_n_0));
  FDCE buffer_right_reg_c_4
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_3_n_0),
        .Q(buffer_right_reg_c_4_n_0));
  FDCE buffer_right_reg_c_5
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_4_n_0),
        .Q(buffer_right_reg_c_5_n_0));
  FDCE buffer_right_reg_c_6
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_5_n_0),
        .Q(buffer_right_reg_c_6_n_0));
  FDCE buffer_right_reg_c_7
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_6_n_0),
        .Q(buffer_right_reg_c_7_n_0));
  FDCE buffer_right_reg_c_8
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_7_n_0),
        .Q(buffer_right_reg_c_8_n_0));
  FDCE buffer_right_reg_c_9
       (.C(aclk),
        .CE(\buffer_right[0]_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(buffer_right_reg_c_8_n_0),
        .Q(buffer_right_reg_c_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate
       (.I0(\buffer_right_reg[31][23]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__0
       (.I0(\buffer_right_reg[31][22]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__1
       (.I0(\buffer_right_reg[31][21]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__10
       (.I0(\buffer_right_reg[31][12]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__11
       (.I0(\buffer_right_reg[31][11]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__12
       (.I0(\buffer_right_reg[31][10]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__13
       (.I0(\buffer_right_reg[31][9]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__14
       (.I0(\buffer_right_reg[31][8]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__15
       (.I0(\buffer_right_reg[31][7]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__16
       (.I0(\buffer_right_reg[31][6]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__17
       (.I0(\buffer_right_reg[31][5]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__2
       (.I0(\buffer_right_reg[31][20]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__3
       (.I0(\buffer_right_reg[31][19]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__4
       (.I0(\buffer_right_reg[31][18]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__5
       (.I0(\buffer_right_reg[31][17]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__6
       (.I0(\buffer_right_reg[31][16]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__7
       (.I0(\buffer_right_reg[31][15]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__8
       (.I0(\buffer_right_reg[31][14]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    buffer_right_reg_gate__9
       (.I0(\buffer_right_reg[31][13]_U0_buffer_right_reg_c_29_n_0 ),
        .I1(buffer_right_reg_c_29_n_0),
        .O(buffer_right_reg_gate__9_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[0]_i_1 
       (.I0(avg_right[0]),
        .I1(\buffer_right_reg[0] [0]),
        .I2(state[0]),
        .I3(avg_left[0]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [0]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[10]_i_1 
       (.I0(avg_right[10]),
        .I1(\buffer_right_reg[0] [10]),
        .I2(state[0]),
        .I3(avg_left[10]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [10]),
        .O(\m_axis_tdata[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[11]_i_1 
       (.I0(avg_right[11]),
        .I1(\buffer_right_reg[0] [11]),
        .I2(state[0]),
        .I3(avg_left[11]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [11]),
        .O(\m_axis_tdata[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[12]_i_1 
       (.I0(avg_right[12]),
        .I1(\buffer_right_reg[0] [12]),
        .I2(state[0]),
        .I3(avg_left[12]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [12]),
        .O(\m_axis_tdata[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[13]_i_1 
       (.I0(avg_right[13]),
        .I1(\buffer_right_reg[0] [13]),
        .I2(state[0]),
        .I3(avg_left[13]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [13]),
        .O(\m_axis_tdata[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[14]_i_1 
       (.I0(avg_right[14]),
        .I1(\buffer_right_reg[0] [14]),
        .I2(state[0]),
        .I3(avg_left[14]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [14]),
        .O(\m_axis_tdata[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[15]_i_1 
       (.I0(avg_right[15]),
        .I1(\buffer_right_reg[0] [15]),
        .I2(state[0]),
        .I3(avg_left[15]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [15]),
        .O(\m_axis_tdata[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[16]_i_1 
       (.I0(avg_right[16]),
        .I1(\buffer_right_reg[0] [16]),
        .I2(state[0]),
        .I3(avg_left[16]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [16]),
        .O(\m_axis_tdata[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[17]_i_1 
       (.I0(avg_right[17]),
        .I1(\buffer_right_reg[0] [17]),
        .I2(state[0]),
        .I3(avg_left[17]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [17]),
        .O(\m_axis_tdata[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[18]_i_1 
       (.I0(avg_right[18]),
        .I1(\buffer_right_reg[0] [18]),
        .I2(state[0]),
        .I3(avg_left[18]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [18]),
        .O(\m_axis_tdata[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[19]_i_1 
       (.I0(avg_right[19]),
        .I1(\buffer_right_reg[0] [19]),
        .I2(state[0]),
        .I3(avg_left[19]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [19]),
        .O(\m_axis_tdata[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[1]_i_1 
       (.I0(avg_right[1]),
        .I1(\buffer_right_reg[0] [1]),
        .I2(state[0]),
        .I3(avg_left[1]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [1]),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[20]_i_1 
       (.I0(avg_right[20]),
        .I1(\buffer_right_reg[0] [20]),
        .I2(state[0]),
        .I3(avg_left[20]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [20]),
        .O(\m_axis_tdata[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[21]_i_1 
       (.I0(avg_right[21]),
        .I1(\buffer_right_reg[0] [21]),
        .I2(state[0]),
        .I3(avg_left[21]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [21]),
        .O(\m_axis_tdata[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[22]_i_1 
       (.I0(avg_right[22]),
        .I1(\buffer_right_reg[0] [22]),
        .I2(state[0]),
        .I3(avg_left[22]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [22]),
        .O(\m_axis_tdata[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \m_axis_tdata[23]_i_1 
       (.I0(aresetn),
        .I1(state[2]),
        .I2(m_axis_tready),
        .I3(state[1]),
        .O(m_axis_tdata0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[23]_i_2 
       (.I0(avg_right[23]),
        .I1(\buffer_right_reg[0] [23]),
        .I2(state[0]),
        .I3(avg_left[23]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [23]),
        .O(\m_axis_tdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[2]_i_1 
       (.I0(avg_right[2]),
        .I1(\buffer_right_reg[0] [2]),
        .I2(state[0]),
        .I3(avg_left[2]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [2]),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[3]_i_1 
       (.I0(avg_right[3]),
        .I1(\buffer_right_reg[0] [3]),
        .I2(state[0]),
        .I3(avg_left[3]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [3]),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[4]_i_1 
       (.I0(avg_right[4]),
        .I1(\buffer_right_reg[0] [4]),
        .I2(state[0]),
        .I3(avg_left[4]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [4]),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[5]_i_1 
       (.I0(avg_right[5]),
        .I1(\buffer_right_reg[0] [5]),
        .I2(state[0]),
        .I3(avg_left[5]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [5]),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[6]_i_1 
       (.I0(avg_right[6]),
        .I1(\buffer_right_reg[0] [6]),
        .I2(state[0]),
        .I3(avg_left[6]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [6]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[7]_i_1 
       (.I0(avg_right[7]),
        .I1(\buffer_right_reg[0] [7]),
        .I2(state[0]),
        .I3(avg_left[7]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [7]),
        .O(\m_axis_tdata[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[8]_i_1 
       (.I0(avg_right[8]),
        .I1(\buffer_right_reg[0] [8]),
        .I2(state[0]),
        .I3(avg_left[8]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [8]),
        .O(\m_axis_tdata[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[9]_i_1 
       (.I0(avg_right[9]),
        .I1(\buffer_right_reg[0] [9]),
        .I2(state[0]),
        .I3(avg_left[9]),
        .I4(filter_enable),
        .I5(\buffer_left_reg[0] [9]),
        .O(\m_axis_tdata[9]_i_1_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[10]_i_1_n_0 ),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[11]_i_1_n_0 ),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[12]_i_1_n_0 ),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[13]_i_1_n_0 ),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[14]_i_1_n_0 ),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[15]_i_1_n_0 ),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[16]_i_1_n_0 ),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[17]_i_1_n_0 ),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[18]_i_1_n_0 ),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[19]_i_1_n_0 ),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[20]_i_1_n_0 ),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[21]_i_1_n_0 ),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[22]_i_1_n_0 ),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[23]_i_2_n_0 ),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[7]_i_1_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[8]_i_1_n_0 ),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[9]_i_1_n_0 ),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h40)) 
    m_axis_tlast_INST_0
       (.I0(state[1]),
        .I1(state[0]),
        .I2(state[2]),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    m_axis_tvalid_INST_0
       (.I0(state[2]),
        .I1(state[1]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axis_tready_INST_0
       (.I0(state[1]),
        .I1(state[2]),
        .O(s_axis_tready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
