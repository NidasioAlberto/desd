// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 24 22:48:32 2023
// Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
//               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_balance_controller_0_0/I2CBalancer_balance_controller_0_0_sim_netlist.v}
// Design      : I2CBalancer_balance_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2CBalancer_balance_controller_0_0,balance_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "balance_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module I2CBalancer_balance_controller_0_0
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
    balance);
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
  input [0:9]balance;

  wire aclk;
  wire aresetn;
  wire [0:9]balance;
  wire [23:0]m_axis_tdata;
  wire m_axis_tready;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign m_axis_tlast = s_axis_tlast;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  I2CBalancer_balance_controller_0_0_balance_controller U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .balance(balance),
        .m_axis_tdata(m_axis_tdata),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast));
endmodule

(* ORIG_REF_NAME = "balance_controller" *) 
module I2CBalancer_balance_controller_0_0_balance_controller
   (m_axis_tdata,
    s_axis_tdata,
    balance,
    s_axis_tlast,
    aresetn,
    aclk);
  output [23:0]m_axis_tdata;
  input [23:0]s_axis_tdata;
  input [0:9]balance;
  input s_axis_tlast;
  input aresetn;
  input aclk;

  wire aclk;
  wire aresetn;
  wire [0:9]balance;
  wire [23:0]m_axis_tdata;
  wire \m_axis_tdata[0]_i_10_n_0 ;
  wire \m_axis_tdata[0]_i_2_n_0 ;
  wire \m_axis_tdata[0]_i_3_n_0 ;
  wire \m_axis_tdata[0]_i_4_n_0 ;
  wire \m_axis_tdata[0]_i_5_n_0 ;
  wire \m_axis_tdata[0]_i_6_n_0 ;
  wire \m_axis_tdata[0]_i_7_n_0 ;
  wire \m_axis_tdata[0]_i_8_n_0 ;
  wire \m_axis_tdata[0]_i_9_n_0 ;
  wire \m_axis_tdata[10]_i_2_n_0 ;
  wire \m_axis_tdata[10]_i_3_n_0 ;
  wire \m_axis_tdata[10]_i_4_n_0 ;
  wire \m_axis_tdata[10]_i_5_n_0 ;
  wire \m_axis_tdata[10]_i_6_n_0 ;
  wire \m_axis_tdata[10]_i_7_n_0 ;
  wire \m_axis_tdata[10]_i_8_n_0 ;
  wire \m_axis_tdata[10]_i_9_n_0 ;
  wire \m_axis_tdata[11]_i_2_n_0 ;
  wire \m_axis_tdata[11]_i_3_n_0 ;
  wire \m_axis_tdata[11]_i_4_n_0 ;
  wire \m_axis_tdata[11]_i_5_n_0 ;
  wire \m_axis_tdata[11]_i_6_n_0 ;
  wire \m_axis_tdata[11]_i_7_n_0 ;
  wire \m_axis_tdata[11]_i_8_n_0 ;
  wire \m_axis_tdata[11]_i_9_n_0 ;
  wire \m_axis_tdata[12]_i_10_n_0 ;
  wire \m_axis_tdata[12]_i_2_n_0 ;
  wire \m_axis_tdata[12]_i_3_n_0 ;
  wire \m_axis_tdata[12]_i_4_n_0 ;
  wire \m_axis_tdata[12]_i_5_n_0 ;
  wire \m_axis_tdata[12]_i_6_n_0 ;
  wire \m_axis_tdata[12]_i_7_n_0 ;
  wire \m_axis_tdata[12]_i_8_n_0 ;
  wire \m_axis_tdata[12]_i_9_n_0 ;
  wire \m_axis_tdata[13]_i_10_n_0 ;
  wire \m_axis_tdata[13]_i_2_n_0 ;
  wire \m_axis_tdata[13]_i_3_n_0 ;
  wire \m_axis_tdata[13]_i_4_n_0 ;
  wire \m_axis_tdata[13]_i_5_n_0 ;
  wire \m_axis_tdata[13]_i_6_n_0 ;
  wire \m_axis_tdata[13]_i_7_n_0 ;
  wire \m_axis_tdata[13]_i_8_n_0 ;
  wire \m_axis_tdata[13]_i_9_n_0 ;
  wire \m_axis_tdata[14]_i_10_n_0 ;
  wire \m_axis_tdata[14]_i_11_n_0 ;
  wire \m_axis_tdata[14]_i_2_n_0 ;
  wire \m_axis_tdata[14]_i_3_n_0 ;
  wire \m_axis_tdata[14]_i_4_n_0 ;
  wire \m_axis_tdata[14]_i_5_n_0 ;
  wire \m_axis_tdata[14]_i_6_n_0 ;
  wire \m_axis_tdata[14]_i_7_n_0 ;
  wire \m_axis_tdata[14]_i_8_n_0 ;
  wire \m_axis_tdata[14]_i_9_n_0 ;
  wire \m_axis_tdata[15]_i_10_n_0 ;
  wire \m_axis_tdata[15]_i_11_n_0 ;
  wire \m_axis_tdata[15]_i_12_n_0 ;
  wire \m_axis_tdata[15]_i_2_n_0 ;
  wire \m_axis_tdata[15]_i_3_n_0 ;
  wire \m_axis_tdata[15]_i_4_n_0 ;
  wire \m_axis_tdata[15]_i_5_n_0 ;
  wire \m_axis_tdata[15]_i_6_n_0 ;
  wire \m_axis_tdata[15]_i_7_n_0 ;
  wire \m_axis_tdata[15]_i_8_n_0 ;
  wire \m_axis_tdata[15]_i_9_n_0 ;
  wire \m_axis_tdata[16]_i_10_n_0 ;
  wire \m_axis_tdata[16]_i_11_n_0 ;
  wire \m_axis_tdata[16]_i_12_n_0 ;
  wire \m_axis_tdata[16]_i_13_n_0 ;
  wire \m_axis_tdata[16]_i_14_n_0 ;
  wire \m_axis_tdata[16]_i_2_n_0 ;
  wire \m_axis_tdata[16]_i_3_n_0 ;
  wire \m_axis_tdata[16]_i_4_n_0 ;
  wire \m_axis_tdata[16]_i_5_n_0 ;
  wire \m_axis_tdata[16]_i_6_n_0 ;
  wire \m_axis_tdata[16]_i_7_n_0 ;
  wire \m_axis_tdata[16]_i_8_n_0 ;
  wire \m_axis_tdata[16]_i_9_n_0 ;
  wire \m_axis_tdata[17]_i_2_n_0 ;
  wire \m_axis_tdata[17]_i_3_n_0 ;
  wire \m_axis_tdata[17]_i_4_n_0 ;
  wire \m_axis_tdata[17]_i_5_n_0 ;
  wire \m_axis_tdata[17]_i_6_n_0 ;
  wire \m_axis_tdata[17]_i_7_n_0 ;
  wire \m_axis_tdata[18]_i_10_n_0 ;
  wire \m_axis_tdata[18]_i_11_n_0 ;
  wire \m_axis_tdata[18]_i_2_n_0 ;
  wire \m_axis_tdata[18]_i_3_n_0 ;
  wire \m_axis_tdata[18]_i_4_n_0 ;
  wire \m_axis_tdata[18]_i_5_n_0 ;
  wire \m_axis_tdata[18]_i_6_n_0 ;
  wire \m_axis_tdata[18]_i_7_n_0 ;
  wire \m_axis_tdata[18]_i_8_n_0 ;
  wire \m_axis_tdata[18]_i_9_n_0 ;
  wire \m_axis_tdata[19]_i_10_n_0 ;
  wire \m_axis_tdata[19]_i_2_n_0 ;
  wire \m_axis_tdata[19]_i_3_n_0 ;
  wire \m_axis_tdata[19]_i_4_n_0 ;
  wire \m_axis_tdata[19]_i_5_n_0 ;
  wire \m_axis_tdata[19]_i_6_n_0 ;
  wire \m_axis_tdata[19]_i_7_n_0 ;
  wire \m_axis_tdata[19]_i_8_n_0 ;
  wire \m_axis_tdata[19]_i_9_n_0 ;
  wire \m_axis_tdata[1]_i_10_n_0 ;
  wire \m_axis_tdata[1]_i_2_n_0 ;
  wire \m_axis_tdata[1]_i_3_n_0 ;
  wire \m_axis_tdata[1]_i_4_n_0 ;
  wire \m_axis_tdata[1]_i_5_n_0 ;
  wire \m_axis_tdata[1]_i_6_n_0 ;
  wire \m_axis_tdata[1]_i_7_n_0 ;
  wire \m_axis_tdata[1]_i_8_n_0 ;
  wire \m_axis_tdata[1]_i_9_n_0 ;
  wire \m_axis_tdata[20]_i_2_n_0 ;
  wire \m_axis_tdata[20]_i_3_n_0 ;
  wire \m_axis_tdata[20]_i_4_n_0 ;
  wire \m_axis_tdata[21]_i_10_n_0 ;
  wire \m_axis_tdata[21]_i_11_n_0 ;
  wire \m_axis_tdata[21]_i_12_n_0 ;
  wire \m_axis_tdata[21]_i_13_n_0 ;
  wire \m_axis_tdata[21]_i_14_n_0 ;
  wire \m_axis_tdata[21]_i_15_n_0 ;
  wire \m_axis_tdata[21]_i_16_n_0 ;
  wire \m_axis_tdata[21]_i_17_n_0 ;
  wire \m_axis_tdata[21]_i_18_n_0 ;
  wire \m_axis_tdata[21]_i_2_n_0 ;
  wire \m_axis_tdata[21]_i_3_n_0 ;
  wire \m_axis_tdata[21]_i_4_n_0 ;
  wire \m_axis_tdata[21]_i_5_n_0 ;
  wire \m_axis_tdata[21]_i_6_n_0 ;
  wire \m_axis_tdata[21]_i_7_n_0 ;
  wire \m_axis_tdata[21]_i_8_n_0 ;
  wire \m_axis_tdata[21]_i_9_n_0 ;
  wire \m_axis_tdata[22]_i_2_n_0 ;
  wire \m_axis_tdata[22]_i_3_n_0 ;
  wire \m_axis_tdata[22]_i_4_n_0 ;
  wire \m_axis_tdata[22]_i_5_n_0 ;
  wire \m_axis_tdata[22]_i_6_n_0 ;
  wire \m_axis_tdata[22]_i_7_n_0 ;
  wire \m_axis_tdata[2]_i_10_n_0 ;
  wire \m_axis_tdata[2]_i_2_n_0 ;
  wire \m_axis_tdata[2]_i_3_n_0 ;
  wire \m_axis_tdata[2]_i_4_n_0 ;
  wire \m_axis_tdata[2]_i_5_n_0 ;
  wire \m_axis_tdata[2]_i_6_n_0 ;
  wire \m_axis_tdata[2]_i_7_n_0 ;
  wire \m_axis_tdata[2]_i_8_n_0 ;
  wire \m_axis_tdata[2]_i_9_n_0 ;
  wire \m_axis_tdata[3]_i_10_n_0 ;
  wire \m_axis_tdata[3]_i_2_n_0 ;
  wire \m_axis_tdata[3]_i_3_n_0 ;
  wire \m_axis_tdata[3]_i_4_n_0 ;
  wire \m_axis_tdata[3]_i_5_n_0 ;
  wire \m_axis_tdata[3]_i_6_n_0 ;
  wire \m_axis_tdata[3]_i_7_n_0 ;
  wire \m_axis_tdata[3]_i_8_n_0 ;
  wire \m_axis_tdata[3]_i_9_n_0 ;
  wire \m_axis_tdata[4]_i_10_n_0 ;
  wire \m_axis_tdata[4]_i_2_n_0 ;
  wire \m_axis_tdata[4]_i_3_n_0 ;
  wire \m_axis_tdata[4]_i_4_n_0 ;
  wire \m_axis_tdata[4]_i_5_n_0 ;
  wire \m_axis_tdata[4]_i_6_n_0 ;
  wire \m_axis_tdata[4]_i_7_n_0 ;
  wire \m_axis_tdata[4]_i_8_n_0 ;
  wire \m_axis_tdata[4]_i_9_n_0 ;
  wire \m_axis_tdata[5]_i_10_n_0 ;
  wire \m_axis_tdata[5]_i_2_n_0 ;
  wire \m_axis_tdata[5]_i_3_n_0 ;
  wire \m_axis_tdata[5]_i_4_n_0 ;
  wire \m_axis_tdata[5]_i_5_n_0 ;
  wire \m_axis_tdata[5]_i_6_n_0 ;
  wire \m_axis_tdata[5]_i_7_n_0 ;
  wire \m_axis_tdata[5]_i_8_n_0 ;
  wire \m_axis_tdata[5]_i_9_n_0 ;
  wire \m_axis_tdata[6]_i_10_n_0 ;
  wire \m_axis_tdata[6]_i_2_n_0 ;
  wire \m_axis_tdata[6]_i_3_n_0 ;
  wire \m_axis_tdata[6]_i_4_n_0 ;
  wire \m_axis_tdata[6]_i_5_n_0 ;
  wire \m_axis_tdata[6]_i_6_n_0 ;
  wire \m_axis_tdata[6]_i_7_n_0 ;
  wire \m_axis_tdata[6]_i_8_n_0 ;
  wire \m_axis_tdata[6]_i_9_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire \m_axis_tdata[7]_i_3_n_0 ;
  wire \m_axis_tdata[7]_i_4_n_0 ;
  wire \m_axis_tdata[7]_i_5_n_0 ;
  wire \m_axis_tdata[7]_i_6_n_0 ;
  wire \m_axis_tdata[7]_i_7_n_0 ;
  wire \m_axis_tdata[7]_i_8_n_0 ;
  wire \m_axis_tdata[7]_i_9_n_0 ;
  wire \m_axis_tdata[8]_i_10_n_0 ;
  wire \m_axis_tdata[8]_i_2_n_0 ;
  wire \m_axis_tdata[8]_i_3_n_0 ;
  wire \m_axis_tdata[8]_i_4_n_0 ;
  wire \m_axis_tdata[8]_i_5_n_0 ;
  wire \m_axis_tdata[8]_i_6_n_0 ;
  wire \m_axis_tdata[8]_i_7_n_0 ;
  wire \m_axis_tdata[8]_i_8_n_0 ;
  wire \m_axis_tdata[8]_i_9_n_0 ;
  wire \m_axis_tdata[9]_i_10_n_0 ;
  wire \m_axis_tdata[9]_i_2_n_0 ;
  wire \m_axis_tdata[9]_i_3_n_0 ;
  wire \m_axis_tdata[9]_i_4_n_0 ;
  wire \m_axis_tdata[9]_i_5_n_0 ;
  wire \m_axis_tdata[9]_i_6_n_0 ;
  wire \m_axis_tdata[9]_i_7_n_0 ;
  wire \m_axis_tdata[9]_i_8_n_0 ;
  wire \m_axis_tdata[9]_i_9_n_0 ;
  wire [22:0]p_1_in;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;

  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[0]_i_1 
       (.I0(\m_axis_tdata[0]_i_2_n_0 ),
        .I1(\m_axis_tdata[0]_i_3_n_0 ),
        .I2(\m_axis_tdata[0]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[0]_i_5_n_0 ),
        .I5(\m_axis_tdata[0]_i_6_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[0]_i_10 
       (.I0(\m_axis_tdata[16]_i_9_n_0 ),
        .I1(s_axis_tdata[7]),
        .I2(s_axis_tdata[8]),
        .I3(\m_axis_tdata[16]_i_7_n_0 ),
        .I4(s_axis_tdata[6]),
        .I5(\m_axis_tdata[16]_i_8_n_0 ),
        .O(\m_axis_tdata[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[0]_i_2 
       (.I0(\m_axis_tdata[0]_i_7_n_0 ),
        .I1(s_axis_tdata[0]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[0]_i_3 
       (.I0(s_axis_tdata[4]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[5]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[3]),
        .O(\m_axis_tdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBAFFFFFBBAF)) 
    \m_axis_tdata[0]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(s_axis_tdata[0]),
        .I2(s_axis_tdata[7]),
        .I3(\m_axis_tdata[14]_i_8_n_0 ),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .I5(s_axis_tdata[6]),
        .O(\m_axis_tdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFFF)) 
    \m_axis_tdata[0]_i_5 
       (.I0(\m_axis_tdata[18]_i_11_n_0 ),
        .I1(s_axis_tdata[4]),
        .I2(\m_axis_tdata[0]_i_8_n_0 ),
        .I3(\m_axis_tdata[0]_i_9_n_0 ),
        .I4(s_axis_tlast),
        .I5(\m_axis_tdata[0]_i_10_n_0 ),
        .O(\m_axis_tdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101BB0BBFFFFFFFF)) 
    \m_axis_tdata[0]_i_6 
       (.I0(\m_axis_tdata[18]_i_8_n_0 ),
        .I1(s_axis_tdata[2]),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[0]),
        .I5(\m_axis_tdata[21]_i_8_n_0 ),
        .O(\m_axis_tdata[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[0]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[1]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[2]),
        .O(\m_axis_tdata[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[0]_i_8 
       (.I0(s_axis_tdata[3]),
        .I1(\m_axis_tdata[19]_i_9_n_0 ),
        .O(\m_axis_tdata[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[0]_i_9 
       (.I0(s_axis_tdata[5]),
        .I1(\m_axis_tdata[18]_i_10_n_0 ),
        .O(\m_axis_tdata[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[10]_i_1 
       (.I0(\m_axis_tdata[10]_i_2_n_0 ),
        .I1(\m_axis_tdata[10]_i_3_n_0 ),
        .I2(\m_axis_tdata[10]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[10]_i_5_n_0 ),
        .I5(\m_axis_tdata[10]_i_6_n_0 ),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[10]_i_2 
       (.I0(\m_axis_tdata[10]_i_7_n_0 ),
        .I1(s_axis_tdata[10]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[10]_i_3 
       (.I0(s_axis_tdata[14]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[15]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[13]),
        .O(\m_axis_tdata[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBAFFFFFBBAF)) 
    \m_axis_tdata[10]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[14]_i_8_n_0 ),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .I5(s_axis_tdata[16]),
        .O(\m_axis_tdata[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \m_axis_tdata[10]_i_5 
       (.I0(\m_axis_tdata[10]_i_8_n_0 ),
        .I1(s_axis_tlast),
        .I2(\m_axis_tdata[10]_i_9_n_0 ),
        .O(\m_axis_tdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \m_axis_tdata[10]_i_6 
       (.I0(\m_axis_tdata[18]_i_10_n_0 ),
        .I1(s_axis_tdata[15]),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[14]),
        .I5(\m_axis_tdata[18]_i_11_n_0 ),
        .O(\m_axis_tdata[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[10]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[11]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[12]),
        .O(\m_axis_tdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA82020AA2020)) 
    \m_axis_tdata[10]_i_8 
       (.I0(\m_axis_tdata[21]_i_8_n_0 ),
        .I1(\m_axis_tdata[18]_i_8_n_0 ),
        .I2(s_axis_tdata[12]),
        .I3(\m_axis_tdata[18]_i_9_n_0 ),
        .I4(s_axis_tdata[11]),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[10]_i_9 
       (.I0(\m_axis_tdata[16]_i_8_n_0 ),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[18]),
        .I3(\m_axis_tdata[16]_i_7_n_0 ),
        .I4(s_axis_tdata[17]),
        .I5(\m_axis_tdata[16]_i_9_n_0 ),
        .O(\m_axis_tdata[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEEEEEE0EEE0EE)) 
    \m_axis_tdata[11]_i_1 
       (.I0(\m_axis_tdata[11]_i_2_n_0 ),
        .I1(\m_axis_tdata[11]_i_3_n_0 ),
        .I2(\m_axis_tdata[11]_i_4_n_0 ),
        .I3(\m_axis_tdata[11]_i_5_n_0 ),
        .I4(\m_axis_tdata[11]_i_6_n_0 ),
        .I5(\m_axis_tdata[15]_i_5_n_0 ),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \m_axis_tdata[11]_i_2 
       (.I0(\m_axis_tdata[11]_i_7_n_0 ),
        .I1(s_axis_tlast),
        .I2(\m_axis_tdata[11]_i_8_n_0 ),
        .O(\m_axis_tdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[11]_i_3 
       (.I0(\m_axis_tdata[18]_i_10_n_0 ),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[14]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[15]),
        .I5(\m_axis_tdata[18]_i_11_n_0 ),
        .O(\m_axis_tdata[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[11]_i_4 
       (.I0(\m_axis_tdata[11]_i_9_n_0 ),
        .I1(s_axis_tdata[11]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \m_axis_tdata[11]_i_5 
       (.I0(s_axis_tdata[14]),
        .I1(\m_axis_tdata[21]_i_14_n_0 ),
        .I2(s_axis_tdata[15]),
        .I3(\m_axis_tdata[21]_i_12_n_0 ),
        .I4(s_axis_tdata[16]),
        .I5(\m_axis_tdata[21]_i_13_n_0 ),
        .O(\m_axis_tdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAEBFAEBFAEAEBFBF)) 
    \m_axis_tdata[11]_i_6 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(\m_axis_tdata[15]_i_9_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(s_axis_tdata[11]),
        .I4(s_axis_tdata[18]),
        .I5(\m_axis_tdata[14]_i_8_n_0 ),
        .O(\m_axis_tdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA82020AA2020)) 
    \m_axis_tdata[11]_i_7 
       (.I0(\m_axis_tdata[21]_i_8_n_0 ),
        .I1(\m_axis_tdata[18]_i_8_n_0 ),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[18]_i_9_n_0 ),
        .I4(s_axis_tdata[12]),
        .I5(s_axis_tdata[11]),
        .O(\m_axis_tdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[11]_i_8 
       (.I0(\m_axis_tdata[16]_i_8_n_0 ),
        .I1(s_axis_tdata[17]),
        .I2(s_axis_tdata[18]),
        .I3(\m_axis_tdata[16]_i_9_n_0 ),
        .I4(s_axis_tdata[19]),
        .I5(\m_axis_tdata[16]_i_7_n_0 ),
        .O(\m_axis_tdata[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[11]_i_9 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[12]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[13]),
        .O(\m_axis_tdata[11]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAE00AEAE)) 
    \m_axis_tdata[12]_i_1 
       (.I0(\m_axis_tdata[12]_i_2_n_0 ),
        .I1(s_axis_tdata[12]),
        .I2(\m_axis_tdata[22]_i_3_n_0 ),
        .I3(\m_axis_tdata[12]_i_3_n_0 ),
        .I4(\m_axis_tdata[12]_i_4_n_0 ),
        .I5(\m_axis_tdata[12]_i_5_n_0 ),
        .O(p_1_in[12]));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[12]_i_10 
       (.I0(s_axis_tdata[19]),
        .I1(\m_axis_tdata[15]_i_10_n_0 ),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[18]),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .O(\m_axis_tdata[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF75FFFF)) 
    \m_axis_tdata[12]_i_2 
       (.I0(\m_axis_tdata[12]_i_6_n_0 ),
        .I1(\m_axis_tdata[18]_i_10_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[12]_i_7_n_0 ),
        .I4(s_axis_tlast),
        .I5(\m_axis_tdata[12]_i_8_n_0 ),
        .O(\m_axis_tdata[12]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[12]_i_3 
       (.I0(\m_axis_tdata[12]_i_9_n_0 ),
        .I1(s_axis_tdata[12]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \m_axis_tdata[12]_i_4 
       (.I0(s_axis_tdata[15]),
        .I1(\m_axis_tdata[21]_i_14_n_0 ),
        .I2(s_axis_tdata[16]),
        .I3(\m_axis_tdata[21]_i_12_n_0 ),
        .I4(s_axis_tdata[17]),
        .I5(\m_axis_tdata[21]_i_13_n_0 ),
        .O(\m_axis_tdata[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tdata[12]_i_5 
       (.I0(\m_axis_tdata[15]_i_5_n_0 ),
        .I1(\m_axis_tdata[12]_i_10_n_0 ),
        .I2(\m_axis_tdata[21]_i_17_n_0 ),
        .O(\m_axis_tdata[12]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hB0BF)) 
    \m_axis_tdata[12]_i_6 
       (.I0(\m_axis_tdata[18]_i_9_n_0 ),
        .I1(s_axis_tdata[13]),
        .I2(\m_axis_tdata[18]_i_8_n_0 ),
        .I3(s_axis_tdata[14]),
        .O(\m_axis_tdata[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \m_axis_tdata[12]_i_7 
       (.I0(\m_axis_tdata[21]_i_18_n_0 ),
        .I1(\m_axis_tdata[16]_i_14_n_0 ),
        .I2(s_axis_tdata[16]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[12]_i_8 
       (.I0(\m_axis_tdata[16]_i_9_n_0 ),
        .I1(s_axis_tdata[19]),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[16]_i_7_n_0 ),
        .I4(s_axis_tdata[18]),
        .I5(\m_axis_tdata[16]_i_8_n_0 ),
        .O(\m_axis_tdata[12]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[12]_i_9 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[13]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[14]),
        .O(\m_axis_tdata[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAE00AEAE)) 
    \m_axis_tdata[13]_i_1 
       (.I0(\m_axis_tdata[13]_i_2_n_0 ),
        .I1(s_axis_tdata[13]),
        .I2(\m_axis_tdata[22]_i_3_n_0 ),
        .I3(\m_axis_tdata[13]_i_3_n_0 ),
        .I4(\m_axis_tdata[13]_i_4_n_0 ),
        .I5(\m_axis_tdata[13]_i_5_n_0 ),
        .O(p_1_in[13]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \m_axis_tdata[13]_i_10 
       (.I0(\m_axis_tdata[14]_i_8_n_0 ),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[15]_i_9_n_0 ),
        .I4(s_axis_tdata[19]),
        .O(\m_axis_tdata[13]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEFEF)) 
    \m_axis_tdata[13]_i_2 
       (.I0(\m_axis_tdata[13]_i_6_n_0 ),
        .I1(\m_axis_tdata[13]_i_7_n_0 ),
        .I2(s_axis_tlast),
        .I3(\m_axis_tdata[18]_i_10_n_0 ),
        .I4(s_axis_tdata[18]),
        .I5(\m_axis_tdata[13]_i_8_n_0 ),
        .O(\m_axis_tdata[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[13]_i_3 
       (.I0(\m_axis_tdata[13]_i_9_n_0 ),
        .I1(s_axis_tdata[13]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \m_axis_tdata[13]_i_4 
       (.I0(s_axis_tdata[16]),
        .I1(\m_axis_tdata[21]_i_14_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[21]_i_12_n_0 ),
        .I4(s_axis_tdata[18]),
        .I5(\m_axis_tdata[21]_i_13_n_0 ),
        .O(\m_axis_tdata[13]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tdata[13]_i_5 
       (.I0(\m_axis_tdata[15]_i_5_n_0 ),
        .I1(\m_axis_tdata[13]_i_10_n_0 ),
        .I2(\m_axis_tdata[21]_i_17_n_0 ),
        .O(\m_axis_tdata[13]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[13]_i_6 
       (.I0(s_axis_tdata[14]),
        .I1(\m_axis_tdata[18]_i_9_n_0 ),
        .I2(\m_axis_tdata[18]_i_8_n_0 ),
        .I3(s_axis_tdata[15]),
        .O(\m_axis_tdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[13]_i_7 
       (.I0(\m_axis_tdata[16]_i_8_n_0 ),
        .I1(s_axis_tdata[19]),
        .I2(s_axis_tdata[21]),
        .I3(\m_axis_tdata[16]_i_7_n_0 ),
        .I4(s_axis_tdata[20]),
        .I5(\m_axis_tdata[16]_i_9_n_0 ),
        .O(\m_axis_tdata[13]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \m_axis_tdata[13]_i_8 
       (.I0(\m_axis_tdata[21]_i_18_n_0 ),
        .I1(\m_axis_tdata[16]_i_14_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[16]),
        .O(\m_axis_tdata[13]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[13]_i_9 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[14]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[15]),
        .O(\m_axis_tdata[13]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[14]_i_1 
       (.I0(\m_axis_tdata[14]_i_2_n_0 ),
        .I1(\m_axis_tdata[14]_i_3_n_0 ),
        .I2(\m_axis_tdata[14]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[14]_i_5_n_0 ),
        .I5(\m_axis_tdata[14]_i_6_n_0 ),
        .O(p_1_in[14]));
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[14]_i_10 
       (.I0(s_axis_tdata[19]),
        .I1(\m_axis_tdata[18]_i_10_n_0 ),
        .O(\m_axis_tdata[14]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[14]_i_11 
       (.I0(\m_axis_tdata[16]_i_9_n_0 ),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[22]),
        .I3(\m_axis_tdata[16]_i_7_n_0 ),
        .I4(s_axis_tdata[20]),
        .I5(\m_axis_tdata[16]_i_8_n_0 ),
        .O(\m_axis_tdata[14]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[14]_i_2 
       (.I0(\m_axis_tdata[14]_i_7_n_0 ),
        .I1(s_axis_tdata[14]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[14]_i_3 
       (.I0(s_axis_tdata[18]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[19]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[17]),
        .O(\m_axis_tdata[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBAFFFFFBBAF)) 
    \m_axis_tdata[14]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(s_axis_tdata[14]),
        .I2(s_axis_tdata[21]),
        .I3(\m_axis_tdata[14]_i_8_n_0 ),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .I5(s_axis_tdata[20]),
        .O(\m_axis_tdata[14]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFFF)) 
    \m_axis_tdata[14]_i_5 
       (.I0(\m_axis_tdata[18]_i_11_n_0 ),
        .I1(s_axis_tdata[18]),
        .I2(\m_axis_tdata[14]_i_9_n_0 ),
        .I3(\m_axis_tdata[14]_i_10_n_0 ),
        .I4(s_axis_tlast),
        .I5(\m_axis_tdata[14]_i_11_n_0 ),
        .O(\m_axis_tdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101BB0BBFFFFFFFF)) 
    \m_axis_tdata[14]_i_6 
       (.I0(\m_axis_tdata[18]_i_8_n_0 ),
        .I1(s_axis_tdata[16]),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[15]),
        .I4(s_axis_tdata[14]),
        .I5(\m_axis_tdata[21]_i_8_n_0 ),
        .O(\m_axis_tdata[14]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[14]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[15]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[16]),
        .O(\m_axis_tdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFFFFFF1FFF1)) 
    \m_axis_tdata[14]_i_8 
       (.I0(\m_axis_tdata[21]_i_15_n_0 ),
        .I1(\m_axis_tdata[22]_i_6_n_0 ),
        .I2(\m_axis_tdata[21]_i_16_n_0 ),
        .I3(balance[2]),
        .I4(\m_axis_tdata[22]_i_5_n_0 ),
        .I5(balance[3]),
        .O(\m_axis_tdata[14]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[14]_i_9 
       (.I0(s_axis_tdata[17]),
        .I1(\m_axis_tdata[19]_i_9_n_0 ),
        .O(\m_axis_tdata[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[15]_i_1 
       (.I0(\m_axis_tdata[15]_i_2_n_0 ),
        .I1(\m_axis_tdata[15]_i_3_n_0 ),
        .I2(\m_axis_tdata[15]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[15]_i_6_n_0 ),
        .I5(\m_axis_tdata[15]_i_7_n_0 ),
        .O(p_1_in[15]));
  LUT6 #(
    .INIT(64'h000D000D000D0000)) 
    \m_axis_tdata[15]_i_10 
       (.I0(balance[3]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[2]),
        .I3(\m_axis_tdata[21]_i_16_n_0 ),
        .I4(\m_axis_tdata[22]_i_6_n_0 ),
        .I5(\m_axis_tdata[21]_i_15_n_0 ),
        .O(\m_axis_tdata[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA82020AA2020)) 
    \m_axis_tdata[15]_i_11 
       (.I0(\m_axis_tdata[21]_i_8_n_0 ),
        .I1(\m_axis_tdata[18]_i_8_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[18]_i_9_n_0 ),
        .I4(s_axis_tdata[16]),
        .I5(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[15]_i_12 
       (.I0(\m_axis_tdata[16]_i_9_n_0 ),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[21]),
        .I3(\m_axis_tdata[16]_i_8_n_0 ),
        .I4(s_axis_tdata[23]),
        .I5(\m_axis_tdata[16]_i_7_n_0 ),
        .O(\m_axis_tdata[15]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[15]_i_2 
       (.I0(\m_axis_tdata[15]_i_8_n_0 ),
        .I1(s_axis_tdata[15]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[15]_i_3 
       (.I0(s_axis_tdata[19]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEBFBFBFAEBF)) 
    \m_axis_tdata[15]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(\m_axis_tdata[15]_i_9_n_0 ),
        .I2(s_axis_tdata[21]),
        .I3(s_axis_tdata[15]),
        .I4(\m_axis_tdata[15]_i_10_n_0 ),
        .I5(s_axis_tdata[22]),
        .O(\m_axis_tdata[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFFB0DFF)) 
    \m_axis_tdata[15]_i_5 
       (.I0(balance[3]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[2]),
        .I3(balance[1]),
        .I4(balance[0]),
        .O(\m_axis_tdata[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \m_axis_tdata[15]_i_6 
       (.I0(\m_axis_tdata[15]_i_11_n_0 ),
        .I1(s_axis_tlast),
        .I2(\m_axis_tdata[15]_i_12_n_0 ),
        .O(\m_axis_tdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \m_axis_tdata[15]_i_7 
       (.I0(\m_axis_tdata[18]_i_10_n_0 ),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[18]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[19]),
        .I5(\m_axis_tdata[18]_i_11_n_0 ),
        .O(\m_axis_tdata[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[15]_i_8 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[16]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[17]),
        .O(\m_axis_tdata[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00011000)) 
    \m_axis_tdata[15]_i_9 
       (.I0(balance[0]),
        .I1(balance[1]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[3]),
        .O(\m_axis_tdata[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFE0)) 
    \m_axis_tdata[16]_i_1 
       (.I0(\m_axis_tdata[16]_i_2_n_0 ),
        .I1(\m_axis_tdata[16]_i_3_n_0 ),
        .I2(s_axis_tlast),
        .I3(\m_axis_tdata[16]_i_4_n_0 ),
        .I4(\m_axis_tdata[16]_i_5_n_0 ),
        .I5(\m_axis_tdata[16]_i_6_n_0 ),
        .O(p_1_in[16]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \m_axis_tdata[16]_i_10 
       (.I0(\m_axis_tdata[21]_i_18_n_0 ),
        .I1(\m_axis_tdata[16]_i_14_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[19]),
        .O(\m_axis_tdata[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4C40444CC04040C0)) 
    \m_axis_tdata[16]_i_11 
       (.I0(\m_axis_tdata[21]_i_18_n_0 ),
        .I1(balance[0]),
        .I2(balance[1]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_i_5_n_0 ),
        .I5(balance[2]),
        .O(\m_axis_tdata[16]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \m_axis_tdata[16]_i_12 
       (.I0(s_axis_tdata[16]),
        .I1(s_axis_tdata[17]),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[18]),
        .I4(\m_axis_tdata[18]_i_8_n_0 ),
        .O(\m_axis_tdata[16]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h7707770700007707)) 
    \m_axis_tdata[16]_i_13 
       (.I0(\m_axis_tdata[15]_i_9_n_0 ),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[16]),
        .I3(\m_axis_tdata[21]_i_5_n_0 ),
        .I4(s_axis_tdata[23]),
        .I5(\m_axis_tdata[14]_i_8_n_0 ),
        .O(\m_axis_tdata[16]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00DFFFFF)) 
    \m_axis_tdata[16]_i_14 
       (.I0(balance[2]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[3]),
        .I3(balance[1]),
        .I4(balance[0]),
        .O(\m_axis_tdata[16]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h5D0CFF0C)) 
    \m_axis_tdata[16]_i_2 
       (.I0(\m_axis_tdata[16]_i_7_n_0 ),
        .I1(s_axis_tdata[22]),
        .I2(\m_axis_tdata[16]_i_8_n_0 ),
        .I3(s_axis_tdata[23]),
        .I4(\m_axis_tdata[16]_i_9_n_0 ),
        .O(\m_axis_tdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEFFAEAEAEAE)) 
    \m_axis_tdata[16]_i_3 
       (.I0(\m_axis_tdata[16]_i_10_n_0 ),
        .I1(s_axis_tdata[21]),
        .I2(\m_axis_tdata[18]_i_10_n_0 ),
        .I3(\m_axis_tdata[16]_i_11_n_0 ),
        .I4(\m_axis_tdata[16]_i_12_n_0 ),
        .I5(\m_axis_tdata[19]_i_7_n_0 ),
        .O(\m_axis_tdata[16]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axis_tdata[16]_i_4 
       (.I0(\m_axis_tdata[15]_i_5_n_0 ),
        .I1(\m_axis_tdata[16]_i_13_n_0 ),
        .I2(\m_axis_tdata[21]_i_17_n_0 ),
        .O(\m_axis_tdata[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[16]_i_5 
       (.I0(s_axis_tdata[20]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[21]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[19]),
        .O(\m_axis_tdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[16]_i_6 
       (.I0(\m_axis_tdata[21]_i_9_n_0 ),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[18]),
        .I3(\m_axis_tdata[21]_i_11_n_0 ),
        .I4(s_axis_tdata[17]),
        .I5(\m_axis_tdata[21]_i_10_n_0 ),
        .O(\m_axis_tdata[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \m_axis_tdata[16]_i_7 
       (.I0(balance[2]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[3]),
        .I3(balance[0]),
        .I4(balance[1]),
        .O(\m_axis_tdata[16]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF7FFFF7F)) 
    \m_axis_tdata[16]_i_8 
       (.I0(balance[1]),
        .I1(balance[0]),
        .I2(balance[3]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[2]),
        .O(\m_axis_tdata[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFFFF7F)) 
    \m_axis_tdata[16]_i_9 
       (.I0(balance[1]),
        .I1(balance[0]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[3]),
        .O(\m_axis_tdata[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAE00AEAEAEAE)) 
    \m_axis_tdata[17]_i_1 
       (.I0(\m_axis_tdata[17]_i_2_n_0 ),
        .I1(\m_axis_tdata[17]_i_3_n_0 ),
        .I2(\m_axis_tdata[17]_i_4_n_0 ),
        .I3(\m_axis_tdata[19]_i_2_n_0 ),
        .I4(\m_axis_tdata[17]_i_5_n_0 ),
        .I5(\m_axis_tdata[17]_i_6_n_0 ),
        .O(p_1_in[17]));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[17]_i_2 
       (.I0(\m_axis_tdata[17]_i_7_n_0 ),
        .I1(s_axis_tdata[17]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CFCCAFAAEFEE)) 
    \m_axis_tdata[17]_i_3 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[22]),
        .I2(\m_axis_tdata[21]_i_14_n_0 ),
        .I3(s_axis_tdata[20]),
        .I4(\m_axis_tdata[21]_i_13_n_0 ),
        .I5(\m_axis_tdata[21]_i_12_n_0 ),
        .O(\m_axis_tdata[17]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h010DFFFF)) 
    \m_axis_tdata[17]_i_4 
       (.I0(s_axis_tdata[17]),
        .I1(\m_axis_tdata[21]_i_5_n_0 ),
        .I2(\m_axis_tdata[21]_i_17_n_0 ),
        .I3(s_axis_tdata[23]),
        .I4(\m_axis_tdata[15]_i_5_n_0 ),
        .O(\m_axis_tdata[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[17]_i_5 
       (.I0(\m_axis_tdata[18]_i_10_n_0 ),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[21]),
        .I5(\m_axis_tdata[18]_i_11_n_0 ),
        .O(\m_axis_tdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101BB0BBFFFFFFFF)) 
    \m_axis_tdata[17]_i_6 
       (.I0(\m_axis_tdata[18]_i_8_n_0 ),
        .I1(s_axis_tdata[19]),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[17]),
        .I5(\m_axis_tdata[21]_i_8_n_0 ),
        .O(\m_axis_tdata[17]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[17]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[18]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[19]),
        .O(\m_axis_tdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAE00AEAEAEAE)) 
    \m_axis_tdata[18]_i_1 
       (.I0(\m_axis_tdata[18]_i_2_n_0 ),
        .I1(\m_axis_tdata[18]_i_3_n_0 ),
        .I2(\m_axis_tdata[18]_i_4_n_0 ),
        .I3(\m_axis_tdata[19]_i_2_n_0 ),
        .I4(\m_axis_tdata[18]_i_5_n_0 ),
        .I5(\m_axis_tdata[18]_i_6_n_0 ),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF6FFF)) 
    \m_axis_tdata[18]_i_10 
       (.I0(\m_axis_tdata[22]_i_5_n_0 ),
        .I1(balance[3]),
        .I2(balance[1]),
        .I3(balance[0]),
        .I4(balance[2]),
        .O(\m_axis_tdata[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFFDFFFFF)) 
    \m_axis_tdata[18]_i_11 
       (.I0(balance[2]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[3]),
        .I3(\m_axis_tdata[21]_i_18_n_0 ),
        .I4(balance[0]),
        .I5(balance[1]),
        .O(\m_axis_tdata[18]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[18]_i_2 
       (.I0(\m_axis_tdata[18]_i_7_n_0 ),
        .I1(s_axis_tdata[18]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF0CFCCAFAAEFEE)) 
    \m_axis_tdata[18]_i_3 
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_tdata[23]),
        .I2(\m_axis_tdata[21]_i_14_n_0 ),
        .I3(s_axis_tdata[21]),
        .I4(\m_axis_tdata[21]_i_13_n_0 ),
        .I5(\m_axis_tdata[21]_i_12_n_0 ),
        .O(\m_axis_tdata[18]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h010DFFFF)) 
    \m_axis_tdata[18]_i_4 
       (.I0(s_axis_tdata[18]),
        .I1(\m_axis_tdata[21]_i_5_n_0 ),
        .I2(\m_axis_tdata[21]_i_17_n_0 ),
        .I3(s_axis_tdata[23]),
        .I4(\m_axis_tdata[15]_i_5_n_0 ),
        .O(\m_axis_tdata[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA82020AA2020)) 
    \m_axis_tdata[18]_i_5 
       (.I0(\m_axis_tdata[21]_i_8_n_0 ),
        .I1(\m_axis_tdata[18]_i_8_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[18]_i_9_n_0 ),
        .I4(s_axis_tdata[19]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \m_axis_tdata[18]_i_6 
       (.I0(\m_axis_tdata[18]_i_10_n_0 ),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[21]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\m_axis_tdata[18]_i_11_n_0 ),
        .O(\m_axis_tdata[18]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[18]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[19]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[20]),
        .O(\m_axis_tdata[18]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFE7FF)) 
    \m_axis_tdata[18]_i_8 
       (.I0(balance[2]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[3]),
        .I3(balance[0]),
        .I4(balance[1]),
        .O(\m_axis_tdata[18]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFBFFFFFB)) 
    \m_axis_tdata[18]_i_9 
       (.I0(balance[1]),
        .I1(balance[0]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[3]),
        .O(\m_axis_tdata[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEEEE0)) 
    \m_axis_tdata[19]_i_1 
       (.I0(\m_axis_tdata[19]_i_2_n_0 ),
        .I1(\m_axis_tdata[19]_i_3_n_0 ),
        .I2(\m_axis_tdata[19]_i_4_n_0 ),
        .I3(\m_axis_tdata[19]_i_5_n_0 ),
        .I4(s_axis_tlast),
        .I5(\m_axis_tdata[19]_i_6_n_0 ),
        .O(p_1_in[19]));
  LUT6 #(
    .INIT(64'hBEFFFFFF00DFFFFF)) 
    \m_axis_tdata[19]_i_10 
       (.I0(balance[2]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[3]),
        .I3(balance[1]),
        .I4(balance[0]),
        .I5(\m_axis_tdata[21]_i_18_n_0 ),
        .O(\m_axis_tdata[19]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \m_axis_tdata[19]_i_2 
       (.I0(\m_axis_tdata[19]_i_7_n_0 ),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tlast),
        .O(\m_axis_tdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4C404C40CCC00000)) 
    \m_axis_tdata[19]_i_3 
       (.I0(\m_axis_tdata[19]_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_i_7_n_0 ),
        .I2(\m_axis_tdata[19]_i_9_n_0 ),
        .I3(s_axis_tdata[22]),
        .I4(s_axis_tdata[23]),
        .I5(\m_axis_tdata[19]_i_10_n_0 ),
        .O(\m_axis_tdata[19]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A2A)) 
    \m_axis_tdata[19]_i_4 
       (.I0(s_axis_tdata[23]),
        .I1(\m_axis_tdata[21]_i_13_n_0 ),
        .I2(\m_axis_tdata[21]_i_12_n_0 ),
        .I3(\m_axis_tdata[21]_i_14_n_0 ),
        .I4(s_axis_tdata[22]),
        .O(\m_axis_tdata[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[19]_i_5 
       (.I0(s_axis_tdata[21]),
        .I1(\m_axis_tdata[21]_i_11_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[21]_i_10_n_0 ),
        .I4(\m_axis_tdata[21]_i_9_n_0 ),
        .I5(s_axis_tdata[19]),
        .O(\m_axis_tdata[19]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000C808)) 
    \m_axis_tdata[19]_i_6 
       (.I0(s_axis_tdata[19]),
        .I1(\m_axis_tdata[15]_i_5_n_0 ),
        .I2(\m_axis_tdata[21]_i_5_n_0 ),
        .I3(s_axis_tdata[23]),
        .I4(\m_axis_tdata[21]_i_17_n_0 ),
        .O(\m_axis_tdata[19]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h45FFFFFF)) 
    \m_axis_tdata[19]_i_7 
       (.I0(balance[2]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[3]),
        .I3(balance[0]),
        .I4(balance[1]),
        .O(\m_axis_tdata[19]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0531F531)) 
    \m_axis_tdata[19]_i_8 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[20]),
        .I2(\m_axis_tdata[18]_i_8_n_0 ),
        .I3(\m_axis_tdata[18]_i_9_n_0 ),
        .I4(s_axis_tdata[19]),
        .O(\m_axis_tdata[19]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hDFFDFFFF)) 
    \m_axis_tdata[19]_i_9 
       (.I0(balance[0]),
        .I1(balance[1]),
        .I2(balance[3]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[2]),
        .O(\m_axis_tdata[19]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFE00FEFE)) 
    \m_axis_tdata[1]_i_1 
       (.I0(\m_axis_tdata[1]_i_2_n_0 ),
        .I1(\m_axis_tdata[1]_i_3_n_0 ),
        .I2(\m_axis_tdata[1]_i_4_n_0 ),
        .I3(\m_axis_tdata[1]_i_5_n_0 ),
        .I4(\m_axis_tdata[1]_i_6_n_0 ),
        .I5(\m_axis_tdata[1]_i_7_n_0 ),
        .O(p_1_in[1]));
  LUT5 #(
    .INIT(32'h44477477)) 
    \m_axis_tdata[1]_i_10 
       (.I0(s_axis_tdata[7]),
        .I1(\m_axis_tdata[15]_i_9_n_0 ),
        .I2(\m_axis_tdata[14]_i_8_n_0 ),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[1]),
        .O(\m_axis_tdata[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[1]_i_2 
       (.I0(\m_axis_tdata[18]_i_10_n_0 ),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tdata[4]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[5]),
        .I5(\m_axis_tdata[18]_i_11_n_0 ),
        .O(\m_axis_tdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2E22FFFF)) 
    \m_axis_tdata[1]_i_3 
       (.I0(s_axis_tdata[3]),
        .I1(\m_axis_tdata[18]_i_8_n_0 ),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[2]),
        .I4(s_axis_tlast),
        .I5(\m_axis_tdata[1]_i_8_n_0 ),
        .O(\m_axis_tdata[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[1]_i_4 
       (.I0(s_axis_tdata[1]),
        .I1(\m_axis_tdata[22]_i_3_n_0 ),
        .O(\m_axis_tdata[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[1]_i_5 
       (.I0(\m_axis_tdata[1]_i_9_n_0 ),
        .I1(s_axis_tdata[1]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD0DD0000D0DDD0DD)) 
    \m_axis_tdata[1]_i_6 
       (.I0(s_axis_tdata[5]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(\m_axis_tdata[21]_i_13_n_0 ),
        .I3(s_axis_tdata[6]),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[4]),
        .O(\m_axis_tdata[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axis_tdata[1]_i_7 
       (.I0(\m_axis_tdata[15]_i_5_n_0 ),
        .I1(\m_axis_tdata[1]_i_10_n_0 ),
        .I2(\m_axis_tdata[21]_i_17_n_0 ),
        .O(\m_axis_tdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[1]_i_8 
       (.I0(\m_axis_tdata[16]_i_9_n_0 ),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[7]),
        .I3(\m_axis_tdata[16]_i_8_n_0 ),
        .I4(s_axis_tdata[9]),
        .I5(\m_axis_tdata[16]_i_7_n_0 ),
        .O(\m_axis_tdata[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[1]_i_9 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[2]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[3]),
        .O(\m_axis_tdata[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA8AAA8AAA8A8)) 
    \m_axis_tdata[20]_i_1 
       (.I0(\m_axis_tdata[20]_i_2_n_0 ),
        .I1(\m_axis_tdata[21]_i_4_n_0 ),
        .I2(\m_axis_tdata[20]_i_3_n_0 ),
        .I3(\m_axis_tdata[21]_i_6_n_0 ),
        .I4(\m_axis_tdata[21]_i_5_n_0 ),
        .I5(s_axis_tdata[20]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5FDD)) 
    \m_axis_tdata[20]_i_2 
       (.I0(s_axis_tlast),
        .I1(s_axis_tdata[23]),
        .I2(\m_axis_tdata[20]_i_4_n_0 ),
        .I3(\m_axis_tdata[21]_i_8_n_0 ),
        .O(\m_axis_tdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[20]_i_3 
       (.I0(s_axis_tdata[22]),
        .I1(\m_axis_tdata[21]_i_11_n_0 ),
        .I2(s_axis_tdata[21]),
        .I3(\m_axis_tdata[21]_i_10_n_0 ),
        .I4(\m_axis_tdata[21]_i_9_n_0 ),
        .I5(s_axis_tdata[20]),
        .O(\m_axis_tdata[20]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \m_axis_tdata[20]_i_4 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[21]),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[22]),
        .I4(\m_axis_tdata[18]_i_8_n_0 ),
        .O(\m_axis_tdata[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA8A8A8A8AAAAAAA8)) 
    \m_axis_tdata[21]_i_1 
       (.I0(\m_axis_tdata[21]_i_2_n_0 ),
        .I1(\m_axis_tdata[21]_i_3_n_0 ),
        .I2(\m_axis_tdata[21]_i_4_n_0 ),
        .I3(\m_axis_tdata[21]_i_5_n_0 ),
        .I4(s_axis_tdata[21]),
        .I5(\m_axis_tdata[21]_i_6_n_0 ),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hBFFFFFBF)) 
    \m_axis_tdata[21]_i_10 
       (.I0(balance[0]),
        .I1(balance[1]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[3]),
        .O(\m_axis_tdata[21]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFDDFFF)) 
    \m_axis_tdata[21]_i_11 
       (.I0(balance[1]),
        .I1(balance[0]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[3]),
        .O(\m_axis_tdata[21]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF00FFDF)) 
    \m_axis_tdata[21]_i_12 
       (.I0(balance[2]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[3]),
        .I3(\m_axis_tdata[21]_i_18_n_0 ),
        .I4(balance[1]),
        .I5(balance[0]),
        .O(\m_axis_tdata[21]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEFFFFFEF)) 
    \m_axis_tdata[21]_i_13 
       (.I0(balance[1]),
        .I1(balance[0]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[3]),
        .O(\m_axis_tdata[21]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFBAFFFF)) 
    \m_axis_tdata[21]_i_14 
       (.I0(balance[2]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[3]),
        .I3(balance[0]),
        .I4(\m_axis_tdata[21]_i_18_n_0 ),
        .O(\m_axis_tdata[21]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[21]_i_15 
       (.I0(balance[4]),
        .I1(balance[3]),
        .I2(balance[9]),
        .I3(balance[2]),
        .O(\m_axis_tdata[21]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[21]_i_16 
       (.I0(balance[1]),
        .I1(balance[0]),
        .O(\m_axis_tdata[21]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h070203070E0E020E)) 
    \m_axis_tdata[21]_i_17 
       (.I0(balance[1]),
        .I1(\m_axis_tdata[21]_i_18_n_0 ),
        .I2(balance[0]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_i_5_n_0 ),
        .I5(balance[2]),
        .O(\m_axis_tdata[21]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \m_axis_tdata[21]_i_18 
       (.I0(balance[1]),
        .I1(balance[4]),
        .I2(balance[3]),
        .I3(balance[9]),
        .I4(balance[2]),
        .I5(\m_axis_tdata[22]_i_6_n_0 ),
        .O(\m_axis_tdata[21]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h77F3)) 
    \m_axis_tdata[21]_i_2 
       (.I0(\m_axis_tdata[21]_i_7_n_0 ),
        .I1(s_axis_tlast),
        .I2(s_axis_tdata[23]),
        .I3(\m_axis_tdata[21]_i_8_n_0 ),
        .O(\m_axis_tdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[21]_i_3 
       (.I0(\m_axis_tdata[21]_i_9_n_0 ),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[22]),
        .I3(\m_axis_tdata[21]_i_10_n_0 ),
        .I4(s_axis_tdata[23]),
        .I5(\m_axis_tdata[21]_i_11_n_0 ),
        .O(\m_axis_tdata[21]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hBFAAFFAA)) 
    \m_axis_tdata[21]_i_4 
       (.I0(s_axis_tlast),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(\m_axis_tdata[21]_i_13_n_0 ),
        .I3(s_axis_tdata[23]),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .O(\m_axis_tdata[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F00EEFE)) 
    \m_axis_tdata[21]_i_5 
       (.I0(\m_axis_tdata[21]_i_15_n_0 ),
        .I1(\m_axis_tdata[22]_i_6_n_0 ),
        .I2(balance[3]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[2]),
        .I5(\m_axis_tdata[21]_i_16_n_0 ),
        .O(\m_axis_tdata[21]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hBAFF)) 
    \m_axis_tdata[21]_i_6 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(s_axis_tdata[23]),
        .I2(\m_axis_tdata[21]_i_5_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .O(\m_axis_tdata[21]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h535300F3)) 
    \m_axis_tdata[21]_i_7 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[22]),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[23]),
        .I4(\m_axis_tdata[18]_i_8_n_0 ),
        .O(\m_axis_tdata[21]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h005DFFFF)) 
    \m_axis_tdata[21]_i_8 
       (.I0(balance[2]),
        .I1(\m_axis_tdata[22]_i_5_n_0 ),
        .I2(balance[3]),
        .I3(balance[1]),
        .I4(balance[0]),
        .O(\m_axis_tdata[21]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFFDFFBFF)) 
    \m_axis_tdata[21]_i_9 
       (.I0(balance[2]),
        .I1(balance[0]),
        .I2(balance[1]),
        .I3(\m_axis_tdata[22]_i_5_n_0 ),
        .I4(balance[3]),
        .O(\m_axis_tdata[21]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFCFA3050)) 
    \m_axis_tdata[22]_i_1 
       (.I0(\m_axis_tdata[22]_i_2_n_0 ),
        .I1(\m_axis_tdata[22]_i_3_n_0 ),
        .I2(s_axis_tdata[22]),
        .I3(s_axis_tlast),
        .I4(s_axis_tdata[23]),
        .O(p_1_in[22]));
  LUT6 #(
    .INIT(64'h0000FBFF0000FF5D)) 
    \m_axis_tdata[22]_i_2 
       (.I0(\m_axis_tdata[22]_i_4_n_0 ),
        .I1(balance[3]),
        .I2(\m_axis_tdata[22]_i_5_n_0 ),
        .I3(balance[2]),
        .I4(balance[0]),
        .I5(balance[1]),
        .O(\m_axis_tdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \m_axis_tdata[22]_i_3 
       (.I0(balance[0]),
        .I1(balance[9]),
        .I2(\m_axis_tdata[22]_i_6_n_0 ),
        .I3(balance[1]),
        .I4(balance[2]),
        .I5(\m_axis_tdata[22]_i_7_n_0 ),
        .O(\m_axis_tdata[22]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_axis_tdata[22]_i_4 
       (.I0(\m_axis_tdata[22]_i_6_n_0 ),
        .I1(balance[2]),
        .I2(balance[9]),
        .I3(balance[3]),
        .I4(balance[4]),
        .O(\m_axis_tdata[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_axis_tdata[22]_i_5 
       (.I0(balance[5]),
        .I1(balance[6]),
        .I2(balance[4]),
        .I3(balance[9]),
        .I4(balance[8]),
        .I5(balance[7]),
        .O(\m_axis_tdata[22]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[22]_i_6 
       (.I0(balance[8]),
        .I1(balance[7]),
        .I2(balance[6]),
        .I3(balance[5]),
        .O(\m_axis_tdata[22]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[22]_i_7 
       (.I0(balance[3]),
        .I1(balance[4]),
        .O(\m_axis_tdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[2]_i_1 
       (.I0(\m_axis_tdata[2]_i_2_n_0 ),
        .I1(\m_axis_tdata[2]_i_3_n_0 ),
        .I2(\m_axis_tdata[2]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[2]_i_5_n_0 ),
        .I5(\m_axis_tdata[2]_i_6_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[2]_i_10 
       (.I0(\m_axis_tdata[16]_i_8_n_0 ),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[9]),
        .I3(\m_axis_tdata[16]_i_9_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\m_axis_tdata[16]_i_7_n_0 ),
        .O(\m_axis_tdata[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[2]_i_2 
       (.I0(\m_axis_tdata[2]_i_7_n_0 ),
        .I1(s_axis_tdata[2]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[2]_i_3 
       (.I0(s_axis_tdata[6]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[7]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[5]),
        .O(\m_axis_tdata[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEBFBFBFAEBF)) 
    \m_axis_tdata[2]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(\m_axis_tdata[15]_i_9_n_0 ),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[2]),
        .I4(\m_axis_tdata[15]_i_10_n_0 ),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFFF)) 
    \m_axis_tdata[2]_i_5 
       (.I0(\m_axis_tdata[18]_i_11_n_0 ),
        .I1(s_axis_tdata[6]),
        .I2(\m_axis_tdata[2]_i_8_n_0 ),
        .I3(\m_axis_tdata[2]_i_9_n_0 ),
        .I4(s_axis_tlast),
        .I5(\m_axis_tdata[2]_i_10_n_0 ),
        .O(\m_axis_tdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101BB0BBFFFFFFFF)) 
    \m_axis_tdata[2]_i_6 
       (.I0(\m_axis_tdata[18]_i_8_n_0 ),
        .I1(s_axis_tdata[4]),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tdata[2]),
        .I5(\m_axis_tdata[21]_i_8_n_0 ),
        .O(\m_axis_tdata[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[2]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[3]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[4]),
        .O(\m_axis_tdata[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[2]_i_8 
       (.I0(s_axis_tdata[5]),
        .I1(\m_axis_tdata[19]_i_9_n_0 ),
        .O(\m_axis_tdata[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[2]_i_9 
       (.I0(s_axis_tdata[7]),
        .I1(\m_axis_tdata[18]_i_10_n_0 ),
        .O(\m_axis_tdata[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFEFE00FEFE)) 
    \m_axis_tdata[3]_i_1 
       (.I0(\m_axis_tdata[3]_i_2_n_0 ),
        .I1(\m_axis_tdata[3]_i_3_n_0 ),
        .I2(\m_axis_tdata[3]_i_4_n_0 ),
        .I3(\m_axis_tdata[3]_i_5_n_0 ),
        .I4(\m_axis_tdata[3]_i_6_n_0 ),
        .I5(\m_axis_tdata[3]_i_7_n_0 ),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'hFFE400E4)) 
    \m_axis_tdata[3]_i_10 
       (.I0(\m_axis_tdata[14]_i_8_n_0 ),
        .I1(s_axis_tdata[10]),
        .I2(s_axis_tdata[3]),
        .I3(\m_axis_tdata[15]_i_9_n_0 ),
        .I4(s_axis_tdata[9]),
        .O(\m_axis_tdata[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[3]_i_2 
       (.I0(\m_axis_tdata[18]_i_10_n_0 ),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[6]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[7]),
        .I5(\m_axis_tdata[18]_i_11_n_0 ),
        .O(\m_axis_tdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF22E2FFFFFFFF)) 
    \m_axis_tdata[3]_i_3 
       (.I0(s_axis_tdata[5]),
        .I1(\m_axis_tdata[18]_i_8_n_0 ),
        .I2(s_axis_tdata[4]),
        .I3(\m_axis_tdata[18]_i_9_n_0 ),
        .I4(\m_axis_tdata[3]_i_8_n_0 ),
        .I5(s_axis_tlast),
        .O(\m_axis_tdata[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[3]_i_4 
       (.I0(s_axis_tdata[3]),
        .I1(\m_axis_tdata[22]_i_3_n_0 ),
        .O(\m_axis_tdata[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[3]_i_5 
       (.I0(\m_axis_tdata[3]_i_9_n_0 ),
        .I1(s_axis_tdata[3]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \m_axis_tdata[3]_i_6 
       (.I0(s_axis_tdata[6]),
        .I1(\m_axis_tdata[21]_i_14_n_0 ),
        .I2(s_axis_tdata[7]),
        .I3(\m_axis_tdata[21]_i_12_n_0 ),
        .I4(s_axis_tdata[8]),
        .I5(\m_axis_tdata[21]_i_13_n_0 ),
        .O(\m_axis_tdata[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tdata[3]_i_7 
       (.I0(\m_axis_tdata[15]_i_5_n_0 ),
        .I1(\m_axis_tdata[3]_i_10_n_0 ),
        .I2(\m_axis_tdata[21]_i_17_n_0 ),
        .O(\m_axis_tdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[3]_i_8 
       (.I0(\m_axis_tdata[16]_i_8_n_0 ),
        .I1(s_axis_tdata[9]),
        .I2(s_axis_tdata[10]),
        .I3(\m_axis_tdata[16]_i_9_n_0 ),
        .I4(s_axis_tdata[11]),
        .I5(\m_axis_tdata[16]_i_7_n_0 ),
        .O(\m_axis_tdata[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[3]_i_9 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[4]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[5]),
        .O(\m_axis_tdata[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[4]_i_1 
       (.I0(\m_axis_tdata[4]_i_2_n_0 ),
        .I1(\m_axis_tdata[4]_i_3_n_0 ),
        .I2(\m_axis_tdata[4]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[4]_i_5_n_0 ),
        .I5(\m_axis_tdata[4]_i_6_n_0 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \m_axis_tdata[4]_i_10 
       (.I0(\m_axis_tdata[21]_i_18_n_0 ),
        .I1(\m_axis_tdata[16]_i_14_n_0 ),
        .I2(s_axis_tdata[8]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[7]),
        .O(\m_axis_tdata[4]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[4]_i_2 
       (.I0(\m_axis_tdata[4]_i_7_n_0 ),
        .I1(s_axis_tdata[4]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[4]_i_3 
       (.I0(s_axis_tdata[8]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[7]),
        .O(\m_axis_tdata[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBAFFFFFBBAF)) 
    \m_axis_tdata[4]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(s_axis_tdata[4]),
        .I2(s_axis_tdata[11]),
        .I3(\m_axis_tdata[14]_i_8_n_0 ),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEFEF)) 
    \m_axis_tdata[4]_i_5 
       (.I0(\m_axis_tdata[4]_i_8_n_0 ),
        .I1(\m_axis_tdata[4]_i_9_n_0 ),
        .I2(s_axis_tlast),
        .I3(\m_axis_tdata[18]_i_10_n_0 ),
        .I4(s_axis_tdata[9]),
        .I5(\m_axis_tdata[4]_i_10_n_0 ),
        .O(\m_axis_tdata[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_tdata[4]_i_6 
       (.I0(\m_axis_tdata[22]_i_3_n_0 ),
        .I1(s_axis_tdata[4]),
        .O(\m_axis_tdata[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[4]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[5]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[6]),
        .O(\m_axis_tdata[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[4]_i_8 
       (.I0(s_axis_tdata[5]),
        .I1(\m_axis_tdata[18]_i_9_n_0 ),
        .I2(\m_axis_tdata[18]_i_8_n_0 ),
        .I3(s_axis_tdata[6]),
        .O(\m_axis_tdata[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[4]_i_9 
       (.I0(\m_axis_tdata[16]_i_9_n_0 ),
        .I1(s_axis_tdata[11]),
        .I2(s_axis_tdata[12]),
        .I3(\m_axis_tdata[16]_i_7_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\m_axis_tdata[16]_i_8_n_0 ),
        .O(\m_axis_tdata[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[5]_i_1 
       (.I0(\m_axis_tdata[5]_i_2_n_0 ),
        .I1(\m_axis_tdata[5]_i_3_n_0 ),
        .I2(\m_axis_tdata[5]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[5]_i_5_n_0 ),
        .I5(\m_axis_tdata[5]_i_6_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[5]_i_10 
       (.I0(\m_axis_tdata[16]_i_9_n_0 ),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[11]),
        .I3(\m_axis_tdata[16]_i_8_n_0 ),
        .I4(s_axis_tdata[13]),
        .I5(\m_axis_tdata[16]_i_7_n_0 ),
        .O(\m_axis_tdata[5]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[5]_i_2 
       (.I0(\m_axis_tdata[5]_i_7_n_0 ),
        .I1(s_axis_tdata[5]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[5]_i_3 
       (.I0(s_axis_tdata[9]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[10]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[8]),
        .O(\m_axis_tdata[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBAFFFFFBBAF)) 
    \m_axis_tdata[5]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[12]),
        .I3(\m_axis_tdata[14]_i_8_n_0 ),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .I5(s_axis_tdata[11]),
        .O(\m_axis_tdata[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFFF)) 
    \m_axis_tdata[5]_i_5 
       (.I0(\m_axis_tdata[18]_i_11_n_0 ),
        .I1(s_axis_tdata[9]),
        .I2(\m_axis_tdata[5]_i_8_n_0 ),
        .I3(\m_axis_tdata[5]_i_9_n_0 ),
        .I4(s_axis_tlast),
        .I5(\m_axis_tdata[5]_i_10_n_0 ),
        .O(\m_axis_tdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101BB0BBFFFFFFFF)) 
    \m_axis_tdata[5]_i_6 
       (.I0(\m_axis_tdata[18]_i_8_n_0 ),
        .I1(s_axis_tdata[7]),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[6]),
        .I4(s_axis_tdata[5]),
        .I5(\m_axis_tdata[21]_i_8_n_0 ),
        .O(\m_axis_tdata[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[5]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[6]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[7]),
        .O(\m_axis_tdata[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[5]_i_8 
       (.I0(s_axis_tdata[8]),
        .I1(\m_axis_tdata[19]_i_9_n_0 ),
        .O(\m_axis_tdata[5]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[5]_i_9 
       (.I0(s_axis_tdata[10]),
        .I1(\m_axis_tdata[18]_i_10_n_0 ),
        .O(\m_axis_tdata[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[6]_i_1 
       (.I0(\m_axis_tdata[6]_i_2_n_0 ),
        .I1(\m_axis_tdata[6]_i_3_n_0 ),
        .I2(\m_axis_tdata[6]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[6]_i_5_n_0 ),
        .I5(\m_axis_tdata[6]_i_6_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[6]_i_10 
       (.I0(\m_axis_tdata[16]_i_7_n_0 ),
        .I1(s_axis_tdata[14]),
        .I2(s_axis_tdata[12]),
        .I3(\m_axis_tdata[16]_i_8_n_0 ),
        .I4(s_axis_tdata[13]),
        .I5(\m_axis_tdata[16]_i_9_n_0 ),
        .O(\m_axis_tdata[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[6]_i_2 
       (.I0(\m_axis_tdata[6]_i_7_n_0 ),
        .I1(s_axis_tdata[6]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[6]_i_3 
       (.I0(s_axis_tdata[10]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBAFFFFFBBAF)) 
    \m_axis_tdata[6]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(s_axis_tdata[6]),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[14]_i_8_n_0 ),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .I5(s_axis_tdata[12]),
        .O(\m_axis_tdata[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF4FFFF)) 
    \m_axis_tdata[6]_i_5 
       (.I0(\m_axis_tdata[18]_i_11_n_0 ),
        .I1(s_axis_tdata[10]),
        .I2(\m_axis_tdata[6]_i_8_n_0 ),
        .I3(\m_axis_tdata[6]_i_9_n_0 ),
        .I4(s_axis_tlast),
        .I5(\m_axis_tdata[6]_i_10_n_0 ),
        .O(\m_axis_tdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h101BB0BBFFFFFFFF)) 
    \m_axis_tdata[6]_i_6 
       (.I0(\m_axis_tdata[18]_i_8_n_0 ),
        .I1(s_axis_tdata[8]),
        .I2(\m_axis_tdata[18]_i_9_n_0 ),
        .I3(s_axis_tdata[7]),
        .I4(s_axis_tdata[6]),
        .I5(\m_axis_tdata[21]_i_8_n_0 ),
        .O(\m_axis_tdata[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[6]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[7]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[8]),
        .O(\m_axis_tdata[6]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[6]_i_8 
       (.I0(s_axis_tdata[9]),
        .I1(\m_axis_tdata[19]_i_9_n_0 ),
        .O(\m_axis_tdata[6]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[6]_i_9 
       (.I0(s_axis_tdata[11]),
        .I1(\m_axis_tdata[18]_i_10_n_0 ),
        .O(\m_axis_tdata[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[7]_i_1 
       (.I0(\m_axis_tdata[7]_i_2_n_0 ),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(\m_axis_tdata[7]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[7]_i_5_n_0 ),
        .I5(\m_axis_tdata[7]_i_6_n_0 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[7]_i_2 
       (.I0(\m_axis_tdata[7]_i_7_n_0 ),
        .I1(s_axis_tdata[7]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[7]_i_3 
       (.I0(s_axis_tdata[11]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[12]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[10]),
        .O(\m_axis_tdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBAFFFFFBBAF)) 
    \m_axis_tdata[7]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(s_axis_tdata[7]),
        .I2(s_axis_tdata[14]),
        .I3(\m_axis_tdata[14]_i_8_n_0 ),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .I5(s_axis_tdata[13]),
        .O(\m_axis_tdata[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \m_axis_tdata[7]_i_5 
       (.I0(\m_axis_tdata[7]_i_8_n_0 ),
        .I1(s_axis_tlast),
        .I2(\m_axis_tdata[7]_i_9_n_0 ),
        .O(\m_axis_tdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBB0BBB0B0000BB0B)) 
    \m_axis_tdata[7]_i_6 
       (.I0(\m_axis_tdata[18]_i_10_n_0 ),
        .I1(s_axis_tdata[12]),
        .I2(s_axis_tdata[10]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[11]),
        .I5(\m_axis_tdata[18]_i_11_n_0 ),
        .O(\m_axis_tdata[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[7]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[8]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[9]),
        .O(\m_axis_tdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA8AAA82020AA2020)) 
    \m_axis_tdata[7]_i_8 
       (.I0(\m_axis_tdata[21]_i_8_n_0 ),
        .I1(\m_axis_tdata[18]_i_8_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(\m_axis_tdata[18]_i_9_n_0 ),
        .I4(s_axis_tdata[8]),
        .I5(s_axis_tdata[7]),
        .O(\m_axis_tdata[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[7]_i_9 
       (.I0(\m_axis_tdata[16]_i_8_n_0 ),
        .I1(s_axis_tdata[13]),
        .I2(s_axis_tdata[15]),
        .I3(\m_axis_tdata[16]_i_7_n_0 ),
        .I4(s_axis_tdata[14]),
        .I5(\m_axis_tdata[16]_i_9_n_0 ),
        .O(\m_axis_tdata[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hEFEE0000EFEEEFEE)) 
    \m_axis_tdata[8]_i_1 
       (.I0(\m_axis_tdata[8]_i_2_n_0 ),
        .I1(\m_axis_tdata[8]_i_3_n_0 ),
        .I2(\m_axis_tdata[8]_i_4_n_0 ),
        .I3(\m_axis_tdata[15]_i_5_n_0 ),
        .I4(\m_axis_tdata[8]_i_5_n_0 ),
        .I5(\m_axis_tdata[8]_i_6_n_0 ),
        .O(p_1_in[8]));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \m_axis_tdata[8]_i_10 
       (.I0(\m_axis_tdata[21]_i_18_n_0 ),
        .I1(\m_axis_tdata[16]_i_14_n_0 ),
        .I2(s_axis_tdata[12]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[11]),
        .O(\m_axis_tdata[8]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[8]_i_2 
       (.I0(\m_axis_tdata[8]_i_7_n_0 ),
        .I1(s_axis_tdata[8]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    \m_axis_tdata[8]_i_3 
       (.I0(s_axis_tdata[12]),
        .I1(\m_axis_tdata[21]_i_12_n_0 ),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[21]_i_13_n_0 ),
        .I4(\m_axis_tdata[21]_i_14_n_0 ),
        .I5(s_axis_tdata[11]),
        .O(\m_axis_tdata[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABBAFFFFFBBAF)) 
    \m_axis_tdata[8]_i_4 
       (.I0(\m_axis_tdata[21]_i_17_n_0 ),
        .I1(s_axis_tdata[8]),
        .I2(s_axis_tdata[15]),
        .I3(\m_axis_tdata[14]_i_8_n_0 ),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .I5(s_axis_tdata[14]),
        .O(\m_axis_tdata[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEFEF)) 
    \m_axis_tdata[8]_i_5 
       (.I0(\m_axis_tdata[8]_i_8_n_0 ),
        .I1(\m_axis_tdata[8]_i_9_n_0 ),
        .I2(s_axis_tlast),
        .I3(\m_axis_tdata[18]_i_10_n_0 ),
        .I4(s_axis_tdata[13]),
        .I5(\m_axis_tdata[8]_i_10_n_0 ),
        .O(\m_axis_tdata[8]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \m_axis_tdata[8]_i_6 
       (.I0(\m_axis_tdata[22]_i_3_n_0 ),
        .I1(s_axis_tdata[8]),
        .O(\m_axis_tdata[8]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[8]_i_7 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[9]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[10]),
        .O(\m_axis_tdata[8]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[8]_i_8 
       (.I0(s_axis_tdata[9]),
        .I1(\m_axis_tdata[18]_i_9_n_0 ),
        .I2(\m_axis_tdata[18]_i_8_n_0 ),
        .I3(s_axis_tdata[10]),
        .O(\m_axis_tdata[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[8]_i_9 
       (.I0(\m_axis_tdata[16]_i_8_n_0 ),
        .I1(s_axis_tdata[14]),
        .I2(s_axis_tdata[15]),
        .I3(\m_axis_tdata[16]_i_9_n_0 ),
        .I4(s_axis_tdata[16]),
        .I5(\m_axis_tdata[16]_i_7_n_0 ),
        .O(\m_axis_tdata[8]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAEAEAEAEAE00AEAE)) 
    \m_axis_tdata[9]_i_1 
       (.I0(\m_axis_tdata[9]_i_2_n_0 ),
        .I1(s_axis_tdata[9]),
        .I2(\m_axis_tdata[22]_i_3_n_0 ),
        .I3(\m_axis_tdata[9]_i_3_n_0 ),
        .I4(\m_axis_tdata[9]_i_4_n_0 ),
        .I5(\m_axis_tdata[9]_i_5_n_0 ),
        .O(p_1_in[9]));
  LUT5 #(
    .INIT(32'hFF00E4E4)) 
    \m_axis_tdata[9]_i_10 
       (.I0(\m_axis_tdata[14]_i_8_n_0 ),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[15]),
        .I4(\m_axis_tdata[15]_i_9_n_0 ),
        .O(\m_axis_tdata[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFEFEF)) 
    \m_axis_tdata[9]_i_2 
       (.I0(\m_axis_tdata[9]_i_6_n_0 ),
        .I1(\m_axis_tdata[9]_i_7_n_0 ),
        .I2(s_axis_tlast),
        .I3(\m_axis_tdata[18]_i_10_n_0 ),
        .I4(s_axis_tdata[14]),
        .I5(\m_axis_tdata[9]_i_8_n_0 ),
        .O(\m_axis_tdata[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFAE)) 
    \m_axis_tdata[9]_i_3 
       (.I0(\m_axis_tdata[9]_i_9_n_0 ),
        .I1(s_axis_tdata[9]),
        .I2(\m_axis_tdata[21]_i_9_n_0 ),
        .I3(s_axis_tlast),
        .O(\m_axis_tdata[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \m_axis_tdata[9]_i_4 
       (.I0(s_axis_tdata[12]),
        .I1(\m_axis_tdata[21]_i_14_n_0 ),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[21]_i_12_n_0 ),
        .I4(s_axis_tdata[14]),
        .I5(\m_axis_tdata[21]_i_13_n_0 ),
        .O(\m_axis_tdata[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tdata[9]_i_5 
       (.I0(\m_axis_tdata[15]_i_5_n_0 ),
        .I1(\m_axis_tdata[9]_i_10_n_0 ),
        .I2(\m_axis_tdata[21]_i_17_n_0 ),
        .O(\m_axis_tdata[9]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \m_axis_tdata[9]_i_6 
       (.I0(s_axis_tdata[10]),
        .I1(\m_axis_tdata[18]_i_9_n_0 ),
        .I2(\m_axis_tdata[18]_i_8_n_0 ),
        .I3(s_axis_tdata[11]),
        .O(\m_axis_tdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h44F444F4FFFF44F4)) 
    \m_axis_tdata[9]_i_7 
       (.I0(\m_axis_tdata[16]_i_7_n_0 ),
        .I1(s_axis_tdata[17]),
        .I2(s_axis_tdata[15]),
        .I3(\m_axis_tdata[16]_i_8_n_0 ),
        .I4(s_axis_tdata[16]),
        .I5(\m_axis_tdata[16]_i_9_n_0 ),
        .O(\m_axis_tdata[9]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h10FF1010)) 
    \m_axis_tdata[9]_i_8 
       (.I0(\m_axis_tdata[21]_i_18_n_0 ),
        .I1(\m_axis_tdata[16]_i_14_n_0 ),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[19]_i_9_n_0 ),
        .I4(s_axis_tdata[12]),
        .O(\m_axis_tdata[9]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \m_axis_tdata[9]_i_9 
       (.I0(\m_axis_tdata[21]_i_10_n_0 ),
        .I1(s_axis_tdata[10]),
        .I2(\m_axis_tdata[21]_i_11_n_0 ),
        .I3(s_axis_tdata[11]),
        .O(\m_axis_tdata[9]_i_9_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(aresetn),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(aresetn),
        .D(p_1_in[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
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
