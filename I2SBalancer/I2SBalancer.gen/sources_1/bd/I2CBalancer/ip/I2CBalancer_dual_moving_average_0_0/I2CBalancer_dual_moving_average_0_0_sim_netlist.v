// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu May 25 12:42:32 2023
// Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
//               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_dual_moving_average_0_0/I2CBalancer_dual_moving_average_0_0_sim_netlist.v}
// Design      : I2CBalancer_dual_moving_average_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2CBalancer_dual_moving_average_0_0,dual_moving_average,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "dual_moving_average,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module I2CBalancer_dual_moving_average_0_0
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
  wire m_axis_tready;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign m_axis_tlast = s_axis_tlast;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  I2CBalancer_dual_moving_average_0_0_dual_moving_average U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .filter_enable(filter_enable),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "dual_moving_average" *) 
module I2CBalancer_dual_moving_average_0_0_dual_moving_average
   (m_axis_tdata,
    aclk,
    s_axis_tdata,
    s_axis_tvalid,
    filter_enable,
    s_axis_tlast,
    m_axis_tready,
    aresetn);
  output [23:0]m_axis_tdata;
  input aclk;
  input [23:0]s_axis_tdata;
  input s_axis_tvalid;
  input filter_enable;
  input s_axis_tlast;
  input m_axis_tready;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire [23:0]avg_left;
  wire [23:0]avg_left0;
  wire avg_left0_0;
  wire avg_left0_carry__0_i_1_n_0;
  wire avg_left0_carry__0_i_2_n_0;
  wire avg_left0_carry__0_i_3_n_0;
  wire avg_left0_carry__0_i_4_n_0;
  wire avg_left0_carry__0_i_5_n_0;
  wire avg_left0_carry__0_i_6_n_0;
  wire avg_left0_carry__0_i_7_n_0;
  wire avg_left0_carry__0_i_8_n_0;
  wire avg_left0_carry__0_n_0;
  wire avg_left0_carry__0_n_1;
  wire avg_left0_carry__0_n_2;
  wire avg_left0_carry__0_n_3;
  wire avg_left0_carry__1_i_1_n_0;
  wire avg_left0_carry__1_i_2_n_0;
  wire avg_left0_carry__1_i_3_n_0;
  wire avg_left0_carry__1_i_4_n_0;
  wire avg_left0_carry__1_i_5_n_0;
  wire avg_left0_carry__1_i_6_n_0;
  wire avg_left0_carry__1_i_7_n_0;
  wire avg_left0_carry__1_i_8_n_0;
  wire avg_left0_carry__1_n_0;
  wire avg_left0_carry__1_n_1;
  wire avg_left0_carry__1_n_2;
  wire avg_left0_carry__1_n_3;
  wire avg_left0_carry__2_i_1_n_0;
  wire avg_left0_carry__2_i_2_n_0;
  wire avg_left0_carry__2_i_3_n_0;
  wire avg_left0_carry__2_i_4_n_0;
  wire avg_left0_carry__2_i_5_n_0;
  wire avg_left0_carry__2_i_6_n_0;
  wire avg_left0_carry__2_i_7_n_0;
  wire avg_left0_carry__2_i_8_n_0;
  wire avg_left0_carry__2_n_0;
  wire avg_left0_carry__2_n_1;
  wire avg_left0_carry__2_n_2;
  wire avg_left0_carry__2_n_3;
  wire avg_left0_carry__3_i_1_n_0;
  wire avg_left0_carry__3_i_2_n_0;
  wire avg_left0_carry__3_i_3_n_0;
  wire avg_left0_carry__3_i_4_n_0;
  wire avg_left0_carry__3_i_5_n_0;
  wire avg_left0_carry__3_i_6_n_0;
  wire avg_left0_carry__3_i_7_n_0;
  wire avg_left0_carry__3_i_8_n_0;
  wire avg_left0_carry__3_n_0;
  wire avg_left0_carry__3_n_1;
  wire avg_left0_carry__3_n_2;
  wire avg_left0_carry__3_n_3;
  wire avg_left0_carry__4_i_1_n_0;
  wire avg_left0_carry__4_i_2_n_0;
  wire avg_left0_carry__4_i_3_n_0;
  wire avg_left0_carry__4_i_4_n_0;
  wire avg_left0_carry__4_n_1;
  wire avg_left0_carry__4_n_2;
  wire avg_left0_carry__4_n_3;
  wire avg_left0_carry_i_1_n_0;
  wire avg_left0_carry_i_2_n_0;
  wire avg_left0_carry_i_3_n_0;
  wire avg_left0_carry_i_4_n_0;
  wire avg_left0_carry_i_5_n_0;
  wire avg_left0_carry_i_6_n_0;
  wire avg_left0_carry_i_7_n_0;
  wire avg_left0_carry_n_0;
  wire avg_left0_carry_n_1;
  wire avg_left0_carry_n_2;
  wire avg_left0_carry_n_3;
  wire avg_left_2;
  wire [23:0]avg_right;
  wire avg_right0;
  wire avg_right_1;
  wire filter_enable;
  wire \last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_58_n_0 ;
  wire \last_data_left_reg[30][10]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][11]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][12]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][13]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][14]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][15]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][16]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][17]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][18]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][19]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][20]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][21]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][22]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][23]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][5]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][6]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][7]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][8]_U0_last_data_left_reg_c_59_n_0 ;
  wire \last_data_left_reg[30][9]_U0_last_data_left_reg_c_59_n_0 ;
  wire [23:5]\last_data_left_reg[31] ;
  wire last_data_left_reg_c_30_n_0;
  wire last_data_left_reg_c_31_n_0;
  wire last_data_left_reg_c_32_n_0;
  wire last_data_left_reg_c_33_n_0;
  wire last_data_left_reg_c_34_n_0;
  wire last_data_left_reg_c_35_n_0;
  wire last_data_left_reg_c_36_n_0;
  wire last_data_left_reg_c_37_n_0;
  wire last_data_left_reg_c_38_n_0;
  wire last_data_left_reg_c_39_n_0;
  wire last_data_left_reg_c_40_n_0;
  wire last_data_left_reg_c_41_n_0;
  wire last_data_left_reg_c_42_n_0;
  wire last_data_left_reg_c_43_n_0;
  wire last_data_left_reg_c_44_n_0;
  wire last_data_left_reg_c_45_n_0;
  wire last_data_left_reg_c_46_n_0;
  wire last_data_left_reg_c_47_n_0;
  wire last_data_left_reg_c_48_n_0;
  wire last_data_left_reg_c_49_n_0;
  wire last_data_left_reg_c_50_n_0;
  wire last_data_left_reg_c_51_n_0;
  wire last_data_left_reg_c_52_n_0;
  wire last_data_left_reg_c_53_n_0;
  wire last_data_left_reg_c_54_n_0;
  wire last_data_left_reg_c_55_n_0;
  wire last_data_left_reg_c_56_n_0;
  wire last_data_left_reg_c_57_n_0;
  wire last_data_left_reg_c_58_n_0;
  wire last_data_left_reg_c_59_n_0;
  wire last_data_left_reg_c_n_0;
  wire last_data_left_reg_gate__0_n_0;
  wire last_data_left_reg_gate__10_n_0;
  wire last_data_left_reg_gate__11_n_0;
  wire last_data_left_reg_gate__12_n_0;
  wire last_data_left_reg_gate__13_n_0;
  wire last_data_left_reg_gate__14_n_0;
  wire last_data_left_reg_gate__15_n_0;
  wire last_data_left_reg_gate__16_n_0;
  wire last_data_left_reg_gate__17_n_0;
  wire last_data_left_reg_gate__1_n_0;
  wire last_data_left_reg_gate__2_n_0;
  wire last_data_left_reg_gate__3_n_0;
  wire last_data_left_reg_gate__4_n_0;
  wire last_data_left_reg_gate__5_n_0;
  wire last_data_left_reg_gate__6_n_0;
  wire last_data_left_reg_gate__7_n_0;
  wire last_data_left_reg_gate__8_n_0;
  wire last_data_left_reg_gate__9_n_0;
  wire last_data_left_reg_gate_n_0;
  wire \last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_28_n_0 ;
  wire \last_data_right_reg[30][10]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][11]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][12]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][13]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][14]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][15]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][16]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][17]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][18]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][19]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][20]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][21]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][22]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][23]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][5]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][6]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][7]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][8]_U0_last_data_right_reg_c_29_n_0 ;
  wire \last_data_right_reg[30][9]_U0_last_data_right_reg_c_29_n_0 ;
  wire [23:5]\last_data_right_reg[31] ;
  wire last_data_right_reg_c_0_n_0;
  wire last_data_right_reg_c_10_n_0;
  wire last_data_right_reg_c_11_n_0;
  wire last_data_right_reg_c_12_n_0;
  wire last_data_right_reg_c_13_n_0;
  wire last_data_right_reg_c_14_n_0;
  wire last_data_right_reg_c_15_n_0;
  wire last_data_right_reg_c_16_n_0;
  wire last_data_right_reg_c_17_n_0;
  wire last_data_right_reg_c_18_n_0;
  wire last_data_right_reg_c_19_n_0;
  wire last_data_right_reg_c_1_n_0;
  wire last_data_right_reg_c_20_n_0;
  wire last_data_right_reg_c_21_n_0;
  wire last_data_right_reg_c_22_n_0;
  wire last_data_right_reg_c_23_n_0;
  wire last_data_right_reg_c_24_n_0;
  wire last_data_right_reg_c_25_n_0;
  wire last_data_right_reg_c_26_n_0;
  wire last_data_right_reg_c_27_n_0;
  wire last_data_right_reg_c_28_n_0;
  wire last_data_right_reg_c_29_n_0;
  wire last_data_right_reg_c_2_n_0;
  wire last_data_right_reg_c_3_n_0;
  wire last_data_right_reg_c_4_n_0;
  wire last_data_right_reg_c_5_n_0;
  wire last_data_right_reg_c_6_n_0;
  wire last_data_right_reg_c_7_n_0;
  wire last_data_right_reg_c_8_n_0;
  wire last_data_right_reg_c_9_n_0;
  wire last_data_right_reg_c_n_0;
  wire last_data_right_reg_gate__0_n_0;
  wire last_data_right_reg_gate__10_n_0;
  wire last_data_right_reg_gate__11_n_0;
  wire last_data_right_reg_gate__12_n_0;
  wire last_data_right_reg_gate__13_n_0;
  wire last_data_right_reg_gate__14_n_0;
  wire last_data_right_reg_gate__15_n_0;
  wire last_data_right_reg_gate__16_n_0;
  wire last_data_right_reg_gate__17_n_0;
  wire last_data_right_reg_gate__1_n_0;
  wire last_data_right_reg_gate__2_n_0;
  wire last_data_right_reg_gate__3_n_0;
  wire last_data_right_reg_gate__4_n_0;
  wire last_data_right_reg_gate__5_n_0;
  wire last_data_right_reg_gate__6_n_0;
  wire last_data_right_reg_gate__7_n_0;
  wire last_data_right_reg_gate__8_n_0;
  wire last_data_right_reg_gate__9_n_0;
  wire last_data_right_reg_gate_n_0;
  wire [23:0]m_axis_tdata;
  wire [23:0]m_axis_tdata0;
  wire m_axis_tdata0_carry__0_i_1_n_0;
  wire m_axis_tdata0_carry__0_i_2_n_0;
  wire m_axis_tdata0_carry__0_i_3_n_0;
  wire m_axis_tdata0_carry__0_i_4_n_0;
  wire m_axis_tdata0_carry__0_i_5_n_0;
  wire m_axis_tdata0_carry__0_i_6_n_0;
  wire m_axis_tdata0_carry__0_i_7_n_0;
  wire m_axis_tdata0_carry__0_i_8_n_0;
  wire m_axis_tdata0_carry__0_n_0;
  wire m_axis_tdata0_carry__0_n_1;
  wire m_axis_tdata0_carry__0_n_2;
  wire m_axis_tdata0_carry__0_n_3;
  wire m_axis_tdata0_carry__1_i_1_n_0;
  wire m_axis_tdata0_carry__1_i_2_n_0;
  wire m_axis_tdata0_carry__1_i_3_n_0;
  wire m_axis_tdata0_carry__1_i_4_n_0;
  wire m_axis_tdata0_carry__1_i_5_n_0;
  wire m_axis_tdata0_carry__1_i_6_n_0;
  wire m_axis_tdata0_carry__1_i_7_n_0;
  wire m_axis_tdata0_carry__1_i_8_n_0;
  wire m_axis_tdata0_carry__1_n_0;
  wire m_axis_tdata0_carry__1_n_1;
  wire m_axis_tdata0_carry__1_n_2;
  wire m_axis_tdata0_carry__1_n_3;
  wire m_axis_tdata0_carry__2_i_1_n_0;
  wire m_axis_tdata0_carry__2_i_2_n_0;
  wire m_axis_tdata0_carry__2_i_3_n_0;
  wire m_axis_tdata0_carry__2_i_4_n_0;
  wire m_axis_tdata0_carry__2_i_5_n_0;
  wire m_axis_tdata0_carry__2_i_6_n_0;
  wire m_axis_tdata0_carry__2_i_7_n_0;
  wire m_axis_tdata0_carry__2_i_8_n_0;
  wire m_axis_tdata0_carry__2_n_0;
  wire m_axis_tdata0_carry__2_n_1;
  wire m_axis_tdata0_carry__2_n_2;
  wire m_axis_tdata0_carry__2_n_3;
  wire m_axis_tdata0_carry__3_i_1_n_0;
  wire m_axis_tdata0_carry__3_i_2_n_0;
  wire m_axis_tdata0_carry__3_i_3_n_0;
  wire m_axis_tdata0_carry__3_i_4_n_0;
  wire m_axis_tdata0_carry__3_i_5_n_0;
  wire m_axis_tdata0_carry__3_i_6_n_0;
  wire m_axis_tdata0_carry__3_i_7_n_0;
  wire m_axis_tdata0_carry__3_i_8_n_0;
  wire m_axis_tdata0_carry__3_n_0;
  wire m_axis_tdata0_carry__3_n_1;
  wire m_axis_tdata0_carry__3_n_2;
  wire m_axis_tdata0_carry__3_n_3;
  wire m_axis_tdata0_carry__4_i_1_n_0;
  wire m_axis_tdata0_carry__4_i_2_n_0;
  wire m_axis_tdata0_carry__4_i_3_n_0;
  wire m_axis_tdata0_carry__4_i_4_n_0;
  wire m_axis_tdata0_carry__4_n_1;
  wire m_axis_tdata0_carry__4_n_2;
  wire m_axis_tdata0_carry__4_n_3;
  wire m_axis_tdata0_carry_i_1_n_0;
  wire m_axis_tdata0_carry_i_2_n_0;
  wire m_axis_tdata0_carry_i_3_n_0;
  wire m_axis_tdata0_carry_i_4_n_0;
  wire m_axis_tdata0_carry_i_5_n_0;
  wire m_axis_tdata0_carry_i_6_n_0;
  wire m_axis_tdata0_carry_i_7_n_0;
  wire m_axis_tdata0_carry_n_0;
  wire m_axis_tdata0_carry_n_1;
  wire m_axis_tdata0_carry_n_2;
  wire m_axis_tdata0_carry_n_3;
  wire \m_axis_tdata[0]_C_i_1_n_0 ;
  wire \m_axis_tdata[10]_C_i_1_n_0 ;
  wire \m_axis_tdata[11]_C_i_1_n_0 ;
  wire \m_axis_tdata[12]_C_i_1_n_0 ;
  wire \m_axis_tdata[13]_C_i_1_n_0 ;
  wire \m_axis_tdata[14]_C_i_1_n_0 ;
  wire \m_axis_tdata[15]_C_i_1_n_0 ;
  wire \m_axis_tdata[16]_C_i_1_n_0 ;
  wire \m_axis_tdata[17]_C_i_1_n_0 ;
  wire \m_axis_tdata[18]_C_i_1_n_0 ;
  wire \m_axis_tdata[19]_C_i_1_n_0 ;
  wire \m_axis_tdata[1]_C_i_1_n_0 ;
  wire \m_axis_tdata[20]_C_i_1_n_0 ;
  wire \m_axis_tdata[21]_C_i_1_n_0 ;
  wire \m_axis_tdata[22]_C_i_1_n_0 ;
  wire \m_axis_tdata[23]_C_i_1_n_0 ;
  wire \m_axis_tdata[23]_P_i_1_n_0 ;
  wire \m_axis_tdata[2]_C_i_1_n_0 ;
  wire \m_axis_tdata[3]_C_i_1_n_0 ;
  wire \m_axis_tdata[4]_C_i_1_n_0 ;
  wire \m_axis_tdata[5]_C_i_1_n_0 ;
  wire \m_axis_tdata[6]_C_i_1_n_0 ;
  wire \m_axis_tdata[7]_C_i_1_n_0 ;
  wire \m_axis_tdata[8]_C_i_1_n_0 ;
  wire \m_axis_tdata[9]_C_i_1_n_0 ;
  wire \m_axis_tdata_reg[0]_C_n_0 ;
  wire \m_axis_tdata_reg[0]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[0]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[0]_LDC_n_0 ;
  wire \m_axis_tdata_reg[0]_P_n_0 ;
  wire \m_axis_tdata_reg[10]_C_n_0 ;
  wire \m_axis_tdata_reg[10]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[10]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[10]_LDC_n_0 ;
  wire \m_axis_tdata_reg[10]_P_n_0 ;
  wire \m_axis_tdata_reg[11]_C_n_0 ;
  wire \m_axis_tdata_reg[11]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[11]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[11]_LDC_n_0 ;
  wire \m_axis_tdata_reg[11]_P_n_0 ;
  wire \m_axis_tdata_reg[12]_C_n_0 ;
  wire \m_axis_tdata_reg[12]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[12]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[12]_LDC_n_0 ;
  wire \m_axis_tdata_reg[12]_P_n_0 ;
  wire \m_axis_tdata_reg[13]_C_n_0 ;
  wire \m_axis_tdata_reg[13]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[13]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[13]_LDC_n_0 ;
  wire \m_axis_tdata_reg[13]_P_n_0 ;
  wire \m_axis_tdata_reg[14]_C_n_0 ;
  wire \m_axis_tdata_reg[14]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[14]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[14]_LDC_n_0 ;
  wire \m_axis_tdata_reg[14]_P_n_0 ;
  wire \m_axis_tdata_reg[15]_C_n_0 ;
  wire \m_axis_tdata_reg[15]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[15]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[15]_LDC_n_0 ;
  wire \m_axis_tdata_reg[15]_P_n_0 ;
  wire \m_axis_tdata_reg[16]_C_n_0 ;
  wire \m_axis_tdata_reg[16]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[16]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[16]_LDC_n_0 ;
  wire \m_axis_tdata_reg[16]_P_n_0 ;
  wire \m_axis_tdata_reg[17]_C_n_0 ;
  wire \m_axis_tdata_reg[17]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[17]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[17]_LDC_n_0 ;
  wire \m_axis_tdata_reg[17]_P_n_0 ;
  wire \m_axis_tdata_reg[18]_C_n_0 ;
  wire \m_axis_tdata_reg[18]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[18]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[18]_LDC_n_0 ;
  wire \m_axis_tdata_reg[18]_P_n_0 ;
  wire \m_axis_tdata_reg[19]_C_n_0 ;
  wire \m_axis_tdata_reg[19]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[19]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[19]_LDC_n_0 ;
  wire \m_axis_tdata_reg[19]_P_n_0 ;
  wire \m_axis_tdata_reg[1]_C_n_0 ;
  wire \m_axis_tdata_reg[1]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[1]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[1]_LDC_n_0 ;
  wire \m_axis_tdata_reg[1]_P_n_0 ;
  wire \m_axis_tdata_reg[20]_C_n_0 ;
  wire \m_axis_tdata_reg[20]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[20]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[20]_LDC_n_0 ;
  wire \m_axis_tdata_reg[20]_P_n_0 ;
  wire \m_axis_tdata_reg[21]_C_n_0 ;
  wire \m_axis_tdata_reg[21]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[21]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[21]_LDC_n_0 ;
  wire \m_axis_tdata_reg[21]_P_n_0 ;
  wire \m_axis_tdata_reg[22]_C_n_0 ;
  wire \m_axis_tdata_reg[22]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[22]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[22]_LDC_n_0 ;
  wire \m_axis_tdata_reg[22]_P_n_0 ;
  wire \m_axis_tdata_reg[23]_C_n_0 ;
  wire \m_axis_tdata_reg[23]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[23]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[23]_LDC_n_0 ;
  wire \m_axis_tdata_reg[23]_P_n_0 ;
  wire \m_axis_tdata_reg[2]_C_n_0 ;
  wire \m_axis_tdata_reg[2]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[2]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[2]_LDC_n_0 ;
  wire \m_axis_tdata_reg[2]_P_n_0 ;
  wire \m_axis_tdata_reg[3]_C_n_0 ;
  wire \m_axis_tdata_reg[3]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[3]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[3]_LDC_n_0 ;
  wire \m_axis_tdata_reg[3]_P_n_0 ;
  wire \m_axis_tdata_reg[4]_C_n_0 ;
  wire \m_axis_tdata_reg[4]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[4]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[4]_LDC_n_0 ;
  wire \m_axis_tdata_reg[4]_P_n_0 ;
  wire \m_axis_tdata_reg[5]_C_n_0 ;
  wire \m_axis_tdata_reg[5]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[5]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[5]_LDC_n_0 ;
  wire \m_axis_tdata_reg[5]_P_n_0 ;
  wire \m_axis_tdata_reg[6]_C_n_0 ;
  wire \m_axis_tdata_reg[6]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[6]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[6]_LDC_n_0 ;
  wire \m_axis_tdata_reg[6]_P_n_0 ;
  wire \m_axis_tdata_reg[7]_C_n_0 ;
  wire \m_axis_tdata_reg[7]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[7]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[7]_LDC_n_0 ;
  wire \m_axis_tdata_reg[7]_P_n_0 ;
  wire \m_axis_tdata_reg[8]_C_n_0 ;
  wire \m_axis_tdata_reg[8]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[8]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[8]_LDC_n_0 ;
  wire \m_axis_tdata_reg[8]_P_n_0 ;
  wire \m_axis_tdata_reg[9]_C_n_0 ;
  wire \m_axis_tdata_reg[9]_LDC_i_1_n_0 ;
  wire \m_axis_tdata_reg[9]_LDC_i_2_n_0 ;
  wire \m_axis_tdata_reg[9]_LDC_n_0 ;
  wire \m_axis_tdata_reg[9]_P_n_0 ;
  wire m_axis_tready;
  wire p_0_in;
  wire [23:0]p_3_in;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [3:3]NLW_avg_left0_carry__4_CO_UNCONNECTED;
  wire \NLW_last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire \NLW_last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ;
  wire [3:3]NLW_m_axis_tdata0_carry__4_CO_UNCONNECTED;

  LUT4 #(
    .INIT(16'h8000)) 
    \/i_ 
       (.I0(s_axis_tvalid),
        .I1(filter_enable),
        .I2(s_axis_tlast),
        .I3(m_axis_tready),
        .O(avg_right_1));
  LUT4 #(
    .INIT(16'h0080)) 
    \/i___0 
       (.I0(s_axis_tvalid),
        .I1(filter_enable),
        .I2(m_axis_tready),
        .I3(s_axis_tlast),
        .O(avg_left_2));
  LUT5 #(
    .INIT(32'h80000000)) 
    \/i___1 
       (.I0(s_axis_tvalid),
        .I1(filter_enable),
        .I2(s_axis_tlast),
        .I3(m_axis_tready),
        .I4(aresetn),
        .O(avg_right0));
  LUT5 #(
    .INIT(32'h00800000)) 
    \/i___2 
       (.I0(s_axis_tvalid),
        .I1(filter_enable),
        .I2(m_axis_tready),
        .I3(s_axis_tlast),
        .I4(aresetn),
        .O(avg_left0_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 avg_left0_carry
       (.CI(1'b0),
        .CO({avg_left0_carry_n_0,avg_left0_carry_n_1,avg_left0_carry_n_2,avg_left0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({avg_left0_carry_i_1_n_0,avg_left0_carry_i_2_n_0,avg_left0_carry_i_3_n_0,avg_left[0]}),
        .O(avg_left0[3:0]),
        .S({avg_left0_carry_i_4_n_0,avg_left0_carry_i_5_n_0,avg_left0_carry_i_6_n_0,avg_left0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 avg_left0_carry__0
       (.CI(avg_left0_carry_n_0),
        .CO({avg_left0_carry__0_n_0,avg_left0_carry__0_n_1,avg_left0_carry__0_n_2,avg_left0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({avg_left0_carry__0_i_1_n_0,avg_left0_carry__0_i_2_n_0,avg_left0_carry__0_i_3_n_0,avg_left0_carry__0_i_4_n_0}),
        .O(avg_left0[7:4]),
        .S({avg_left0_carry__0_i_5_n_0,avg_left0_carry__0_i_6_n_0,avg_left0_carry__0_i_7_n_0,avg_left0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair22" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__0_i_1
       (.I0(\last_data_left_reg[31] [11]),
        .I1(s_axis_tdata[11]),
        .I2(avg_left[6]),
        .O(avg_left0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__0_i_2
       (.I0(\last_data_left_reg[31] [10]),
        .I1(s_axis_tdata[10]),
        .I2(avg_left[5]),
        .O(avg_left0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__0_i_3
       (.I0(\last_data_left_reg[31] [9]),
        .I1(s_axis_tdata[9]),
        .I2(avg_left[4]),
        .O(avg_left0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__0_i_4
       (.I0(\last_data_left_reg[31] [8]),
        .I1(s_axis_tdata[8]),
        .I2(avg_left[3]),
        .O(avg_left0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__0_i_5
       (.I0(\last_data_left_reg[31] [12]),
        .I1(s_axis_tdata[12]),
        .I2(avg_left[7]),
        .I3(avg_left0_carry__0_i_1_n_0),
        .O(avg_left0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair22" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__0_i_6
       (.I0(\last_data_left_reg[31] [11]),
        .I1(s_axis_tdata[11]),
        .I2(avg_left[6]),
        .I3(avg_left0_carry__0_i_2_n_0),
        .O(avg_left0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair21" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__0_i_7
       (.I0(\last_data_left_reg[31] [10]),
        .I1(s_axis_tdata[10]),
        .I2(avg_left[5]),
        .I3(avg_left0_carry__0_i_3_n_0),
        .O(avg_left0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair20" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__0_i_8
       (.I0(\last_data_left_reg[31] [9]),
        .I1(s_axis_tdata[9]),
        .I2(avg_left[4]),
        .I3(avg_left0_carry__0_i_4_n_0),
        .O(avg_left0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 avg_left0_carry__1
       (.CI(avg_left0_carry__0_n_0),
        .CO({avg_left0_carry__1_n_0,avg_left0_carry__1_n_1,avg_left0_carry__1_n_2,avg_left0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({avg_left0_carry__1_i_1_n_0,avg_left0_carry__1_i_2_n_0,avg_left0_carry__1_i_3_n_0,avg_left0_carry__1_i_4_n_0}),
        .O(avg_left0[11:8]),
        .S({avg_left0_carry__1_i_5_n_0,avg_left0_carry__1_i_6_n_0,avg_left0_carry__1_i_7_n_0,avg_left0_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair26" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__1_i_1
       (.I0(\last_data_left_reg[31] [15]),
        .I1(s_axis_tdata[15]),
        .I2(avg_left[10]),
        .O(avg_left0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__1_i_2
       (.I0(\last_data_left_reg[31] [14]),
        .I1(s_axis_tdata[14]),
        .I2(avg_left[9]),
        .O(avg_left0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__1_i_3
       (.I0(\last_data_left_reg[31] [13]),
        .I1(s_axis_tdata[13]),
        .I2(avg_left[8]),
        .O(avg_left0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair23" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__1_i_4
       (.I0(\last_data_left_reg[31] [12]),
        .I1(s_axis_tdata[12]),
        .I2(avg_left[7]),
        .O(avg_left0_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__1_i_5
       (.I0(\last_data_left_reg[31] [16]),
        .I1(s_axis_tdata[16]),
        .I2(avg_left[11]),
        .I3(avg_left0_carry__1_i_1_n_0),
        .O(avg_left0_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair26" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__1_i_6
       (.I0(\last_data_left_reg[31] [15]),
        .I1(s_axis_tdata[15]),
        .I2(avg_left[10]),
        .I3(avg_left0_carry__1_i_2_n_0),
        .O(avg_left0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair25" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__1_i_7
       (.I0(\last_data_left_reg[31] [14]),
        .I1(s_axis_tdata[14]),
        .I2(avg_left[9]),
        .I3(avg_left0_carry__1_i_3_n_0),
        .O(avg_left0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair24" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__1_i_8
       (.I0(\last_data_left_reg[31] [13]),
        .I1(s_axis_tdata[13]),
        .I2(avg_left[8]),
        .I3(avg_left0_carry__1_i_4_n_0),
        .O(avg_left0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 avg_left0_carry__2
       (.CI(avg_left0_carry__1_n_0),
        .CO({avg_left0_carry__2_n_0,avg_left0_carry__2_n_1,avg_left0_carry__2_n_2,avg_left0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({avg_left0_carry__2_i_1_n_0,avg_left0_carry__2_i_2_n_0,avg_left0_carry__2_i_3_n_0,avg_left0_carry__2_i_4_n_0}),
        .O(avg_left0[15:12]),
        .S({avg_left0_carry__2_i_5_n_0,avg_left0_carry__2_i_6_n_0,avg_left0_carry__2_i_7_n_0,avg_left0_carry__2_i_8_n_0}));
  (* HLUTNM = "lutpair30" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__2_i_1
       (.I0(\last_data_left_reg[31] [19]),
        .I1(s_axis_tdata[19]),
        .I2(avg_left[14]),
        .O(avg_left0_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__2_i_2
       (.I0(\last_data_left_reg[31] [18]),
        .I1(s_axis_tdata[18]),
        .I2(avg_left[13]),
        .O(avg_left0_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__2_i_3
       (.I0(\last_data_left_reg[31] [17]),
        .I1(s_axis_tdata[17]),
        .I2(avg_left[12]),
        .O(avg_left0_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair27" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__2_i_4
       (.I0(\last_data_left_reg[31] [16]),
        .I1(s_axis_tdata[16]),
        .I2(avg_left[11]),
        .O(avg_left0_carry__2_i_4_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__2_i_5
       (.I0(\last_data_left_reg[31] [20]),
        .I1(s_axis_tdata[20]),
        .I2(avg_left[15]),
        .I3(avg_left0_carry__2_i_1_n_0),
        .O(avg_left0_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair30" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__2_i_6
       (.I0(\last_data_left_reg[31] [19]),
        .I1(s_axis_tdata[19]),
        .I2(avg_left[14]),
        .I3(avg_left0_carry__2_i_2_n_0),
        .O(avg_left0_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair29" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__2_i_7
       (.I0(\last_data_left_reg[31] [18]),
        .I1(s_axis_tdata[18]),
        .I2(avg_left[13]),
        .I3(avg_left0_carry__2_i_3_n_0),
        .O(avg_left0_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair28" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__2_i_8
       (.I0(\last_data_left_reg[31] [17]),
        .I1(s_axis_tdata[17]),
        .I2(avg_left[12]),
        .I3(avg_left0_carry__2_i_4_n_0),
        .O(avg_left0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 avg_left0_carry__3
       (.CI(avg_left0_carry__2_n_0),
        .CO({avg_left0_carry__3_n_0,avg_left0_carry__3_n_1,avg_left0_carry__3_n_2,avg_left0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({avg_left0_carry__3_i_1_n_0,avg_left0_carry__3_i_2_n_0,avg_left0_carry__3_i_3_n_0,avg_left0_carry__3_i_4_n_0}),
        .O(avg_left0[19:16]),
        .S({avg_left0_carry__3_i_5_n_0,avg_left0_carry__3_i_6_n_0,avg_left0_carry__3_i_7_n_0,avg_left0_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__3_i_1
       (.I0(s_axis_tdata[23]),
        .I1(\last_data_left_reg[31] [23]),
        .I2(avg_left[18]),
        .O(avg_left0_carry__3_i_1_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__3_i_2
       (.I0(\last_data_left_reg[31] [22]),
        .I1(s_axis_tdata[22]),
        .I2(avg_left[17]),
        .O(avg_left0_carry__3_i_2_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__3_i_3
       (.I0(\last_data_left_reg[31] [21]),
        .I1(s_axis_tdata[21]),
        .I2(avg_left[16]),
        .O(avg_left0_carry__3_i_3_n_0));
  (* HLUTNM = "lutpair31" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry__3_i_4
       (.I0(\last_data_left_reg[31] [20]),
        .I1(s_axis_tdata[20]),
        .I2(avg_left[15]),
        .O(avg_left0_carry__3_i_4_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    avg_left0_carry__3_i_5
       (.I0(avg_left[18]),
        .I1(\last_data_left_reg[31] [23]),
        .I2(s_axis_tdata[23]),
        .I3(avg_left[19]),
        .O(avg_left0_carry__3_i_5_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__3_i_6
       (.I0(avg_left0_carry__3_i_2_n_0),
        .I1(\last_data_left_reg[31] [23]),
        .I2(s_axis_tdata[23]),
        .I3(avg_left[18]),
        .O(avg_left0_carry__3_i_6_n_0));
  (* HLUTNM = "lutpair33" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__3_i_7
       (.I0(\last_data_left_reg[31] [22]),
        .I1(s_axis_tdata[22]),
        .I2(avg_left[17]),
        .I3(avg_left0_carry__3_i_3_n_0),
        .O(avg_left0_carry__3_i_7_n_0));
  (* HLUTNM = "lutpair32" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry__3_i_8
       (.I0(\last_data_left_reg[31] [21]),
        .I1(s_axis_tdata[21]),
        .I2(avg_left[16]),
        .I3(avg_left0_carry__3_i_4_n_0),
        .O(avg_left0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 avg_left0_carry__4
       (.CI(avg_left0_carry__3_n_0),
        .CO({NLW_avg_left0_carry__4_CO_UNCONNECTED[3],avg_left0_carry__4_n_1,avg_left0_carry__4_n_2,avg_left0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,avg_left[21:19]}),
        .O(avg_left0[23:20]),
        .S({avg_left0_carry__4_i_1_n_0,avg_left0_carry__4_i_2_n_0,avg_left0_carry__4_i_3_n_0,avg_left0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    avg_left0_carry__4_i_1
       (.I0(avg_left[22]),
        .I1(avg_left[23]),
        .O(avg_left0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    avg_left0_carry__4_i_2
       (.I0(avg_left[21]),
        .I1(avg_left[22]),
        .O(avg_left0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    avg_left0_carry__4_i_3
       (.I0(avg_left[20]),
        .I1(avg_left[21]),
        .O(avg_left0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    avg_left0_carry__4_i_4
       (.I0(avg_left[19]),
        .I1(avg_left[20]),
        .O(avg_left0_carry__4_i_4_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry_i_1
       (.I0(\last_data_left_reg[31] [7]),
        .I1(s_axis_tdata[7]),
        .I2(avg_left[2]),
        .O(avg_left0_carry_i_1_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    avg_left0_carry_i_2
       (.I0(\last_data_left_reg[31] [6]),
        .I1(s_axis_tdata[6]),
        .I2(avg_left[1]),
        .O(avg_left0_carry_i_2_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT2 #(
    .INIT(4'hB)) 
    avg_left0_carry_i_3
       (.I0(s_axis_tdata[5]),
        .I1(\last_data_left_reg[31] [5]),
        .O(avg_left0_carry_i_3_n_0));
  (* HLUTNM = "lutpair19" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry_i_4
       (.I0(\last_data_left_reg[31] [8]),
        .I1(s_axis_tdata[8]),
        .I2(avg_left[3]),
        .I3(avg_left0_carry_i_1_n_0),
        .O(avg_left0_carry_i_4_n_0));
  (* HLUTNM = "lutpair18" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry_i_5
       (.I0(\last_data_left_reg[31] [7]),
        .I1(s_axis_tdata[7]),
        .I2(avg_left[2]),
        .I3(avg_left0_carry_i_2_n_0),
        .O(avg_left0_carry_i_5_n_0));
  (* HLUTNM = "lutpair17" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    avg_left0_carry_i_6
       (.I0(\last_data_left_reg[31] [6]),
        .I1(s_axis_tdata[6]),
        .I2(avg_left[1]),
        .I3(avg_left0_carry_i_3_n_0),
        .O(avg_left0_carry_i_6_n_0));
  (* HLUTNM = "lutpair35" *) 
  LUT3 #(
    .INIT(8'h96)) 
    avg_left0_carry_i_7
       (.I0(s_axis_tdata[5]),
        .I1(\last_data_left_reg[31] [5]),
        .I2(avg_left[0]),
        .O(avg_left0_carry_i_7_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[0] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[0]),
        .Q(avg_left[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[10] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[10]),
        .Q(avg_left[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[11] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[11]),
        .Q(avg_left[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[12] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[12]),
        .Q(avg_left[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[13] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[13]),
        .Q(avg_left[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[14] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[14]),
        .Q(avg_left[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[15] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[15]),
        .Q(avg_left[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[16] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[16]),
        .Q(avg_left[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[17] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[17]),
        .Q(avg_left[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[18] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[18]),
        .Q(avg_left[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[19] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[19]),
        .Q(avg_left[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[1] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[1]),
        .Q(avg_left[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[20] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[20]),
        .Q(avg_left[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[21] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[21]),
        .Q(avg_left[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[22] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[22]),
        .Q(avg_left[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[23] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[23]),
        .Q(avg_left[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[2] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[2]),
        .Q(avg_left[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[3] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[3]),
        .Q(avg_left[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[4] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[4]),
        .Q(avg_left[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[5] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[5]),
        .Q(avg_left[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[6] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[6]),
        .Q(avg_left[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[7] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[7]),
        .Q(avg_left[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[8] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[8]),
        .Q(avg_left[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_left_reg[9] 
       (.C(aclk),
        .CE(avg_left0_0),
        .D(avg_left0[9]),
        .Q(avg_left[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[0] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[0]),
        .Q(avg_right[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[10] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[10]),
        .Q(avg_right[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[11] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[11]),
        .Q(avg_right[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[12] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[12]),
        .Q(avg_right[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[13] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[13]),
        .Q(avg_right[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[14] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[14]),
        .Q(avg_right[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[15] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[15]),
        .Q(avg_right[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[16] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[16]),
        .Q(avg_right[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[17] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[17]),
        .Q(avg_right[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[18] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[18]),
        .Q(avg_right[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[19] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[19]),
        .Q(avg_right[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[1] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[1]),
        .Q(avg_right[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[20] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[20]),
        .Q(avg_right[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[21] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[21]),
        .Q(avg_right[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[22] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[22]),
        .Q(avg_right[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[23] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[23]),
        .Q(avg_right[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[2] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[2]),
        .Q(avg_right[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[3] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[3]),
        .Q(avg_right[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[4] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[4]),
        .Q(avg_right[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[5] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[5]),
        .Q(avg_right[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[6] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[6]),
        .Q(avg_right[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[7] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[7]),
        .Q(avg_right[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[8] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[8]),
        .Q(avg_right[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \avg_right_reg[9] 
       (.C(aclk),
        .CE(avg_right0),
        .D(m_axis_tdata0[9]),
        .Q(avg_right[9]),
        .R(1'b0));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[10]),
        .Q(\last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[11]),
        .Q(\last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[12]),
        .Q(\last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[13]),
        .Q(\last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[14]),
        .Q(\last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[15]),
        .Q(\last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[16]),
        .Q(\last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[17]),
        .Q(\last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[18]),
        .Q(\last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[19]),
        .Q(\last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[20]),
        .Q(\last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[21]),
        .Q(\last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[22]),
        .Q(\last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[23]),
        .Q(\last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[5]),
        .Q(\last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[6]),
        .Q(\last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[7]),
        .Q(\last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[8]),
        .Q(\last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_left_reg[29] " *) 
  (* srl_name = "\U0/last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_58 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_58 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_left_2),
        .CLK(aclk),
        .D(s_axis_tdata[9]),
        .Q(\last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q31(\NLW_last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_58_Q31_UNCONNECTED ));
  FDRE \last_data_left_reg[30][10]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][10]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][10]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][11]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][11]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][11]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][12]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][12]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][12]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][13]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][13]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][13]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][14]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][14]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][14]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][15]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][15]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][15]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][16]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][16]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][16]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][17]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][17]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][17]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][18]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][18]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][18]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][19]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][19]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][19]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][20]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][20]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][20]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][21]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][21]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][21]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][22]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][22]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][22]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][23]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][23]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][23]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][5]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][5]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][5]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][6]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][6]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][6]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][7]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][7]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][7]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][8]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][8]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][8]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDRE \last_data_left_reg[30][9]_U0_last_data_left_reg_c_59 
       (.C(aclk),
        .CE(avg_left_2),
        .D(\last_data_left_reg[29][9]_srl30_U0_last_data_left_reg_c_58_n_0 ),
        .Q(\last_data_left_reg[30][9]_U0_last_data_left_reg_c_59_n_0 ),
        .R(1'b0));
  FDCE \last_data_left_reg[31][10] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__12_n_0),
        .Q(\last_data_left_reg[31] [10]));
  FDCE \last_data_left_reg[31][11] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__11_n_0),
        .Q(\last_data_left_reg[31] [11]));
  FDCE \last_data_left_reg[31][12] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__10_n_0),
        .Q(\last_data_left_reg[31] [12]));
  FDCE \last_data_left_reg[31][13] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__9_n_0),
        .Q(\last_data_left_reg[31] [13]));
  FDCE \last_data_left_reg[31][14] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__8_n_0),
        .Q(\last_data_left_reg[31] [14]));
  FDCE \last_data_left_reg[31][15] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__7_n_0),
        .Q(\last_data_left_reg[31] [15]));
  FDCE \last_data_left_reg[31][16] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__6_n_0),
        .Q(\last_data_left_reg[31] [16]));
  FDCE \last_data_left_reg[31][17] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__5_n_0),
        .Q(\last_data_left_reg[31] [17]));
  FDCE \last_data_left_reg[31][18] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__4_n_0),
        .Q(\last_data_left_reg[31] [18]));
  FDCE \last_data_left_reg[31][19] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__3_n_0),
        .Q(\last_data_left_reg[31] [19]));
  FDCE \last_data_left_reg[31][20] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__2_n_0),
        .Q(\last_data_left_reg[31] [20]));
  FDCE \last_data_left_reg[31][21] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__1_n_0),
        .Q(\last_data_left_reg[31] [21]));
  FDCE \last_data_left_reg[31][22] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__0_n_0),
        .Q(\last_data_left_reg[31] [22]));
  FDCE \last_data_left_reg[31][23] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate_n_0),
        .Q(\last_data_left_reg[31] [23]));
  FDCE \last_data_left_reg[31][5] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__17_n_0),
        .Q(\last_data_left_reg[31] [5]));
  FDCE \last_data_left_reg[31][6] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__16_n_0),
        .Q(\last_data_left_reg[31] [6]));
  FDCE \last_data_left_reg[31][7] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__15_n_0),
        .Q(\last_data_left_reg[31] [7]));
  FDCE \last_data_left_reg[31][8] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__14_n_0),
        .Q(\last_data_left_reg[31] [8]));
  FDCE \last_data_left_reg[31][9] 
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_gate__13_n_0),
        .Q(\last_data_left_reg[31] [9]));
  FDCE last_data_left_reg_c
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(1'b1),
        .Q(last_data_left_reg_c_n_0));
  FDCE last_data_left_reg_c_30
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_n_0),
        .Q(last_data_left_reg_c_30_n_0));
  FDCE last_data_left_reg_c_31
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_30_n_0),
        .Q(last_data_left_reg_c_31_n_0));
  FDCE last_data_left_reg_c_32
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_31_n_0),
        .Q(last_data_left_reg_c_32_n_0));
  FDCE last_data_left_reg_c_33
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_32_n_0),
        .Q(last_data_left_reg_c_33_n_0));
  FDCE last_data_left_reg_c_34
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_33_n_0),
        .Q(last_data_left_reg_c_34_n_0));
  FDCE last_data_left_reg_c_35
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_34_n_0),
        .Q(last_data_left_reg_c_35_n_0));
  FDCE last_data_left_reg_c_36
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_35_n_0),
        .Q(last_data_left_reg_c_36_n_0));
  FDCE last_data_left_reg_c_37
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_36_n_0),
        .Q(last_data_left_reg_c_37_n_0));
  FDCE last_data_left_reg_c_38
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_37_n_0),
        .Q(last_data_left_reg_c_38_n_0));
  FDCE last_data_left_reg_c_39
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_38_n_0),
        .Q(last_data_left_reg_c_39_n_0));
  FDCE last_data_left_reg_c_40
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_39_n_0),
        .Q(last_data_left_reg_c_40_n_0));
  FDCE last_data_left_reg_c_41
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_40_n_0),
        .Q(last_data_left_reg_c_41_n_0));
  FDCE last_data_left_reg_c_42
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_41_n_0),
        .Q(last_data_left_reg_c_42_n_0));
  FDCE last_data_left_reg_c_43
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_42_n_0),
        .Q(last_data_left_reg_c_43_n_0));
  FDCE last_data_left_reg_c_44
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_43_n_0),
        .Q(last_data_left_reg_c_44_n_0));
  FDCE last_data_left_reg_c_45
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_44_n_0),
        .Q(last_data_left_reg_c_45_n_0));
  FDCE last_data_left_reg_c_46
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_45_n_0),
        .Q(last_data_left_reg_c_46_n_0));
  FDCE last_data_left_reg_c_47
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_46_n_0),
        .Q(last_data_left_reg_c_47_n_0));
  FDCE last_data_left_reg_c_48
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_47_n_0),
        .Q(last_data_left_reg_c_48_n_0));
  FDCE last_data_left_reg_c_49
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_48_n_0),
        .Q(last_data_left_reg_c_49_n_0));
  FDCE last_data_left_reg_c_50
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_49_n_0),
        .Q(last_data_left_reg_c_50_n_0));
  FDCE last_data_left_reg_c_51
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_50_n_0),
        .Q(last_data_left_reg_c_51_n_0));
  FDCE last_data_left_reg_c_52
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_51_n_0),
        .Q(last_data_left_reg_c_52_n_0));
  FDCE last_data_left_reg_c_53
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_52_n_0),
        .Q(last_data_left_reg_c_53_n_0));
  FDCE last_data_left_reg_c_54
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_53_n_0),
        .Q(last_data_left_reg_c_54_n_0));
  FDCE last_data_left_reg_c_55
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_54_n_0),
        .Q(last_data_left_reg_c_55_n_0));
  FDCE last_data_left_reg_c_56
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_55_n_0),
        .Q(last_data_left_reg_c_56_n_0));
  FDCE last_data_left_reg_c_57
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_56_n_0),
        .Q(last_data_left_reg_c_57_n_0));
  FDCE last_data_left_reg_c_58
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_57_n_0),
        .Q(last_data_left_reg_c_58_n_0));
  FDCE last_data_left_reg_c_59
       (.C(aclk),
        .CE(avg_left_2),
        .CLR(p_0_in),
        .D(last_data_left_reg_c_58_n_0),
        .Q(last_data_left_reg_c_59_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate
       (.I0(\last_data_left_reg[30][23]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__0
       (.I0(\last_data_left_reg[30][22]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__1
       (.I0(\last_data_left_reg[30][21]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__10
       (.I0(\last_data_left_reg[30][12]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__11
       (.I0(\last_data_left_reg[30][11]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__12
       (.I0(\last_data_left_reg[30][10]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__13
       (.I0(\last_data_left_reg[30][9]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__14
       (.I0(\last_data_left_reg[30][8]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__15
       (.I0(\last_data_left_reg[30][7]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__16
       (.I0(\last_data_left_reg[30][6]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__17
       (.I0(\last_data_left_reg[30][5]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__2
       (.I0(\last_data_left_reg[30][20]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__3
       (.I0(\last_data_left_reg[30][19]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__4
       (.I0(\last_data_left_reg[30][18]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__5
       (.I0(\last_data_left_reg[30][17]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__6
       (.I0(\last_data_left_reg[30][16]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__7
       (.I0(\last_data_left_reg[30][15]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__8
       (.I0(\last_data_left_reg[30][14]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_left_reg_gate__9
       (.I0(\last_data_left_reg[30][13]_U0_last_data_left_reg_c_59_n_0 ),
        .I1(last_data_left_reg_c_59_n_0),
        .O(last_data_left_reg_gate__9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    last_data_right_c_i_1
       (.I0(aresetn),
        .O(p_0_in));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[10]),
        .Q(\last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[11]),
        .Q(\last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[12]),
        .Q(\last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[13]),
        .Q(\last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[14]),
        .Q(\last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[15]),
        .Q(\last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[16]),
        .Q(\last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[17]),
        .Q(\last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[18]),
        .Q(\last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[19]),
        .Q(\last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[20]),
        .Q(\last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[21]),
        .Q(\last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[22]),
        .Q(\last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[23]),
        .Q(\last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[5]),
        .Q(\last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[6]),
        .Q(\last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[7]),
        .Q(\last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[8]),
        .Q(\last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  (* srl_bus_name = "\U0/last_data_right_reg[29] " *) 
  (* srl_name = "\U0/last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_28 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_28 
       (.A({1'b1,1'b1,1'b1,1'b0,1'b1}),
        .CE(avg_right_1),
        .CLK(aclk),
        .D(s_axis_tdata[9]),
        .Q(\last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q31(\NLW_last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_28_Q31_UNCONNECTED ));
  FDRE \last_data_right_reg[30][10]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][10]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][10]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][11]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][11]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][11]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][12]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][12]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][12]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][13]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][13]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][13]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][14]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][14]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][14]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][15]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][15]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][15]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][16]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][16]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][16]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][17]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][17]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][17]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][18]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][18]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][18]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][19]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][19]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][19]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][20]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][20]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][20]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][21]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][21]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][21]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][22]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][22]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][22]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][23]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][23]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][23]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][5]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][5]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][5]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][6]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][6]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][6]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][7]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][7]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][7]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][8]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][8]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][8]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDRE \last_data_right_reg[30][9]_U0_last_data_right_reg_c_29 
       (.C(aclk),
        .CE(avg_right_1),
        .D(\last_data_right_reg[29][9]_srl30_U0_last_data_right_reg_c_28_n_0 ),
        .Q(\last_data_right_reg[30][9]_U0_last_data_right_reg_c_29_n_0 ),
        .R(1'b0));
  FDCE \last_data_right_reg[31][10] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__12_n_0),
        .Q(\last_data_right_reg[31] [10]));
  FDCE \last_data_right_reg[31][11] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__11_n_0),
        .Q(\last_data_right_reg[31] [11]));
  FDCE \last_data_right_reg[31][12] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__10_n_0),
        .Q(\last_data_right_reg[31] [12]));
  FDCE \last_data_right_reg[31][13] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__9_n_0),
        .Q(\last_data_right_reg[31] [13]));
  FDCE \last_data_right_reg[31][14] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__8_n_0),
        .Q(\last_data_right_reg[31] [14]));
  FDCE \last_data_right_reg[31][15] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__7_n_0),
        .Q(\last_data_right_reg[31] [15]));
  FDCE \last_data_right_reg[31][16] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__6_n_0),
        .Q(\last_data_right_reg[31] [16]));
  FDCE \last_data_right_reg[31][17] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__5_n_0),
        .Q(\last_data_right_reg[31] [17]));
  FDCE \last_data_right_reg[31][18] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__4_n_0),
        .Q(\last_data_right_reg[31] [18]));
  FDCE \last_data_right_reg[31][19] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__3_n_0),
        .Q(\last_data_right_reg[31] [19]));
  FDCE \last_data_right_reg[31][20] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__2_n_0),
        .Q(\last_data_right_reg[31] [20]));
  FDCE \last_data_right_reg[31][21] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__1_n_0),
        .Q(\last_data_right_reg[31] [21]));
  FDCE \last_data_right_reg[31][22] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__0_n_0),
        .Q(\last_data_right_reg[31] [22]));
  FDCE \last_data_right_reg[31][23] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate_n_0),
        .Q(\last_data_right_reg[31] [23]));
  FDCE \last_data_right_reg[31][5] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__17_n_0),
        .Q(\last_data_right_reg[31] [5]));
  FDCE \last_data_right_reg[31][6] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__16_n_0),
        .Q(\last_data_right_reg[31] [6]));
  FDCE \last_data_right_reg[31][7] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__15_n_0),
        .Q(\last_data_right_reg[31] [7]));
  FDCE \last_data_right_reg[31][8] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__14_n_0),
        .Q(\last_data_right_reg[31] [8]));
  FDCE \last_data_right_reg[31][9] 
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_gate__13_n_0),
        .Q(\last_data_right_reg[31] [9]));
  FDCE last_data_right_reg_c
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(1'b1),
        .Q(last_data_right_reg_c_n_0));
  FDCE last_data_right_reg_c_0
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_n_0),
        .Q(last_data_right_reg_c_0_n_0));
  FDCE last_data_right_reg_c_1
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_0_n_0),
        .Q(last_data_right_reg_c_1_n_0));
  FDCE last_data_right_reg_c_10
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_9_n_0),
        .Q(last_data_right_reg_c_10_n_0));
  FDCE last_data_right_reg_c_11
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_10_n_0),
        .Q(last_data_right_reg_c_11_n_0));
  FDCE last_data_right_reg_c_12
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_11_n_0),
        .Q(last_data_right_reg_c_12_n_0));
  FDCE last_data_right_reg_c_13
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_12_n_0),
        .Q(last_data_right_reg_c_13_n_0));
  FDCE last_data_right_reg_c_14
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_13_n_0),
        .Q(last_data_right_reg_c_14_n_0));
  FDCE last_data_right_reg_c_15
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_14_n_0),
        .Q(last_data_right_reg_c_15_n_0));
  FDCE last_data_right_reg_c_16
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_15_n_0),
        .Q(last_data_right_reg_c_16_n_0));
  FDCE last_data_right_reg_c_17
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_16_n_0),
        .Q(last_data_right_reg_c_17_n_0));
  FDCE last_data_right_reg_c_18
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_17_n_0),
        .Q(last_data_right_reg_c_18_n_0));
  FDCE last_data_right_reg_c_19
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_18_n_0),
        .Q(last_data_right_reg_c_19_n_0));
  FDCE last_data_right_reg_c_2
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_1_n_0),
        .Q(last_data_right_reg_c_2_n_0));
  FDCE last_data_right_reg_c_20
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_19_n_0),
        .Q(last_data_right_reg_c_20_n_0));
  FDCE last_data_right_reg_c_21
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_20_n_0),
        .Q(last_data_right_reg_c_21_n_0));
  FDCE last_data_right_reg_c_22
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_21_n_0),
        .Q(last_data_right_reg_c_22_n_0));
  FDCE last_data_right_reg_c_23
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_22_n_0),
        .Q(last_data_right_reg_c_23_n_0));
  FDCE last_data_right_reg_c_24
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_23_n_0),
        .Q(last_data_right_reg_c_24_n_0));
  FDCE last_data_right_reg_c_25
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_24_n_0),
        .Q(last_data_right_reg_c_25_n_0));
  FDCE last_data_right_reg_c_26
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_25_n_0),
        .Q(last_data_right_reg_c_26_n_0));
  FDCE last_data_right_reg_c_27
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_26_n_0),
        .Q(last_data_right_reg_c_27_n_0));
  FDCE last_data_right_reg_c_28
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_27_n_0),
        .Q(last_data_right_reg_c_28_n_0));
  FDCE last_data_right_reg_c_29
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_28_n_0),
        .Q(last_data_right_reg_c_29_n_0));
  FDCE last_data_right_reg_c_3
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_2_n_0),
        .Q(last_data_right_reg_c_3_n_0));
  FDCE last_data_right_reg_c_4
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_3_n_0),
        .Q(last_data_right_reg_c_4_n_0));
  FDCE last_data_right_reg_c_5
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_4_n_0),
        .Q(last_data_right_reg_c_5_n_0));
  FDCE last_data_right_reg_c_6
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_5_n_0),
        .Q(last_data_right_reg_c_6_n_0));
  FDCE last_data_right_reg_c_7
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_6_n_0),
        .Q(last_data_right_reg_c_7_n_0));
  FDCE last_data_right_reg_c_8
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_7_n_0),
        .Q(last_data_right_reg_c_8_n_0));
  FDCE last_data_right_reg_c_9
       (.C(aclk),
        .CE(avg_right_1),
        .CLR(p_0_in),
        .D(last_data_right_reg_c_8_n_0),
        .Q(last_data_right_reg_c_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate
       (.I0(\last_data_right_reg[30][23]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__0
       (.I0(\last_data_right_reg[30][22]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__1
       (.I0(\last_data_right_reg[30][21]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__10
       (.I0(\last_data_right_reg[30][12]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__11
       (.I0(\last_data_right_reg[30][11]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__12
       (.I0(\last_data_right_reg[30][10]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__13
       (.I0(\last_data_right_reg[30][9]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__14
       (.I0(\last_data_right_reg[30][8]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__15
       (.I0(\last_data_right_reg[30][7]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__16
       (.I0(\last_data_right_reg[30][6]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__16_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__17
       (.I0(\last_data_right_reg[30][5]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__2
       (.I0(\last_data_right_reg[30][20]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__3
       (.I0(\last_data_right_reg[30][19]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__4
       (.I0(\last_data_right_reg[30][18]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__5
       (.I0(\last_data_right_reg[30][17]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__6
       (.I0(\last_data_right_reg[30][16]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__7
       (.I0(\last_data_right_reg[30][15]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__8
       (.I0(\last_data_right_reg[30][14]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    last_data_right_reg_gate__9
       (.I0(\last_data_right_reg[30][13]_U0_last_data_right_reg_c_29_n_0 ),
        .I1(last_data_right_reg_c_29_n_0),
        .O(last_data_right_reg_gate__9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 m_axis_tdata0_carry
       (.CI(1'b0),
        .CO({m_axis_tdata0_carry_n_0,m_axis_tdata0_carry_n_1,m_axis_tdata0_carry_n_2,m_axis_tdata0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_tdata0_carry_i_1_n_0,m_axis_tdata0_carry_i_2_n_0,m_axis_tdata0_carry_i_3_n_0,avg_right[0]}),
        .O(m_axis_tdata0[3:0]),
        .S({m_axis_tdata0_carry_i_4_n_0,m_axis_tdata0_carry_i_5_n_0,m_axis_tdata0_carry_i_6_n_0,m_axis_tdata0_carry_i_7_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 m_axis_tdata0_carry__0
       (.CI(m_axis_tdata0_carry_n_0),
        .CO({m_axis_tdata0_carry__0_n_0,m_axis_tdata0_carry__0_n_1,m_axis_tdata0_carry__0_n_2,m_axis_tdata0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_tdata0_carry__0_i_1_n_0,m_axis_tdata0_carry__0_i_2_n_0,m_axis_tdata0_carry__0_i_3_n_0,m_axis_tdata0_carry__0_i_4_n_0}),
        .O(m_axis_tdata0[7:4]),
        .S({m_axis_tdata0_carry__0_i_5_n_0,m_axis_tdata0_carry__0_i_6_n_0,m_axis_tdata0_carry__0_i_7_n_0,m_axis_tdata0_carry__0_i_8_n_0}));
  (* HLUTNM = "lutpair5" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__0_i_1
       (.I0(\last_data_right_reg[31] [11]),
        .I1(s_axis_tdata[11]),
        .I2(avg_right[6]),
        .O(m_axis_tdata0_carry__0_i_1_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__0_i_2
       (.I0(\last_data_right_reg[31] [10]),
        .I1(s_axis_tdata[10]),
        .I2(avg_right[5]),
        .O(m_axis_tdata0_carry__0_i_2_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__0_i_3
       (.I0(\last_data_right_reg[31] [9]),
        .I1(s_axis_tdata[9]),
        .I2(avg_right[4]),
        .O(m_axis_tdata0_carry__0_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__0_i_4
       (.I0(\last_data_right_reg[31] [8]),
        .I1(s_axis_tdata[8]),
        .I2(avg_right[3]),
        .O(m_axis_tdata0_carry__0_i_4_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__0_i_5
       (.I0(\last_data_right_reg[31] [12]),
        .I1(s_axis_tdata[12]),
        .I2(avg_right[7]),
        .I3(m_axis_tdata0_carry__0_i_1_n_0),
        .O(m_axis_tdata0_carry__0_i_5_n_0));
  (* HLUTNM = "lutpair5" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__0_i_6
       (.I0(\last_data_right_reg[31] [11]),
        .I1(s_axis_tdata[11]),
        .I2(avg_right[6]),
        .I3(m_axis_tdata0_carry__0_i_2_n_0),
        .O(m_axis_tdata0_carry__0_i_6_n_0));
  (* HLUTNM = "lutpair4" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__0_i_7
       (.I0(\last_data_right_reg[31] [10]),
        .I1(s_axis_tdata[10]),
        .I2(avg_right[5]),
        .I3(m_axis_tdata0_carry__0_i_3_n_0),
        .O(m_axis_tdata0_carry__0_i_7_n_0));
  (* HLUTNM = "lutpair3" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__0_i_8
       (.I0(\last_data_right_reg[31] [9]),
        .I1(s_axis_tdata[9]),
        .I2(avg_right[4]),
        .I3(m_axis_tdata0_carry__0_i_4_n_0),
        .O(m_axis_tdata0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 m_axis_tdata0_carry__1
       (.CI(m_axis_tdata0_carry__0_n_0),
        .CO({m_axis_tdata0_carry__1_n_0,m_axis_tdata0_carry__1_n_1,m_axis_tdata0_carry__1_n_2,m_axis_tdata0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_tdata0_carry__1_i_1_n_0,m_axis_tdata0_carry__1_i_2_n_0,m_axis_tdata0_carry__1_i_3_n_0,m_axis_tdata0_carry__1_i_4_n_0}),
        .O(m_axis_tdata0[11:8]),
        .S({m_axis_tdata0_carry__1_i_5_n_0,m_axis_tdata0_carry__1_i_6_n_0,m_axis_tdata0_carry__1_i_7_n_0,m_axis_tdata0_carry__1_i_8_n_0}));
  (* HLUTNM = "lutpair9" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__1_i_1
       (.I0(\last_data_right_reg[31] [15]),
        .I1(s_axis_tdata[15]),
        .I2(avg_right[10]),
        .O(m_axis_tdata0_carry__1_i_1_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__1_i_2
       (.I0(\last_data_right_reg[31] [14]),
        .I1(s_axis_tdata[14]),
        .I2(avg_right[9]),
        .O(m_axis_tdata0_carry__1_i_2_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__1_i_3
       (.I0(\last_data_right_reg[31] [13]),
        .I1(s_axis_tdata[13]),
        .I2(avg_right[8]),
        .O(m_axis_tdata0_carry__1_i_3_n_0));
  (* HLUTNM = "lutpair6" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__1_i_4
       (.I0(\last_data_right_reg[31] [12]),
        .I1(s_axis_tdata[12]),
        .I2(avg_right[7]),
        .O(m_axis_tdata0_carry__1_i_4_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__1_i_5
       (.I0(\last_data_right_reg[31] [16]),
        .I1(s_axis_tdata[16]),
        .I2(avg_right[11]),
        .I3(m_axis_tdata0_carry__1_i_1_n_0),
        .O(m_axis_tdata0_carry__1_i_5_n_0));
  (* HLUTNM = "lutpair9" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__1_i_6
       (.I0(\last_data_right_reg[31] [15]),
        .I1(s_axis_tdata[15]),
        .I2(avg_right[10]),
        .I3(m_axis_tdata0_carry__1_i_2_n_0),
        .O(m_axis_tdata0_carry__1_i_6_n_0));
  (* HLUTNM = "lutpair8" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__1_i_7
       (.I0(\last_data_right_reg[31] [14]),
        .I1(s_axis_tdata[14]),
        .I2(avg_right[9]),
        .I3(m_axis_tdata0_carry__1_i_3_n_0),
        .O(m_axis_tdata0_carry__1_i_7_n_0));
  (* HLUTNM = "lutpair7" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__1_i_8
       (.I0(\last_data_right_reg[31] [13]),
        .I1(s_axis_tdata[13]),
        .I2(avg_right[8]),
        .I3(m_axis_tdata0_carry__1_i_4_n_0),
        .O(m_axis_tdata0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 m_axis_tdata0_carry__2
       (.CI(m_axis_tdata0_carry__1_n_0),
        .CO({m_axis_tdata0_carry__2_n_0,m_axis_tdata0_carry__2_n_1,m_axis_tdata0_carry__2_n_2,m_axis_tdata0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_tdata0_carry__2_i_1_n_0,m_axis_tdata0_carry__2_i_2_n_0,m_axis_tdata0_carry__2_i_3_n_0,m_axis_tdata0_carry__2_i_4_n_0}),
        .O(m_axis_tdata0[15:12]),
        .S({m_axis_tdata0_carry__2_i_5_n_0,m_axis_tdata0_carry__2_i_6_n_0,m_axis_tdata0_carry__2_i_7_n_0,m_axis_tdata0_carry__2_i_8_n_0}));
  (* HLUTNM = "lutpair13" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__2_i_1
       (.I0(\last_data_right_reg[31] [19]),
        .I1(s_axis_tdata[19]),
        .I2(avg_right[14]),
        .O(m_axis_tdata0_carry__2_i_1_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__2_i_2
       (.I0(\last_data_right_reg[31] [18]),
        .I1(s_axis_tdata[18]),
        .I2(avg_right[13]),
        .O(m_axis_tdata0_carry__2_i_2_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__2_i_3
       (.I0(\last_data_right_reg[31] [17]),
        .I1(s_axis_tdata[17]),
        .I2(avg_right[12]),
        .O(m_axis_tdata0_carry__2_i_3_n_0));
  (* HLUTNM = "lutpair10" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__2_i_4
       (.I0(\last_data_right_reg[31] [16]),
        .I1(s_axis_tdata[16]),
        .I2(avg_right[11]),
        .O(m_axis_tdata0_carry__2_i_4_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__2_i_5
       (.I0(\last_data_right_reg[31] [20]),
        .I1(s_axis_tdata[20]),
        .I2(avg_right[15]),
        .I3(m_axis_tdata0_carry__2_i_1_n_0),
        .O(m_axis_tdata0_carry__2_i_5_n_0));
  (* HLUTNM = "lutpair13" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__2_i_6
       (.I0(\last_data_right_reg[31] [19]),
        .I1(s_axis_tdata[19]),
        .I2(avg_right[14]),
        .I3(m_axis_tdata0_carry__2_i_2_n_0),
        .O(m_axis_tdata0_carry__2_i_6_n_0));
  (* HLUTNM = "lutpair12" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__2_i_7
       (.I0(\last_data_right_reg[31] [18]),
        .I1(s_axis_tdata[18]),
        .I2(avg_right[13]),
        .I3(m_axis_tdata0_carry__2_i_3_n_0),
        .O(m_axis_tdata0_carry__2_i_7_n_0));
  (* HLUTNM = "lutpair11" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__2_i_8
       (.I0(\last_data_right_reg[31] [17]),
        .I1(s_axis_tdata[17]),
        .I2(avg_right[12]),
        .I3(m_axis_tdata0_carry__2_i_4_n_0),
        .O(m_axis_tdata0_carry__2_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 m_axis_tdata0_carry__3
       (.CI(m_axis_tdata0_carry__2_n_0),
        .CO({m_axis_tdata0_carry__3_n_0,m_axis_tdata0_carry__3_n_1,m_axis_tdata0_carry__3_n_2,m_axis_tdata0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({m_axis_tdata0_carry__3_i_1_n_0,m_axis_tdata0_carry__3_i_2_n_0,m_axis_tdata0_carry__3_i_3_n_0,m_axis_tdata0_carry__3_i_4_n_0}),
        .O(m_axis_tdata0[19:16]),
        .S({m_axis_tdata0_carry__3_i_5_n_0,m_axis_tdata0_carry__3_i_6_n_0,m_axis_tdata0_carry__3_i_7_n_0,m_axis_tdata0_carry__3_i_8_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__3_i_1
       (.I0(s_axis_tdata[23]),
        .I1(\last_data_right_reg[31] [23]),
        .I2(avg_right[18]),
        .O(m_axis_tdata0_carry__3_i_1_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__3_i_2
       (.I0(\last_data_right_reg[31] [22]),
        .I1(s_axis_tdata[22]),
        .I2(avg_right[17]),
        .O(m_axis_tdata0_carry__3_i_2_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__3_i_3
       (.I0(\last_data_right_reg[31] [21]),
        .I1(s_axis_tdata[21]),
        .I2(avg_right[16]),
        .O(m_axis_tdata0_carry__3_i_3_n_0));
  (* HLUTNM = "lutpair14" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry__3_i_4
       (.I0(\last_data_right_reg[31] [20]),
        .I1(s_axis_tdata[20]),
        .I2(avg_right[15]),
        .O(m_axis_tdata0_carry__3_i_4_n_0));
  LUT4 #(
    .INIT(16'h8E71)) 
    m_axis_tdata0_carry__3_i_5
       (.I0(avg_right[18]),
        .I1(\last_data_right_reg[31] [23]),
        .I2(s_axis_tdata[23]),
        .I3(avg_right[19]),
        .O(m_axis_tdata0_carry__3_i_5_n_0));
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__3_i_6
       (.I0(m_axis_tdata0_carry__3_i_2_n_0),
        .I1(\last_data_right_reg[31] [23]),
        .I2(s_axis_tdata[23]),
        .I3(avg_right[18]),
        .O(m_axis_tdata0_carry__3_i_6_n_0));
  (* HLUTNM = "lutpair16" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__3_i_7
       (.I0(\last_data_right_reg[31] [22]),
        .I1(s_axis_tdata[22]),
        .I2(avg_right[17]),
        .I3(m_axis_tdata0_carry__3_i_3_n_0),
        .O(m_axis_tdata0_carry__3_i_7_n_0));
  (* HLUTNM = "lutpair15" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry__3_i_8
       (.I0(\last_data_right_reg[31] [21]),
        .I1(s_axis_tdata[21]),
        .I2(avg_right[16]),
        .I3(m_axis_tdata0_carry__3_i_4_n_0),
        .O(m_axis_tdata0_carry__3_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 m_axis_tdata0_carry__4
       (.CI(m_axis_tdata0_carry__3_n_0),
        .CO({NLW_m_axis_tdata0_carry__4_CO_UNCONNECTED[3],m_axis_tdata0_carry__4_n_1,m_axis_tdata0_carry__4_n_2,m_axis_tdata0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,avg_right[21:19]}),
        .O(m_axis_tdata0[23:20]),
        .S({m_axis_tdata0_carry__4_i_1_n_0,m_axis_tdata0_carry__4_i_2_n_0,m_axis_tdata0_carry__4_i_3_n_0,m_axis_tdata0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    m_axis_tdata0_carry__4_i_1
       (.I0(avg_right[22]),
        .I1(avg_right[23]),
        .O(m_axis_tdata0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_axis_tdata0_carry__4_i_2
       (.I0(avg_right[21]),
        .I1(avg_right[22]),
        .O(m_axis_tdata0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_axis_tdata0_carry__4_i_3
       (.I0(avg_right[20]),
        .I1(avg_right[21]),
        .O(m_axis_tdata0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    m_axis_tdata0_carry__4_i_4
       (.I0(avg_right[19]),
        .I1(avg_right[20]),
        .O(m_axis_tdata0_carry__4_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry_i_1
       (.I0(\last_data_right_reg[31] [7]),
        .I1(s_axis_tdata[7]),
        .I2(avg_right[2]),
        .O(m_axis_tdata0_carry_i_1_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    m_axis_tdata0_carry_i_2
       (.I0(\last_data_right_reg[31] [6]),
        .I1(s_axis_tdata[6]),
        .I2(avg_right[1]),
        .O(m_axis_tdata0_carry_i_2_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    m_axis_tdata0_carry_i_3
       (.I0(s_axis_tdata[5]),
        .I1(\last_data_right_reg[31] [5]),
        .O(m_axis_tdata0_carry_i_3_n_0));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry_i_4
       (.I0(\last_data_right_reg[31] [8]),
        .I1(s_axis_tdata[8]),
        .I2(avg_right[3]),
        .I3(m_axis_tdata0_carry_i_1_n_0),
        .O(m_axis_tdata0_carry_i_4_n_0));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry_i_5
       (.I0(\last_data_right_reg[31] [7]),
        .I1(s_axis_tdata[7]),
        .I2(avg_right[2]),
        .I3(m_axis_tdata0_carry_i_2_n_0),
        .O(m_axis_tdata0_carry_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    m_axis_tdata0_carry_i_6
       (.I0(\last_data_right_reg[31] [6]),
        .I1(s_axis_tdata[6]),
        .I2(avg_right[1]),
        .I3(m_axis_tdata0_carry_i_3_n_0),
        .O(m_axis_tdata0_carry_i_6_n_0));
  (* HLUTNM = "lutpair34" *) 
  LUT3 #(
    .INIT(8'h96)) 
    m_axis_tdata0_carry_i_7
       (.I0(s_axis_tdata[5]),
        .I1(\last_data_right_reg[31] [5]),
        .I2(avg_right[0]),
        .O(m_axis_tdata0_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[0]_C_i_1 
       (.I0(p_3_in[0]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[0]_C_n_0 ),
        .O(\m_axis_tdata[0]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\m_axis_tdata_reg[0]_P_n_0 ),
        .I1(\m_axis_tdata_reg[0]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[0]_C_n_0 ),
        .O(m_axis_tdata[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[0]_P_i_1 
       (.I0(m_axis_tdata0[0]),
        .I1(s_axis_tlast),
        .I2(avg_left0[0]),
        .I3(filter_enable),
        .I4(s_axis_tdata[0]),
        .O(p_3_in[0]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[10]_C_i_1 
       (.I0(p_3_in[10]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[10]_C_n_0 ),
        .O(\m_axis_tdata[10]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\m_axis_tdata_reg[10]_P_n_0 ),
        .I1(\m_axis_tdata_reg[10]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[10]_C_n_0 ),
        .O(m_axis_tdata[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[10]_P_i_1 
       (.I0(m_axis_tdata0[10]),
        .I1(s_axis_tlast),
        .I2(avg_left0[10]),
        .I3(filter_enable),
        .I4(s_axis_tdata[10]),
        .O(p_3_in[10]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[11]_C_i_1 
       (.I0(p_3_in[11]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[11]_C_n_0 ),
        .O(\m_axis_tdata[11]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\m_axis_tdata_reg[11]_P_n_0 ),
        .I1(\m_axis_tdata_reg[11]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[11]_C_n_0 ),
        .O(m_axis_tdata[11]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[11]_P_i_1 
       (.I0(m_axis_tdata0[11]),
        .I1(s_axis_tlast),
        .I2(avg_left0[11]),
        .I3(filter_enable),
        .I4(s_axis_tdata[11]),
        .O(p_3_in[11]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[12]_C_i_1 
       (.I0(p_3_in[12]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[12]_C_n_0 ),
        .O(\m_axis_tdata[12]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\m_axis_tdata_reg[12]_P_n_0 ),
        .I1(\m_axis_tdata_reg[12]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[12]_C_n_0 ),
        .O(m_axis_tdata[12]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[12]_P_i_1 
       (.I0(m_axis_tdata0[12]),
        .I1(s_axis_tlast),
        .I2(avg_left0[12]),
        .I3(filter_enable),
        .I4(s_axis_tdata[12]),
        .O(p_3_in[12]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[13]_C_i_1 
       (.I0(p_3_in[13]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[13]_C_n_0 ),
        .O(\m_axis_tdata[13]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\m_axis_tdata_reg[13]_P_n_0 ),
        .I1(\m_axis_tdata_reg[13]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[13]_C_n_0 ),
        .O(m_axis_tdata[13]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[13]_P_i_1 
       (.I0(m_axis_tdata0[13]),
        .I1(s_axis_tlast),
        .I2(avg_left0[13]),
        .I3(filter_enable),
        .I4(s_axis_tdata[13]),
        .O(p_3_in[13]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[14]_C_i_1 
       (.I0(p_3_in[14]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[14]_C_n_0 ),
        .O(\m_axis_tdata[14]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\m_axis_tdata_reg[14]_P_n_0 ),
        .I1(\m_axis_tdata_reg[14]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[14]_C_n_0 ),
        .O(m_axis_tdata[14]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[14]_P_i_1 
       (.I0(m_axis_tdata0[14]),
        .I1(s_axis_tlast),
        .I2(avg_left0[14]),
        .I3(filter_enable),
        .I4(s_axis_tdata[14]),
        .O(p_3_in[14]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[15]_C_i_1 
       (.I0(p_3_in[15]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[15]_C_n_0 ),
        .O(\m_axis_tdata[15]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\m_axis_tdata_reg[15]_P_n_0 ),
        .I1(\m_axis_tdata_reg[15]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[15]_C_n_0 ),
        .O(m_axis_tdata[15]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_P_i_1 
       (.I0(m_axis_tdata0[15]),
        .I1(s_axis_tlast),
        .I2(avg_left0[15]),
        .I3(filter_enable),
        .I4(s_axis_tdata[15]),
        .O(p_3_in[15]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[16]_C_i_1 
       (.I0(p_3_in[16]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[16]_C_n_0 ),
        .O(\m_axis_tdata[16]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\m_axis_tdata_reg[16]_P_n_0 ),
        .I1(\m_axis_tdata_reg[16]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[16]_C_n_0 ),
        .O(m_axis_tdata[16]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[16]_P_i_1 
       (.I0(m_axis_tdata0[16]),
        .I1(s_axis_tlast),
        .I2(avg_left0[16]),
        .I3(filter_enable),
        .I4(s_axis_tdata[16]),
        .O(p_3_in[16]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[17]_C_i_1 
       (.I0(p_3_in[17]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[17]_C_n_0 ),
        .O(\m_axis_tdata[17]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\m_axis_tdata_reg[17]_P_n_0 ),
        .I1(\m_axis_tdata_reg[17]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[17]_C_n_0 ),
        .O(m_axis_tdata[17]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[17]_P_i_1 
       (.I0(m_axis_tdata0[17]),
        .I1(s_axis_tlast),
        .I2(avg_left0[17]),
        .I3(filter_enable),
        .I4(s_axis_tdata[17]),
        .O(p_3_in[17]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[18]_C_i_1 
       (.I0(p_3_in[18]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[18]_C_n_0 ),
        .O(\m_axis_tdata[18]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\m_axis_tdata_reg[18]_P_n_0 ),
        .I1(\m_axis_tdata_reg[18]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[18]_C_n_0 ),
        .O(m_axis_tdata[18]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[18]_P_i_1 
       (.I0(m_axis_tdata0[18]),
        .I1(s_axis_tlast),
        .I2(avg_left0[18]),
        .I3(filter_enable),
        .I4(s_axis_tdata[18]),
        .O(p_3_in[18]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[19]_C_i_1 
       (.I0(p_3_in[19]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[19]_C_n_0 ),
        .O(\m_axis_tdata[19]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\m_axis_tdata_reg[19]_P_n_0 ),
        .I1(\m_axis_tdata_reg[19]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[19]_C_n_0 ),
        .O(m_axis_tdata[19]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[19]_P_i_1 
       (.I0(m_axis_tdata0[19]),
        .I1(s_axis_tlast),
        .I2(avg_left0[19]),
        .I3(filter_enable),
        .I4(s_axis_tdata[19]),
        .O(p_3_in[19]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[1]_C_i_1 
       (.I0(p_3_in[1]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[1]_C_n_0 ),
        .O(\m_axis_tdata[1]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\m_axis_tdata_reg[1]_P_n_0 ),
        .I1(\m_axis_tdata_reg[1]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[1]_C_n_0 ),
        .O(m_axis_tdata[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[1]_P_i_1 
       (.I0(m_axis_tdata0[1]),
        .I1(s_axis_tlast),
        .I2(avg_left0[1]),
        .I3(filter_enable),
        .I4(s_axis_tdata[1]),
        .O(p_3_in[1]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[20]_C_i_1 
       (.I0(p_3_in[20]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[20]_C_n_0 ),
        .O(\m_axis_tdata[20]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\m_axis_tdata_reg[20]_P_n_0 ),
        .I1(\m_axis_tdata_reg[20]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[20]_C_n_0 ),
        .O(m_axis_tdata[20]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[20]_P_i_1 
       (.I0(m_axis_tdata0[20]),
        .I1(s_axis_tlast),
        .I2(avg_left0[20]),
        .I3(filter_enable),
        .I4(s_axis_tdata[20]),
        .O(p_3_in[20]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[21]_C_i_1 
       (.I0(p_3_in[21]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[21]_C_n_0 ),
        .O(\m_axis_tdata[21]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\m_axis_tdata_reg[21]_P_n_0 ),
        .I1(\m_axis_tdata_reg[21]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[21]_C_n_0 ),
        .O(m_axis_tdata[21]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[21]_P_i_1 
       (.I0(m_axis_tdata0[21]),
        .I1(s_axis_tlast),
        .I2(avg_left0[21]),
        .I3(filter_enable),
        .I4(s_axis_tdata[21]),
        .O(p_3_in[21]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[22]_C_i_1 
       (.I0(p_3_in[22]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[22]_C_n_0 ),
        .O(\m_axis_tdata[22]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\m_axis_tdata_reg[22]_P_n_0 ),
        .I1(\m_axis_tdata_reg[22]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[22]_C_n_0 ),
        .O(m_axis_tdata[22]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[22]_P_i_1 
       (.I0(m_axis_tdata0[22]),
        .I1(s_axis_tlast),
        .I2(avg_left0[22]),
        .I3(filter_enable),
        .I4(s_axis_tdata[22]),
        .O(p_3_in[22]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[23]_C_i_1 
       (.I0(p_3_in[23]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[23]_C_n_0 ),
        .O(\m_axis_tdata[23]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\m_axis_tdata_reg[23]_P_n_0 ),
        .I1(\m_axis_tdata_reg[23]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[23]_C_n_0 ),
        .O(m_axis_tdata[23]));
  LUT3 #(
    .INIT(8'h8F)) 
    \m_axis_tdata[23]_P_i_1 
       (.I0(m_axis_tready),
        .I1(s_axis_tvalid),
        .I2(filter_enable),
        .O(\m_axis_tdata[23]_P_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[23]_P_i_2 
       (.I0(m_axis_tdata0[23]),
        .I1(s_axis_tlast),
        .I2(avg_left0[23]),
        .I3(filter_enable),
        .I4(s_axis_tdata[23]),
        .O(p_3_in[23]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[2]_C_i_1 
       (.I0(p_3_in[2]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[2]_C_n_0 ),
        .O(\m_axis_tdata[2]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\m_axis_tdata_reg[2]_P_n_0 ),
        .I1(\m_axis_tdata_reg[2]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[2]_C_n_0 ),
        .O(m_axis_tdata[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[2]_P_i_1 
       (.I0(m_axis_tdata0[2]),
        .I1(s_axis_tlast),
        .I2(avg_left0[2]),
        .I3(filter_enable),
        .I4(s_axis_tdata[2]),
        .O(p_3_in[2]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[3]_C_i_1 
       (.I0(p_3_in[3]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[3]_C_n_0 ),
        .O(\m_axis_tdata[3]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\m_axis_tdata_reg[3]_P_n_0 ),
        .I1(\m_axis_tdata_reg[3]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[3]_C_n_0 ),
        .O(m_axis_tdata[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[3]_P_i_1 
       (.I0(m_axis_tdata0[3]),
        .I1(s_axis_tlast),
        .I2(avg_left0[3]),
        .I3(filter_enable),
        .I4(s_axis_tdata[3]),
        .O(p_3_in[3]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[4]_C_i_1 
       (.I0(p_3_in[4]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[4]_C_n_0 ),
        .O(\m_axis_tdata[4]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\m_axis_tdata_reg[4]_P_n_0 ),
        .I1(\m_axis_tdata_reg[4]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[4]_C_n_0 ),
        .O(m_axis_tdata[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[4]_P_i_1 
       (.I0(m_axis_tdata0[4]),
        .I1(s_axis_tlast),
        .I2(avg_left0[4]),
        .I3(filter_enable),
        .I4(s_axis_tdata[4]),
        .O(p_3_in[4]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[5]_C_i_1 
       (.I0(p_3_in[5]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[5]_C_n_0 ),
        .O(\m_axis_tdata[5]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\m_axis_tdata_reg[5]_P_n_0 ),
        .I1(\m_axis_tdata_reg[5]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[5]_C_n_0 ),
        .O(m_axis_tdata[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[5]_P_i_1 
       (.I0(m_axis_tdata0[5]),
        .I1(s_axis_tlast),
        .I2(avg_left0[5]),
        .I3(filter_enable),
        .I4(s_axis_tdata[5]),
        .O(p_3_in[5]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[6]_C_i_1 
       (.I0(p_3_in[6]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[6]_C_n_0 ),
        .O(\m_axis_tdata[6]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\m_axis_tdata_reg[6]_P_n_0 ),
        .I1(\m_axis_tdata_reg[6]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[6]_C_n_0 ),
        .O(m_axis_tdata[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[6]_P_i_1 
       (.I0(m_axis_tdata0[6]),
        .I1(s_axis_tlast),
        .I2(avg_left0[6]),
        .I3(filter_enable),
        .I4(s_axis_tdata[6]),
        .O(p_3_in[6]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[7]_C_i_1 
       (.I0(p_3_in[7]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[7]_C_n_0 ),
        .O(\m_axis_tdata[7]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\m_axis_tdata_reg[7]_P_n_0 ),
        .I1(\m_axis_tdata_reg[7]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[7]_C_n_0 ),
        .O(m_axis_tdata[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[7]_P_i_1 
       (.I0(m_axis_tdata0[7]),
        .I1(s_axis_tlast),
        .I2(avg_left0[7]),
        .I3(filter_enable),
        .I4(s_axis_tdata[7]),
        .O(p_3_in[7]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[8]_C_i_1 
       (.I0(p_3_in[8]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[8]_C_n_0 ),
        .O(\m_axis_tdata[8]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\m_axis_tdata_reg[8]_P_n_0 ),
        .I1(\m_axis_tdata_reg[8]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[8]_C_n_0 ),
        .O(m_axis_tdata[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[8]_P_i_1 
       (.I0(m_axis_tdata0[8]),
        .I1(s_axis_tlast),
        .I2(avg_left0[8]),
        .I3(filter_enable),
        .I4(s_axis_tdata[8]),
        .O(p_3_in[8]));
  LUT5 #(
    .INIT(32'hBFAA80AA)) 
    \m_axis_tdata[9]_C_i_1 
       (.I0(p_3_in[9]),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(filter_enable),
        .I4(\m_axis_tdata_reg[9]_C_n_0 ),
        .O(\m_axis_tdata[9]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\m_axis_tdata_reg[9]_P_n_0 ),
        .I1(\m_axis_tdata_reg[9]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[9]_C_n_0 ),
        .O(m_axis_tdata[9]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[9]_P_i_1 
       (.I0(m_axis_tdata0[9]),
        .I1(s_axis_tlast),
        .I2(avg_left0[9]),
        .I3(filter_enable),
        .I4(s_axis_tdata[9]),
        .O(p_3_in[9]));
  FDCE \m_axis_tdata_reg[0]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[0]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[0]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[0]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[0]_LDC 
       (.CLR(\m_axis_tdata_reg[0]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[0]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[0]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[0]_LDC_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[0]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[0]_LDC_i_2 
       (.I0(s_axis_tdata[0]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[0]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[0]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[0]),
        .PRE(\m_axis_tdata_reg[0]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[0]_P_n_0 ));
  FDCE \m_axis_tdata_reg[10]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[10]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[10]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[10]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[10]_LDC 
       (.CLR(\m_axis_tdata_reg[10]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[10]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[10]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[10]_LDC_i_1 
       (.I0(s_axis_tdata[10]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[10]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[10]_LDC_i_2 
       (.I0(s_axis_tdata[10]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[10]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[10]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[10]),
        .PRE(\m_axis_tdata_reg[10]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[10]_P_n_0 ));
  FDCE \m_axis_tdata_reg[11]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[11]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[11]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[11]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[11]_LDC 
       (.CLR(\m_axis_tdata_reg[11]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[11]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[11]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[11]_LDC_i_1 
       (.I0(s_axis_tdata[11]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[11]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[11]_LDC_i_2 
       (.I0(s_axis_tdata[11]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[11]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[11]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[11]),
        .PRE(\m_axis_tdata_reg[11]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[11]_P_n_0 ));
  FDCE \m_axis_tdata_reg[12]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[12]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[12]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[12]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[12]_LDC 
       (.CLR(\m_axis_tdata_reg[12]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[12]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[12]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[12]_LDC_i_1 
       (.I0(s_axis_tdata[12]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[12]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[12]_LDC_i_2 
       (.I0(s_axis_tdata[12]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[12]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[12]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[12]),
        .PRE(\m_axis_tdata_reg[12]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[12]_P_n_0 ));
  FDCE \m_axis_tdata_reg[13]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[13]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[13]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[13]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[13]_LDC 
       (.CLR(\m_axis_tdata_reg[13]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[13]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[13]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[13]_LDC_i_1 
       (.I0(s_axis_tdata[13]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[13]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[13]_LDC_i_2 
       (.I0(s_axis_tdata[13]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[13]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[13]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[13]),
        .PRE(\m_axis_tdata_reg[13]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[13]_P_n_0 ));
  FDCE \m_axis_tdata_reg[14]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[14]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[14]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[14]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[14]_LDC 
       (.CLR(\m_axis_tdata_reg[14]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[14]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[14]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[14]_LDC_i_1 
       (.I0(s_axis_tdata[14]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[14]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[14]_LDC_i_2 
       (.I0(s_axis_tdata[14]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[14]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[14]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[14]),
        .PRE(\m_axis_tdata_reg[14]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[14]_P_n_0 ));
  FDCE \m_axis_tdata_reg[15]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[15]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[15]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[15]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[15]_LDC 
       (.CLR(\m_axis_tdata_reg[15]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[15]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[15]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[15]_LDC_i_1 
       (.I0(s_axis_tdata[15]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[15]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[15]_LDC_i_2 
       (.I0(s_axis_tdata[15]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[15]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[15]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[15]),
        .PRE(\m_axis_tdata_reg[15]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[15]_P_n_0 ));
  FDCE \m_axis_tdata_reg[16]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[16]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[16]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[16]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[16]_LDC 
       (.CLR(\m_axis_tdata_reg[16]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[16]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[16]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[16]_LDC_i_1 
       (.I0(s_axis_tdata[16]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[16]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[16]_LDC_i_2 
       (.I0(s_axis_tdata[16]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[16]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[16]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[16]),
        .PRE(\m_axis_tdata_reg[16]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[16]_P_n_0 ));
  FDCE \m_axis_tdata_reg[17]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[17]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[17]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[17]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[17]_LDC 
       (.CLR(\m_axis_tdata_reg[17]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[17]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[17]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[17]_LDC_i_1 
       (.I0(s_axis_tdata[17]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[17]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[17]_LDC_i_2 
       (.I0(s_axis_tdata[17]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[17]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[17]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[17]),
        .PRE(\m_axis_tdata_reg[17]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[17]_P_n_0 ));
  FDCE \m_axis_tdata_reg[18]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[18]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[18]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[18]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[18]_LDC 
       (.CLR(\m_axis_tdata_reg[18]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[18]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[18]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[18]_LDC_i_1 
       (.I0(s_axis_tdata[18]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[18]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[18]_LDC_i_2 
       (.I0(s_axis_tdata[18]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[18]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[18]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[18]),
        .PRE(\m_axis_tdata_reg[18]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[18]_P_n_0 ));
  FDCE \m_axis_tdata_reg[19]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[19]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[19]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[19]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[19]_LDC 
       (.CLR(\m_axis_tdata_reg[19]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[19]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[19]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[19]_LDC_i_1 
       (.I0(s_axis_tdata[19]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[19]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[19]_LDC_i_2 
       (.I0(s_axis_tdata[19]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[19]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[19]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[19]),
        .PRE(\m_axis_tdata_reg[19]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[19]_P_n_0 ));
  FDCE \m_axis_tdata_reg[1]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[1]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[1]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[1]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[1]_LDC 
       (.CLR(\m_axis_tdata_reg[1]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[1]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[1]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[1]_LDC_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[1]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[1]_LDC_i_2 
       (.I0(s_axis_tdata[1]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[1]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[1]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[1]),
        .PRE(\m_axis_tdata_reg[1]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[1]_P_n_0 ));
  FDCE \m_axis_tdata_reg[20]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[20]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[20]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[20]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[20]_LDC 
       (.CLR(\m_axis_tdata_reg[20]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[20]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[20]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[20]_LDC_i_1 
       (.I0(s_axis_tdata[20]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[20]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[20]_LDC_i_2 
       (.I0(s_axis_tdata[20]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[20]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[20]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[20]),
        .PRE(\m_axis_tdata_reg[20]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[20]_P_n_0 ));
  FDCE \m_axis_tdata_reg[21]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[21]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[21]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[21]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[21]_LDC 
       (.CLR(\m_axis_tdata_reg[21]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[21]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[21]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[21]_LDC_i_1 
       (.I0(s_axis_tdata[21]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[21]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[21]_LDC_i_2 
       (.I0(s_axis_tdata[21]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[21]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[21]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[21]),
        .PRE(\m_axis_tdata_reg[21]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[21]_P_n_0 ));
  FDCE \m_axis_tdata_reg[22]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[22]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[22]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[22]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[22]_LDC 
       (.CLR(\m_axis_tdata_reg[22]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[22]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[22]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[22]_LDC_i_1 
       (.I0(s_axis_tdata[22]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[22]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[22]_LDC_i_2 
       (.I0(s_axis_tdata[22]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[22]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[22]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[22]),
        .PRE(\m_axis_tdata_reg[22]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[22]_P_n_0 ));
  FDCE \m_axis_tdata_reg[23]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[23]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[23]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[23]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[23]_LDC 
       (.CLR(\m_axis_tdata_reg[23]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[23]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[23]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[23]_LDC_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[23]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[23]_LDC_i_2 
       (.I0(s_axis_tdata[23]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[23]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[23]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[23]),
        .PRE(\m_axis_tdata_reg[23]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[23]_P_n_0 ));
  FDCE \m_axis_tdata_reg[2]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[2]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[2]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[2]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[2]_LDC 
       (.CLR(\m_axis_tdata_reg[2]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[2]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[2]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[2]_LDC_i_1 
       (.I0(s_axis_tdata[2]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[2]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[2]_LDC_i_2 
       (.I0(s_axis_tdata[2]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[2]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[2]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[2]),
        .PRE(\m_axis_tdata_reg[2]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[2]_P_n_0 ));
  FDCE \m_axis_tdata_reg[3]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[3]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[3]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[3]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[3]_LDC 
       (.CLR(\m_axis_tdata_reg[3]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[3]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[3]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[3]_LDC_i_1 
       (.I0(s_axis_tdata[3]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[3]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[3]_LDC_i_2 
       (.I0(s_axis_tdata[3]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[3]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[3]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[3]),
        .PRE(\m_axis_tdata_reg[3]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[3]_P_n_0 ));
  FDCE \m_axis_tdata_reg[4]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[4]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[4]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[4]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[4]_LDC 
       (.CLR(\m_axis_tdata_reg[4]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[4]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[4]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[4]_LDC_i_1 
       (.I0(s_axis_tdata[4]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[4]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[4]_LDC_i_2 
       (.I0(s_axis_tdata[4]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[4]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[4]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[4]),
        .PRE(\m_axis_tdata_reg[4]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[4]_P_n_0 ));
  FDCE \m_axis_tdata_reg[5]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[5]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[5]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[5]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[5]_LDC 
       (.CLR(\m_axis_tdata_reg[5]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[5]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[5]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[5]_LDC_i_1 
       (.I0(s_axis_tdata[5]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[5]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[5]_LDC_i_2 
       (.I0(s_axis_tdata[5]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[5]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[5]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[5]),
        .PRE(\m_axis_tdata_reg[5]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[5]_P_n_0 ));
  FDCE \m_axis_tdata_reg[6]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[6]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[6]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[6]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[6]_LDC 
       (.CLR(\m_axis_tdata_reg[6]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[6]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[6]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[6]_LDC_i_1 
       (.I0(s_axis_tdata[6]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[6]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[6]_LDC_i_2 
       (.I0(s_axis_tdata[6]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[6]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[6]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[6]),
        .PRE(\m_axis_tdata_reg[6]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[6]_P_n_0 ));
  FDCE \m_axis_tdata_reg[7]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[7]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[7]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[7]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[7]_LDC 
       (.CLR(\m_axis_tdata_reg[7]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[7]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[7]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[7]_LDC_i_1 
       (.I0(s_axis_tdata[7]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[7]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[7]_LDC_i_2 
       (.I0(s_axis_tdata[7]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[7]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[7]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[7]),
        .PRE(\m_axis_tdata_reg[7]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[7]_P_n_0 ));
  FDCE \m_axis_tdata_reg[8]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[8]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[8]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[8]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[8]_LDC 
       (.CLR(\m_axis_tdata_reg[8]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[8]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[8]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[8]_LDC_i_1 
       (.I0(s_axis_tdata[8]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[8]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[8]_LDC_i_2 
       (.I0(s_axis_tdata[8]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[8]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[8]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[8]),
        .PRE(\m_axis_tdata_reg[8]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[8]_P_n_0 ));
  FDCE \m_axis_tdata_reg[9]_C 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\m_axis_tdata_reg[9]_LDC_i_2_n_0 ),
        .D(\m_axis_tdata[9]_C_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[9]_C_n_0 ));
  (* XILINX_LEGACY_PRIM = "LDC" *) 
  LDCE #(
    .INIT(1'b0)) 
    \m_axis_tdata_reg[9]_LDC 
       (.CLR(\m_axis_tdata_reg[9]_LDC_i_2_n_0 ),
        .D(1'b1),
        .G(\m_axis_tdata_reg[9]_LDC_i_1_n_0 ),
        .GE(1'b1),
        .Q(\m_axis_tdata_reg[9]_LDC_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata_reg[9]_LDC_i_1 
       (.I0(s_axis_tdata[9]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[9]_LDC_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata_reg[9]_LDC_i_2 
       (.I0(s_axis_tdata[9]),
        .I1(aresetn),
        .O(\m_axis_tdata_reg[9]_LDC_i_2_n_0 ));
  FDPE \m_axis_tdata_reg[9]_P 
       (.C(aclk),
        .CE(\m_axis_tdata[23]_P_i_1_n_0 ),
        .D(p_3_in[9]),
        .PRE(\m_axis_tdata_reg[9]_LDC_i_1_n_0 ),
        .Q(\m_axis_tdata_reg[9]_P_n_0 ));
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
