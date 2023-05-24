// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 24 12:35:36 2023
// Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
//               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_volume_controller_0_0/I2CBalancer_volume_controller_0_0_sim_netlist.v}
// Design      : I2CBalancer_volume_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2CBalancer_volume_controller_0_0,volume_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "volume_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module I2CBalancer_volume_controller_0_0
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
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
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
  I2CBalancer_volume_controller_0_0_volume_controller U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .balance(balance),
        .m_axis_tdata(m_axis_tdata),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "volume_controller" *) 
module I2CBalancer_volume_controller_0_0_volume_controller
   (m_axis_tdata,
    aclk,
    s_axis_tdata,
    aresetn,
    balance);
  output [23:0]m_axis_tdata;
  input aclk;
  input [23:0]s_axis_tdata;
  input aresetn;
  input [0:9]balance;

  wire aclk;
  wire aresetn;
  wire [0:9]balance;
  wire [23:0]m_axis_tdata;
  wire m_axis_tdata1;
  wire m_axis_tdata112_out;
  wire m_axis_tdata115_out;
  wire m_axis_tdata118_out;
  wire m_axis_tdata121_out;
  wire m_axis_tdata13_out;
  wire m_axis_tdata16_out;
  wire m_axis_tdata19_out;
  wire \m_axis_tdata[0]_C_i_1_n_0 ;
  wire \m_axis_tdata[0]_C_i_2_n_0 ;
  wire \m_axis_tdata[0]_C_i_3_n_0 ;
  wire \m_axis_tdata[0]_C_i_4_n_0 ;
  wire \m_axis_tdata[0]_C_i_5_n_0 ;
  wire \m_axis_tdata[0]_C_i_6_n_0 ;
  wire \m_axis_tdata[0]_C_i_7_n_0 ;
  wire \m_axis_tdata[10]_C_i_10_n_0 ;
  wire \m_axis_tdata[10]_C_i_11_n_0 ;
  wire \m_axis_tdata[10]_C_i_1_n_0 ;
  wire \m_axis_tdata[10]_C_i_2_n_0 ;
  wire \m_axis_tdata[10]_C_i_3_n_0 ;
  wire \m_axis_tdata[10]_C_i_4_n_0 ;
  wire \m_axis_tdata[10]_C_i_5_n_0 ;
  wire \m_axis_tdata[10]_C_i_6_n_0 ;
  wire \m_axis_tdata[10]_C_i_7_n_0 ;
  wire \m_axis_tdata[10]_C_i_8_n_0 ;
  wire \m_axis_tdata[10]_C_i_9_n_0 ;
  wire \m_axis_tdata[11]_C_i_10_n_0 ;
  wire \m_axis_tdata[11]_C_i_11_n_0 ;
  wire \m_axis_tdata[11]_C_i_1_n_0 ;
  wire \m_axis_tdata[11]_C_i_2_n_0 ;
  wire \m_axis_tdata[11]_C_i_3_n_0 ;
  wire \m_axis_tdata[11]_C_i_4_n_0 ;
  wire \m_axis_tdata[11]_C_i_5_n_0 ;
  wire \m_axis_tdata[11]_C_i_6_n_0 ;
  wire \m_axis_tdata[11]_C_i_7_n_0 ;
  wire \m_axis_tdata[11]_C_i_8_n_0 ;
  wire \m_axis_tdata[11]_C_i_9_n_0 ;
  wire \m_axis_tdata[12]_C_i_10_n_0 ;
  wire \m_axis_tdata[12]_C_i_11_n_0 ;
  wire \m_axis_tdata[12]_C_i_1_n_0 ;
  wire \m_axis_tdata[12]_C_i_2_n_0 ;
  wire \m_axis_tdata[12]_C_i_3_n_0 ;
  wire \m_axis_tdata[12]_C_i_4_n_0 ;
  wire \m_axis_tdata[12]_C_i_5_n_0 ;
  wire \m_axis_tdata[12]_C_i_6_n_0 ;
  wire \m_axis_tdata[12]_C_i_7_n_0 ;
  wire \m_axis_tdata[12]_C_i_8_n_0 ;
  wire \m_axis_tdata[12]_C_i_9_n_0 ;
  wire \m_axis_tdata[13]_C_i_10_n_0 ;
  wire \m_axis_tdata[13]_C_i_11_n_0 ;
  wire \m_axis_tdata[13]_C_i_1_n_0 ;
  wire \m_axis_tdata[13]_C_i_2_n_0 ;
  wire \m_axis_tdata[13]_C_i_3_n_0 ;
  wire \m_axis_tdata[13]_C_i_4_n_0 ;
  wire \m_axis_tdata[13]_C_i_5_n_0 ;
  wire \m_axis_tdata[13]_C_i_6_n_0 ;
  wire \m_axis_tdata[13]_C_i_7_n_0 ;
  wire \m_axis_tdata[13]_C_i_8_n_0 ;
  wire \m_axis_tdata[13]_C_i_9_n_0 ;
  wire \m_axis_tdata[14]_C_i_10_n_0 ;
  wire \m_axis_tdata[14]_C_i_11_n_0 ;
  wire \m_axis_tdata[14]_C_i_1_n_0 ;
  wire \m_axis_tdata[14]_C_i_2_n_0 ;
  wire \m_axis_tdata[14]_C_i_3_n_0 ;
  wire \m_axis_tdata[14]_C_i_4_n_0 ;
  wire \m_axis_tdata[14]_C_i_5_n_0 ;
  wire \m_axis_tdata[14]_C_i_6_n_0 ;
  wire \m_axis_tdata[14]_C_i_7_n_0 ;
  wire \m_axis_tdata[14]_C_i_8_n_0 ;
  wire \m_axis_tdata[14]_C_i_9_n_0 ;
  wire \m_axis_tdata[15]_C_i_10_n_0 ;
  wire \m_axis_tdata[15]_C_i_11_n_0 ;
  wire \m_axis_tdata[15]_C_i_1_n_0 ;
  wire \m_axis_tdata[15]_C_i_2_n_0 ;
  wire \m_axis_tdata[15]_C_i_3_n_0 ;
  wire \m_axis_tdata[15]_C_i_4_n_0 ;
  wire \m_axis_tdata[15]_C_i_5_n_0 ;
  wire \m_axis_tdata[15]_C_i_6_n_0 ;
  wire \m_axis_tdata[15]_C_i_7_n_0 ;
  wire \m_axis_tdata[15]_C_i_8_n_0 ;
  wire \m_axis_tdata[15]_C_i_9_n_0 ;
  wire \m_axis_tdata[16]_C_i_10_n_0 ;
  wire \m_axis_tdata[16]_C_i_11_n_0 ;
  wire \m_axis_tdata[16]_C_i_12_n_0 ;
  wire \m_axis_tdata[16]_C_i_13_n_0 ;
  wire \m_axis_tdata[16]_C_i_14_n_0 ;
  wire \m_axis_tdata[16]_C_i_15_n_0 ;
  wire \m_axis_tdata[16]_C_i_1_n_0 ;
  wire \m_axis_tdata[16]_C_i_2_n_0 ;
  wire \m_axis_tdata[16]_C_i_3_n_0 ;
  wire \m_axis_tdata[16]_C_i_4_n_0 ;
  wire \m_axis_tdata[16]_C_i_5_n_0 ;
  wire \m_axis_tdata[16]_C_i_6_n_0 ;
  wire \m_axis_tdata[16]_C_i_7_n_0 ;
  wire \m_axis_tdata[16]_C_i_8_n_0 ;
  wire \m_axis_tdata[16]_C_i_9_n_0 ;
  wire \m_axis_tdata[17]_C_i_10_n_0 ;
  wire \m_axis_tdata[17]_C_i_1_n_0 ;
  wire \m_axis_tdata[17]_C_i_2_n_0 ;
  wire \m_axis_tdata[17]_C_i_3_n_0 ;
  wire \m_axis_tdata[17]_C_i_4_n_0 ;
  wire \m_axis_tdata[17]_C_i_5_n_0 ;
  wire \m_axis_tdata[17]_C_i_6_n_0 ;
  wire \m_axis_tdata[17]_C_i_7_n_0 ;
  wire \m_axis_tdata[17]_C_i_8_n_0 ;
  wire \m_axis_tdata[17]_C_i_9_n_0 ;
  wire \m_axis_tdata[18]_C_i_10_n_0 ;
  wire \m_axis_tdata[18]_C_i_1_n_0 ;
  wire \m_axis_tdata[18]_C_i_2_n_0 ;
  wire \m_axis_tdata[18]_C_i_3_n_0 ;
  wire \m_axis_tdata[18]_C_i_4_n_0 ;
  wire \m_axis_tdata[18]_C_i_5_n_0 ;
  wire \m_axis_tdata[18]_C_i_6_n_0 ;
  wire \m_axis_tdata[18]_C_i_7_n_0 ;
  wire \m_axis_tdata[18]_C_i_8_n_0 ;
  wire \m_axis_tdata[18]_C_i_9_n_0 ;
  wire \m_axis_tdata[19]_C_i_10_n_0 ;
  wire \m_axis_tdata[19]_C_i_11_n_0 ;
  wire \m_axis_tdata[19]_C_i_12_n_0 ;
  wire \m_axis_tdata[19]_C_i_13_n_0 ;
  wire \m_axis_tdata[19]_C_i_15_n_0 ;
  wire \m_axis_tdata[19]_C_i_16_n_0 ;
  wire \m_axis_tdata[19]_C_i_17_n_0 ;
  wire \m_axis_tdata[19]_C_i_18_n_0 ;
  wire \m_axis_tdata[19]_C_i_1_n_0 ;
  wire \m_axis_tdata[19]_C_i_2_n_0 ;
  wire \m_axis_tdata[19]_C_i_3_n_0 ;
  wire \m_axis_tdata[19]_C_i_4_n_0 ;
  wire \m_axis_tdata[19]_C_i_5_n_0 ;
  wire \m_axis_tdata[19]_C_i_6_n_0 ;
  wire \m_axis_tdata[19]_C_i_7_n_0 ;
  wire \m_axis_tdata[19]_C_i_8_n_0 ;
  wire \m_axis_tdata[19]_C_i_9_n_0 ;
  wire \m_axis_tdata[1]_C_i_1_n_0 ;
  wire \m_axis_tdata[1]_C_i_2_n_0 ;
  wire \m_axis_tdata[1]_C_i_3_n_0 ;
  wire \m_axis_tdata[1]_C_i_4_n_0 ;
  wire \m_axis_tdata[1]_C_i_5_n_0 ;
  wire \m_axis_tdata[1]_C_i_6_n_0 ;
  wire \m_axis_tdata[1]_C_i_7_n_0 ;
  wire \m_axis_tdata[20]_C_i_1_n_0 ;
  wire \m_axis_tdata[20]_C_i_2_n_0 ;
  wire \m_axis_tdata[20]_C_i_3_n_0 ;
  wire \m_axis_tdata[20]_C_i_4_n_0 ;
  wire \m_axis_tdata[20]_C_i_5_n_0 ;
  wire \m_axis_tdata[20]_C_i_6_n_0 ;
  wire \m_axis_tdata[20]_C_i_7_n_0 ;
  wire \m_axis_tdata[20]_C_i_8_n_0 ;
  wire \m_axis_tdata[20]_C_i_9_n_0 ;
  wire \m_axis_tdata[21]_C_i_10_n_0 ;
  wire \m_axis_tdata[21]_C_i_11_n_0 ;
  wire \m_axis_tdata[21]_C_i_12_n_0 ;
  wire \m_axis_tdata[21]_C_i_13_n_0 ;
  wire \m_axis_tdata[21]_C_i_1_n_0 ;
  wire \m_axis_tdata[21]_C_i_2_n_0 ;
  wire \m_axis_tdata[21]_C_i_3_n_0 ;
  wire \m_axis_tdata[21]_C_i_4_n_0 ;
  wire \m_axis_tdata[21]_C_i_5_n_0 ;
  wire \m_axis_tdata[21]_C_i_6_n_0 ;
  wire \m_axis_tdata[21]_C_i_7_n_0 ;
  wire \m_axis_tdata[21]_C_i_8_n_0 ;
  wire \m_axis_tdata[21]_C_i_9_n_0 ;
  wire \m_axis_tdata[22]_C_i_10_n_0 ;
  wire \m_axis_tdata[22]_C_i_11_n_0 ;
  wire \m_axis_tdata[22]_C_i_12_n_0 ;
  wire \m_axis_tdata[22]_C_i_13_n_0 ;
  wire \m_axis_tdata[22]_C_i_14_n_0 ;
  wire \m_axis_tdata[22]_C_i_15_n_0 ;
  wire \m_axis_tdata[22]_C_i_16_n_0 ;
  wire \m_axis_tdata[22]_C_i_17_n_0 ;
  wire \m_axis_tdata[22]_C_i_18_n_0 ;
  wire \m_axis_tdata[22]_C_i_19_n_0 ;
  wire \m_axis_tdata[22]_C_i_1_n_0 ;
  wire \m_axis_tdata[22]_C_i_20_n_0 ;
  wire \m_axis_tdata[22]_C_i_21_n_0 ;
  wire \m_axis_tdata[22]_C_i_22_n_0 ;
  wire \m_axis_tdata[22]_C_i_23_n_0 ;
  wire \m_axis_tdata[22]_C_i_24_n_0 ;
  wire \m_axis_tdata[22]_C_i_25_n_0 ;
  wire \m_axis_tdata[22]_C_i_26_n_0 ;
  wire \m_axis_tdata[22]_C_i_27_n_0 ;
  wire \m_axis_tdata[22]_C_i_2_n_0 ;
  wire \m_axis_tdata[22]_C_i_3_n_0 ;
  wire \m_axis_tdata[22]_C_i_4_n_0 ;
  wire \m_axis_tdata[22]_C_i_5_n_0 ;
  wire \m_axis_tdata[22]_C_i_6_n_0 ;
  wire \m_axis_tdata[22]_C_i_8_n_0 ;
  wire \m_axis_tdata[22]_C_i_9_n_0 ;
  wire \m_axis_tdata[23]_C_i_10_n_0 ;
  wire \m_axis_tdata[23]_C_i_11_n_0 ;
  wire \m_axis_tdata[23]_C_i_12_n_0 ;
  wire \m_axis_tdata[23]_C_i_13_n_0 ;
  wire \m_axis_tdata[23]_C_i_14_n_0 ;
  wire \m_axis_tdata[23]_C_i_15_n_0 ;
  wire \m_axis_tdata[23]_C_i_16_n_0 ;
  wire \m_axis_tdata[23]_C_i_17_n_0 ;
  wire \m_axis_tdata[23]_C_i_18_n_0 ;
  wire \m_axis_tdata[23]_C_i_19_n_0 ;
  wire \m_axis_tdata[23]_C_i_1_n_0 ;
  wire \m_axis_tdata[23]_C_i_20_n_0 ;
  wire \m_axis_tdata[23]_C_i_21_n_0 ;
  wire \m_axis_tdata[23]_C_i_23_n_0 ;
  wire \m_axis_tdata[23]_C_i_24_n_0 ;
  wire \m_axis_tdata[23]_C_i_27_n_0 ;
  wire \m_axis_tdata[23]_C_i_28_n_0 ;
  wire \m_axis_tdata[23]_C_i_29_n_0 ;
  wire \m_axis_tdata[23]_C_i_2_n_0 ;
  wire \m_axis_tdata[23]_C_i_3_n_0 ;
  wire \m_axis_tdata[23]_C_i_42_n_0 ;
  wire \m_axis_tdata[23]_C_i_43_n_0 ;
  wire \m_axis_tdata[23]_C_i_46_n_0 ;
  wire \m_axis_tdata[23]_C_i_47_n_0 ;
  wire \m_axis_tdata[23]_C_i_4_n_0 ;
  wire \m_axis_tdata[23]_C_i_5_n_0 ;
  wire \m_axis_tdata[23]_C_i_6_n_0 ;
  wire \m_axis_tdata[23]_C_i_7_n_0 ;
  wire \m_axis_tdata[23]_C_i_8_n_0 ;
  wire \m_axis_tdata[23]_C_i_9_n_0 ;
  wire \m_axis_tdata[2]_C_i_1_n_0 ;
  wire \m_axis_tdata[2]_C_i_2_n_0 ;
  wire \m_axis_tdata[2]_C_i_3_n_0 ;
  wire \m_axis_tdata[2]_C_i_4_n_0 ;
  wire \m_axis_tdata[2]_C_i_5_n_0 ;
  wire \m_axis_tdata[2]_C_i_6_n_0 ;
  wire \m_axis_tdata[2]_C_i_7_n_0 ;
  wire \m_axis_tdata[2]_C_i_8_n_0 ;
  wire \m_axis_tdata[3]_C_i_10_n_0 ;
  wire \m_axis_tdata[3]_C_i_1_n_0 ;
  wire \m_axis_tdata[3]_C_i_2_n_0 ;
  wire \m_axis_tdata[3]_C_i_3_n_0 ;
  wire \m_axis_tdata[3]_C_i_4_n_0 ;
  wire \m_axis_tdata[3]_C_i_5_n_0 ;
  wire \m_axis_tdata[3]_C_i_6_n_0 ;
  wire \m_axis_tdata[3]_C_i_7_n_0 ;
  wire \m_axis_tdata[3]_C_i_8_n_0 ;
  wire \m_axis_tdata[3]_C_i_9_n_0 ;
  wire \m_axis_tdata[4]_C_i_1_n_0 ;
  wire \m_axis_tdata[4]_C_i_2_n_0 ;
  wire \m_axis_tdata[4]_C_i_3_n_0 ;
  wire \m_axis_tdata[4]_C_i_4_n_0 ;
  wire \m_axis_tdata[4]_C_i_5_n_0 ;
  wire \m_axis_tdata[4]_C_i_6_n_0 ;
  wire \m_axis_tdata[4]_C_i_7_n_0 ;
  wire \m_axis_tdata[4]_C_i_8_n_0 ;
  wire \m_axis_tdata[4]_C_i_9_n_0 ;
  wire \m_axis_tdata[5]_C_i_10_n_0 ;
  wire \m_axis_tdata[5]_C_i_1_n_0 ;
  wire \m_axis_tdata[5]_C_i_2_n_0 ;
  wire \m_axis_tdata[5]_C_i_3_n_0 ;
  wire \m_axis_tdata[5]_C_i_4_n_0 ;
  wire \m_axis_tdata[5]_C_i_5_n_0 ;
  wire \m_axis_tdata[5]_C_i_6_n_0 ;
  wire \m_axis_tdata[5]_C_i_7_n_0 ;
  wire \m_axis_tdata[5]_C_i_8_n_0 ;
  wire \m_axis_tdata[5]_C_i_9_n_0 ;
  wire \m_axis_tdata[6]_C_i_10_n_0 ;
  wire \m_axis_tdata[6]_C_i_1_n_0 ;
  wire \m_axis_tdata[6]_C_i_2_n_0 ;
  wire \m_axis_tdata[6]_C_i_3_n_0 ;
  wire \m_axis_tdata[6]_C_i_4_n_0 ;
  wire \m_axis_tdata[6]_C_i_5_n_0 ;
  wire \m_axis_tdata[6]_C_i_6_n_0 ;
  wire \m_axis_tdata[6]_C_i_7_n_0 ;
  wire \m_axis_tdata[6]_C_i_8_n_0 ;
  wire \m_axis_tdata[6]_C_i_9_n_0 ;
  wire \m_axis_tdata[7]_C_i_10_n_0 ;
  wire \m_axis_tdata[7]_C_i_11_n_0 ;
  wire \m_axis_tdata[7]_C_i_12_n_0 ;
  wire \m_axis_tdata[7]_C_i_13_n_0 ;
  wire \m_axis_tdata[7]_C_i_14_n_0 ;
  wire \m_axis_tdata[7]_C_i_15_n_0 ;
  wire \m_axis_tdata[7]_C_i_1_n_0 ;
  wire \m_axis_tdata[7]_C_i_2_n_0 ;
  wire \m_axis_tdata[7]_C_i_3_n_0 ;
  wire \m_axis_tdata[7]_C_i_4_n_0 ;
  wire \m_axis_tdata[7]_C_i_5_n_0 ;
  wire \m_axis_tdata[7]_C_i_6_n_0 ;
  wire \m_axis_tdata[7]_C_i_7_n_0 ;
  wire \m_axis_tdata[7]_C_i_8_n_0 ;
  wire \m_axis_tdata[7]_C_i_9_n_0 ;
  wire \m_axis_tdata[8]_C_i_10_n_0 ;
  wire \m_axis_tdata[8]_C_i_11_n_0 ;
  wire \m_axis_tdata[8]_C_i_1_n_0 ;
  wire \m_axis_tdata[8]_C_i_2_n_0 ;
  wire \m_axis_tdata[8]_C_i_3_n_0 ;
  wire \m_axis_tdata[8]_C_i_4_n_0 ;
  wire \m_axis_tdata[8]_C_i_5_n_0 ;
  wire \m_axis_tdata[8]_C_i_6_n_0 ;
  wire \m_axis_tdata[8]_C_i_7_n_0 ;
  wire \m_axis_tdata[8]_C_i_8_n_0 ;
  wire \m_axis_tdata[8]_C_i_9_n_0 ;
  wire \m_axis_tdata[9]_C_i_10_n_0 ;
  wire \m_axis_tdata[9]_C_i_11_n_0 ;
  wire \m_axis_tdata[9]_C_i_1_n_0 ;
  wire \m_axis_tdata[9]_C_i_2_n_0 ;
  wire \m_axis_tdata[9]_C_i_3_n_0 ;
  wire \m_axis_tdata[9]_C_i_4_n_0 ;
  wire \m_axis_tdata[9]_C_i_5_n_0 ;
  wire \m_axis_tdata[9]_C_i_6_n_0 ;
  wire \m_axis_tdata[9]_C_i_7_n_0 ;
  wire \m_axis_tdata[9]_C_i_8_n_0 ;
  wire \m_axis_tdata[9]_C_i_9_n_0 ;
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
  wire [23:0]s_axis_tdata;
  wire [13:0]sel0;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[0]_C_i_1 
       (.I0(\m_axis_tdata[0]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[0]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[0]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[0]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[0]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[3]_C_i_7_n_0 ),
        .O(\m_axis_tdata[0]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[0]_C_i_2 
       (.I0(\m_axis_tdata[23]_C_i_8_n_0 ),
        .I1(s_axis_tdata[0]),
        .O(\m_axis_tdata[0]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[0]_C_i_3 
       (.I0(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I1(\m_axis_tdata[0]_C_i_7_n_0 ),
        .I2(s_axis_tdata[4]),
        .I3(\m_axis_tdata[16]_C_i_11_n_0 ),
        .I4(s_axis_tdata[5]),
        .I5(\m_axis_tdata[16]_C_i_12_n_0 ),
        .O(\m_axis_tdata[0]_C_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[0]_C_i_4 
       (.I0(s_axis_tdata[1]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[2]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[0]_C_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[0]_C_i_5 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .O(\m_axis_tdata[0]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    \m_axis_tdata[0]_C_i_6 
       (.I0(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I1(sel0[1]),
        .I2(s_axis_tdata[6]),
        .I3(s_axis_tdata[7]),
        .I4(s_axis_tdata[0]),
        .I5(sel0[0]),
        .O(\m_axis_tdata[0]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[0]_C_i_7 
       (.I0(sel0[4]),
        .I1(s_axis_tdata[3]),
        .O(\m_axis_tdata[0]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\m_axis_tdata_reg[0]_P_n_0 ),
        .I1(\m_axis_tdata_reg[0]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[0]_C_n_0 ),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[10]_C_i_1 
       (.I0(\m_axis_tdata[10]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[10]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[10]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[10]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[10]_C_i_6_n_0 ),
        .O(\m_axis_tdata[10]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[10]_C_i_10 
       (.I0(s_axis_tdata[7]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[8]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[10]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[10]_C_i_11 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[9]),
        .O(\m_axis_tdata[10]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[10]_C_i_2 
       (.I0(s_axis_tdata[11]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[12]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[10]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[10]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[3]),
        .I3(s_axis_tdata[2]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[10]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[10]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[6]),
        .I2(\m_axis_tdata[10]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[4]),
        .O(\m_axis_tdata[10]_C_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \m_axis_tdata[10]_C_i_5 
       (.I0(\m_axis_tdata[10]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[10]_C_i_9_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[10]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[10]_C_i_6 
       (.I0(\m_axis_tdata[10]_C_i_10_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[10]_C_i_11_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[10]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[10]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[5]),
        .O(\m_axis_tdata[10]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[10]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[15]),
        .I3(s_axis_tdata[14]),
        .I4(s_axis_tdata[13]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[10]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h222FFFFF222F222F)) 
    \m_axis_tdata[10]_C_i_9 
       (.I0(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I1(s_axis_tdata[10]),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[16]),
        .I5(sel0[1]),
        .O(\m_axis_tdata[10]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\m_axis_tdata_reg[10]_P_n_0 ),
        .I1(\m_axis_tdata_reg[10]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[10]_C_n_0 ),
        .O(m_axis_tdata[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[11]_C_i_1 
       (.I0(\m_axis_tdata[11]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[11]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[11]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[11]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[11]_C_i_6_n_0 ),
        .O(\m_axis_tdata[11]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[11]_C_i_10 
       (.I0(s_axis_tdata[8]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[11]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[11]_C_i_11 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[10]),
        .O(\m_axis_tdata[11]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[11]_C_i_2 
       (.I0(s_axis_tdata[12]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[11]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[11]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[4]),
        .I3(s_axis_tdata[3]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[11]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[11]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[7]),
        .I2(\m_axis_tdata[11]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[5]),
        .O(\m_axis_tdata[11]_C_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \m_axis_tdata[11]_C_i_5 
       (.I0(\m_axis_tdata[11]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[11]_C_i_9_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[11]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[11]_C_i_6 
       (.I0(\m_axis_tdata[11]_C_i_10_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[11]_C_i_11_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[11]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[11]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[11]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[6]),
        .O(\m_axis_tdata[11]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[11]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[15]),
        .I4(s_axis_tdata[14]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[11]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h222FFFFF222F222F)) 
    \m_axis_tdata[11]_C_i_9 
       (.I0(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I1(s_axis_tdata[11]),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[17]),
        .I5(sel0[1]),
        .O(\m_axis_tdata[11]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\m_axis_tdata_reg[11]_P_n_0 ),
        .I1(\m_axis_tdata_reg[11]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[11]_C_n_0 ),
        .O(m_axis_tdata[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[12]_C_i_1 
       (.I0(\m_axis_tdata[12]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[12]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[12]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[12]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[12]_C_i_6_n_0 ),
        .O(\m_axis_tdata[12]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[12]_C_i_10 
       (.I0(s_axis_tdata[9]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[10]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[12]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[12]_C_i_11 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[11]),
        .O(\m_axis_tdata[12]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[12]_C_i_2 
       (.I0(s_axis_tdata[13]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[14]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[12]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[12]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[5]),
        .I3(s_axis_tdata[4]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[12]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[12]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[8]),
        .I2(\m_axis_tdata[12]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[6]),
        .O(\m_axis_tdata[12]_C_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \m_axis_tdata[12]_C_i_5 
       (.I0(\m_axis_tdata[12]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[12]_C_i_9_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[12]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[12]_C_i_6 
       (.I0(\m_axis_tdata[12]_C_i_10_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[12]_C_i_11_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[12]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[12]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[12]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[7]),
        .O(\m_axis_tdata[12]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[12]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[17]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[15]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[12]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h222FFFFF222F222F)) 
    \m_axis_tdata[12]_C_i_9 
       (.I0(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I1(s_axis_tdata[12]),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[19]),
        .I4(s_axis_tdata[18]),
        .I5(sel0[1]),
        .O(\m_axis_tdata[12]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\m_axis_tdata_reg[12]_P_n_0 ),
        .I1(\m_axis_tdata_reg[12]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[12]_C_n_0 ),
        .O(m_axis_tdata[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[13]_C_i_1 
       (.I0(\m_axis_tdata[13]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[13]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[13]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[13]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[13]_C_i_6_n_0 ),
        .O(\m_axis_tdata[13]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[13]_C_i_10 
       (.I0(s_axis_tdata[10]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[13]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[13]_C_i_11 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[12]),
        .O(\m_axis_tdata[13]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[13]_C_i_2 
       (.I0(s_axis_tdata[14]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[15]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[13]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[13]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[6]),
        .I3(s_axis_tdata[5]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[13]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[13]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[9]),
        .I2(\m_axis_tdata[13]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[7]),
        .O(\m_axis_tdata[13]_C_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \m_axis_tdata[13]_C_i_5 
       (.I0(\m_axis_tdata[13]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[13]_C_i_9_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[13]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[13]_C_i_6 
       (.I0(\m_axis_tdata[13]_C_i_10_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[13]_C_i_11_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[13]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[13]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[13]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[8]),
        .O(\m_axis_tdata[13]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[13]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[18]),
        .I3(s_axis_tdata[17]),
        .I4(s_axis_tdata[16]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[13]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h222FFFFF222F222F)) 
    \m_axis_tdata[13]_C_i_9 
       (.I0(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I1(s_axis_tdata[13]),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[20]),
        .I4(s_axis_tdata[19]),
        .I5(sel0[1]),
        .O(\m_axis_tdata[13]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\m_axis_tdata_reg[13]_P_n_0 ),
        .I1(\m_axis_tdata_reg[13]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[13]_C_n_0 ),
        .O(m_axis_tdata[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[14]_C_i_1 
       (.I0(\m_axis_tdata[14]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[14]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[14]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[14]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[14]_C_i_6_n_0 ),
        .O(\m_axis_tdata[14]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[14]_C_i_10 
       (.I0(s_axis_tdata[11]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[12]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[14]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[14]_C_i_11 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[13]),
        .O(\m_axis_tdata[14]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[14]_C_i_2 
       (.I0(s_axis_tdata[15]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[16]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[14]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[14]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[7]),
        .I3(s_axis_tdata[6]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[14]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[14]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[10]),
        .I2(\m_axis_tdata[14]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[8]),
        .O(\m_axis_tdata[14]_C_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \m_axis_tdata[14]_C_i_5 
       (.I0(\m_axis_tdata[14]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[14]_C_i_9_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[14]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[14]_C_i_6 
       (.I0(\m_axis_tdata[14]_C_i_10_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[14]_C_i_11_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[14]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[14]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[14]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[9]),
        .O(\m_axis_tdata[14]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[14]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[19]),
        .I3(s_axis_tdata[18]),
        .I4(s_axis_tdata[17]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[14]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h222FFFFF222F222F)) 
    \m_axis_tdata[14]_C_i_9 
       (.I0(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I1(s_axis_tdata[14]),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[21]),
        .I4(s_axis_tdata[20]),
        .I5(sel0[1]),
        .O(\m_axis_tdata[14]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\m_axis_tdata_reg[14]_P_n_0 ),
        .I1(\m_axis_tdata_reg[14]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[14]_C_n_0 ),
        .O(m_axis_tdata[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[15]_C_i_1 
       (.I0(\m_axis_tdata[15]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[15]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[15]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[15]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[15]_C_i_6_n_0 ),
        .O(\m_axis_tdata[15]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[15]_C_i_10 
       (.I0(s_axis_tdata[12]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[13]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[15]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[15]_C_i_11 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[14]),
        .O(\m_axis_tdata[15]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[15]_C_i_2 
       (.I0(s_axis_tdata[16]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[15]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[15]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[7]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[15]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[15]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[11]),
        .I2(\m_axis_tdata[15]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[9]),
        .O(\m_axis_tdata[15]_C_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \m_axis_tdata[15]_C_i_5 
       (.I0(\m_axis_tdata[15]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[15]_C_i_9_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[15]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[15]_C_i_6 
       (.I0(\m_axis_tdata[15]_C_i_10_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[15]_C_i_11_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[15]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[15]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[15]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[10]),
        .O(\m_axis_tdata[15]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[15]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[20]),
        .I3(s_axis_tdata[19]),
        .I4(s_axis_tdata[18]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[15]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h222FFFFF222F222F)) 
    \m_axis_tdata[15]_C_i_9 
       (.I0(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I1(s_axis_tdata[15]),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[22]),
        .I4(s_axis_tdata[21]),
        .I5(sel0[1]),
        .O(\m_axis_tdata[15]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\m_axis_tdata_reg[15]_P_n_0 ),
        .I1(\m_axis_tdata_reg[15]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[15]_C_n_0 ),
        .O(m_axis_tdata[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[16]_C_i_1 
       (.I0(\m_axis_tdata[16]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[16]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[16]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[16]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[16]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[16]_C_i_7_n_0 ),
        .O(\m_axis_tdata[16]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[16]_C_i_10 
       (.I0(sel0[4]),
        .I1(s_axis_tdata[19]),
        .O(\m_axis_tdata[16]_C_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000AA8000008200)) 
    \m_axis_tdata[16]_C_i_11 
       (.I0(\m_axis_tdata[22]_C_i_13_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[3]),
        .I3(balance[1]),
        .I4(balance[0]),
        .I5(balance[2]),
        .O(\m_axis_tdata[16]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00001400)) 
    \m_axis_tdata[16]_C_i_12 
       (.I0(balance[0]),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[3]),
        .I3(balance[2]),
        .I4(balance[1]),
        .O(\m_axis_tdata[16]_C_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200020000)) 
    \m_axis_tdata[16]_C_i_13 
       (.I0(s_axis_tdata[23]),
        .I1(balance[0]),
        .I2(balance[2]),
        .I3(balance[1]),
        .I4(balance[3]),
        .I5(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(\m_axis_tdata[16]_C_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[16]_C_i_14 
       (.I0(s_axis_tdata[13]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[14]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[16]_C_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[16]_C_i_15 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[15]),
        .O(\m_axis_tdata[16]_C_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[16]_C_i_2 
       (.I0(s_axis_tdata[17]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[18]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[16]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[16]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[8]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[16]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
    \m_axis_tdata[16]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I1(\m_axis_tdata[16]_C_i_8_n_0 ),
        .I2(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I3(\m_axis_tdata[16]_C_i_9_n_0 ),
        .I4(s_axis_tdata[12]),
        .I5(\m_axis_tdata[22]_C_i_10_n_0 ),
        .O(\m_axis_tdata[16]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[16]_C_i_5 
       (.I0(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I1(\m_axis_tdata[16]_C_i_10_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[16]_C_i_11_n_0 ),
        .I4(s_axis_tdata[21]),
        .I5(\m_axis_tdata[16]_C_i_12_n_0 ),
        .O(\m_axis_tdata[16]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[16]_C_i_6 
       (.I0(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I1(sel0[1]),
        .I2(s_axis_tdata[22]),
        .I3(s_axis_tdata[16]),
        .I4(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I5(\m_axis_tdata[16]_C_i_13_n_0 ),
        .O(\m_axis_tdata[16]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[16]_C_i_7 
       (.I0(\m_axis_tdata[16]_C_i_14_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[16]_C_i_15_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[16]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[16]_C_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h8A800000)) 
    \m_axis_tdata[16]_C_i_8 
       (.I0(sel0[13]),
        .I1(\m_axis_tdata[23]_C_i_29_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[23]_C_i_28_n_0 ),
        .I4(s_axis_tdata[10]),
        .O(\m_axis_tdata[16]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[16]_C_i_9 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[11]),
        .O(\m_axis_tdata[16]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\m_axis_tdata_reg[16]_P_n_0 ),
        .I1(\m_axis_tdata_reg[16]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[16]_C_n_0 ),
        .O(m_axis_tdata[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[17]_C_i_1 
       (.I0(\m_axis_tdata[17]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[17]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[17]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[17]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[17]_C_i_6_n_0 ),
        .O(\m_axis_tdata[17]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[17]_C_i_10 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[16]),
        .O(\m_axis_tdata[17]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[17]_C_i_2 
       (.I0(s_axis_tdata[18]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[19]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[17]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[17]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[10]),
        .I3(s_axis_tdata[9]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[17]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[17]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[13]),
        .I2(\m_axis_tdata[17]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[11]),
        .O(\m_axis_tdata[17]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF88888888888)) 
    \m_axis_tdata[17]_C_i_5 
       (.I0(\m_axis_tdata[17]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[19]_C_i_13_n_0 ),
        .I5(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[17]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[17]_C_i_6 
       (.I0(\m_axis_tdata[17]_C_i_9_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[17]_C_i_10_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[17]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[17]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[17]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[12]),
        .O(\m_axis_tdata[17]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[17]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[22]),
        .I3(s_axis_tdata[21]),
        .I4(s_axis_tdata[20]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[17]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[17]_C_i_9 
       (.I0(s_axis_tdata[14]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[15]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[17]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\m_axis_tdata_reg[17]_P_n_0 ),
        .I1(\m_axis_tdata_reg[17]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[17]_C_n_0 ),
        .O(m_axis_tdata[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[18]_C_i_1 
       (.I0(\m_axis_tdata[18]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[18]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[18]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[18]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[18]_C_i_6_n_0 ),
        .O(\m_axis_tdata[18]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[18]_C_i_10 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[17]),
        .O(\m_axis_tdata[18]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[18]_C_i_2 
       (.I0(s_axis_tdata[19]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[18]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[18]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[10]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[18]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[18]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[14]),
        .I2(\m_axis_tdata[18]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[12]),
        .O(\m_axis_tdata[18]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF88888888888)) 
    \m_axis_tdata[18]_C_i_5 
       (.I0(\m_axis_tdata[18]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(s_axis_tdata[18]),
        .I3(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[19]_C_i_13_n_0 ),
        .I5(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[18]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[18]_C_i_6 
       (.I0(\m_axis_tdata[18]_C_i_9_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[18]_C_i_10_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[18]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[18]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[18]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[13]),
        .O(\m_axis_tdata[18]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[18]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[22]),
        .I4(s_axis_tdata[21]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[18]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[18]_C_i_9 
       (.I0(s_axis_tdata[15]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[16]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[18]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\m_axis_tdata_reg[18]_P_n_0 ),
        .I1(\m_axis_tdata_reg[18]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[18]_C_n_0 ),
        .O(m_axis_tdata[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[19]_C_i_1 
       (.I0(\m_axis_tdata[19]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[19]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[19]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[19]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[19]_C_i_7_n_0 ),
        .O(\m_axis_tdata[19]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00FF002000000000)) 
    \m_axis_tdata[19]_C_i_10 
       (.I0(\m_axis_tdata[19]_C_i_18_n_0 ),
        .I1(balance[0]),
        .I2(\m_axis_tdata[22]_C_i_13_n_0 ),
        .I3(sel0[4]),
        .I4(sel0[2]),
        .I5(s_axis_tdata[23]),
        .O(\m_axis_tdata[19]_C_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h1014140400141400)) 
    \m_axis_tdata[19]_C_i_11 
       (.I0(balance[0]),
        .I1(balance[1]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I4(balance[3]),
        .I5(\m_axis_tdata[22]_C_i_13_n_0 ),
        .O(\m_axis_tdata[19]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFEF1)) 
    \m_axis_tdata[19]_C_i_12 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[1]),
        .I3(balance[2]),
        .I4(balance[0]),
        .O(\m_axis_tdata[19]_C_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000010E00000000)) 
    \m_axis_tdata[19]_C_i_13 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[1]),
        .I3(balance[2]),
        .I4(balance[0]),
        .I5(s_axis_tdata[23]),
        .O(\m_axis_tdata[19]_C_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00101000)) 
    \m_axis_tdata[19]_C_i_14 
       (.I0(balance[2]),
        .I1(balance[0]),
        .I2(balance[1]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(sel0[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h8A800000)) 
    \m_axis_tdata[19]_C_i_15 
       (.I0(sel0[13]),
        .I1(\m_axis_tdata[23]_C_i_29_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[23]_C_i_28_n_0 ),
        .I4(s_axis_tdata[13]),
        .O(\m_axis_tdata[19]_C_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[19]_C_i_16 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[14]),
        .O(\m_axis_tdata[19]_C_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[19]_C_i_17 
       (.I0(s_axis_tdata[16]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[19]_C_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \m_axis_tdata[19]_C_i_18 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[2]),
        .I3(balance[1]),
        .O(\m_axis_tdata[19]_C_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[19]_C_i_2 
       (.I0(s_axis_tdata[20]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[21]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[19]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF88888888888)) 
    \m_axis_tdata[19]_C_i_3 
       (.I0(\m_axis_tdata[19]_C_i_10_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(s_axis_tdata[19]),
        .I3(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[19]_C_i_13_n_0 ),
        .I5(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[19]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[19]_C_i_4 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[11]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[19]_C_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF8888888)) 
    \m_axis_tdata[19]_C_i_5 
       (.I0(s_axis_tdata[19]),
        .I1(\m_axis_tdata[23]_C_i_8_n_0 ),
        .I2(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I3(sel0[4]),
        .I4(s_axis_tdata[22]),
        .O(\m_axis_tdata[19]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA8AAA8)) 
    \m_axis_tdata[19]_C_i_6 
       (.I0(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_15_n_0 ),
        .I2(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I3(\m_axis_tdata[19]_C_i_16_n_0 ),
        .I4(s_axis_tdata[15]),
        .I5(\m_axis_tdata[22]_C_i_10_n_0 ),
        .O(\m_axis_tdata[19]_C_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \m_axis_tdata[19]_C_i_7 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(s_axis_tdata[18]),
        .I2(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I4(\m_axis_tdata[19]_C_i_17_n_0 ),
        .O(\m_axis_tdata[19]_C_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00006000)) 
    \m_axis_tdata[19]_C_i_8 
       (.I0(balance[3]),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[2]),
        .I3(balance[1]),
        .I4(balance[0]),
        .O(\m_axis_tdata[19]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h01400000)) 
    \m_axis_tdata[19]_C_i_9 
       (.I0(balance[0]),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[3]),
        .I3(balance[2]),
        .I4(balance[1]),
        .O(\m_axis_tdata[19]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\m_axis_tdata_reg[19]_P_n_0 ),
        .I1(\m_axis_tdata_reg[19]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[19]_C_n_0 ),
        .O(m_axis_tdata[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[1]_C_i_1 
       (.I0(\m_axis_tdata[1]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[1]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[1]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[1]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[1]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[3]_C_i_7_n_0 ),
        .O(\m_axis_tdata[1]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[1]_C_i_2 
       (.I0(\m_axis_tdata[23]_C_i_8_n_0 ),
        .I1(s_axis_tdata[1]),
        .O(\m_axis_tdata[1]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[1]_C_i_3 
       (.I0(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I1(\m_axis_tdata[1]_C_i_7_n_0 ),
        .I2(s_axis_tdata[5]),
        .I3(\m_axis_tdata[16]_C_i_11_n_0 ),
        .I4(s_axis_tdata[6]),
        .I5(\m_axis_tdata[16]_C_i_12_n_0 ),
        .O(\m_axis_tdata[1]_C_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[1]_C_i_4 
       (.I0(s_axis_tdata[2]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[3]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[1]_C_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \m_axis_tdata[1]_C_i_5 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I3(s_axis_tdata[0]),
        .O(\m_axis_tdata[1]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    \m_axis_tdata[1]_C_i_6 
       (.I0(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I1(sel0[1]),
        .I2(s_axis_tdata[7]),
        .I3(s_axis_tdata[8]),
        .I4(s_axis_tdata[1]),
        .I5(sel0[0]),
        .O(\m_axis_tdata[1]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[1]_C_i_7 
       (.I0(sel0[4]),
        .I1(s_axis_tdata[4]),
        .O(\m_axis_tdata[1]_C_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\m_axis_tdata_reg[1]_P_n_0 ),
        .I1(\m_axis_tdata_reg[1]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[1]_C_n_0 ),
        .O(m_axis_tdata[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \m_axis_tdata[20]_C_i_1 
       (.I0(\m_axis_tdata[20]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[20]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[21]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[20]_C_i_4_n_0 ),
        .I4(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[20]_C_i_5_n_0 ),
        .O(\m_axis_tdata[20]_C_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \m_axis_tdata[20]_C_i_2 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(s_axis_tdata[19]),
        .I2(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I4(\m_axis_tdata[20]_C_i_6_n_0 ),
        .O(\m_axis_tdata[20]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \m_axis_tdata[20]_C_i_3 
       (.I0(\m_axis_tdata[20]_C_i_7_n_0 ),
        .I1(\m_axis_tdata[21]_C_i_10_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[21]_C_i_11_n_0 ),
        .I4(\m_axis_tdata[20]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[7]_C_i_6_n_0 ),
        .O(\m_axis_tdata[20]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[20]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[16]),
        .I2(\m_axis_tdata[20]_C_i_9_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[14]),
        .O(\m_axis_tdata[20]_C_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \m_axis_tdata[20]_C_i_5 
       (.I0(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I1(s_axis_tdata[12]),
        .I2(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I4(s_axis_tdata[13]),
        .O(\m_axis_tdata[20]_C_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[20]_C_i_6 
       (.I0(s_axis_tdata[17]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[18]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[20]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0002200000000000)) 
    \m_axis_tdata[20]_C_i_7 
       (.I0(s_axis_tdata[22]),
        .I1(balance[0]),
        .I2(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I3(balance[3]),
        .I4(balance[2]),
        .I5(balance[1]),
        .O(\m_axis_tdata[20]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0220000000000000)) 
    \m_axis_tdata[20]_C_i_8 
       (.I0(s_axis_tdata[21]),
        .I1(balance[0]),
        .I2(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I3(balance[3]),
        .I4(balance[2]),
        .I5(balance[1]),
        .O(\m_axis_tdata[20]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[20]_C_i_9 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[15]),
        .O(\m_axis_tdata[20]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\m_axis_tdata_reg[20]_P_n_0 ),
        .I1(\m_axis_tdata_reg[20]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[20]_C_n_0 ),
        .O(m_axis_tdata[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \m_axis_tdata[21]_C_i_1 
       (.I0(\m_axis_tdata[21]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[21]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[21]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[21]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[21]_C_i_6_n_0 ),
        .O(\m_axis_tdata[21]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CCCCCCCA)) 
    \m_axis_tdata[21]_C_i_10 
       (.I0(\m_axis_tdata[19]_C_i_13_n_0 ),
        .I1(s_axis_tdata[23]),
        .I2(sel0[2]),
        .I3(sel0[4]),
        .I4(sel0[3]),
        .I5(\m_axis_tdata[23]_C_i_43_n_0 ),
        .O(\m_axis_tdata[21]_C_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFCCCCCCDDCCCCCCF)) 
    \m_axis_tdata[21]_C_i_11 
       (.I0(\m_axis_tdata[22]_C_i_13_n_0 ),
        .I1(balance[0]),
        .I2(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I3(balance[3]),
        .I4(balance[2]),
        .I5(balance[1]),
        .O(\m_axis_tdata[21]_C_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0220000000000000)) 
    \m_axis_tdata[21]_C_i_12 
       (.I0(s_axis_tdata[22]),
        .I1(balance[0]),
        .I2(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I3(balance[3]),
        .I4(balance[2]),
        .I5(balance[1]),
        .O(\m_axis_tdata[21]_C_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[21]_C_i_13 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[16]),
        .O(\m_axis_tdata[21]_C_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \m_axis_tdata[21]_C_i_2 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(s_axis_tdata[20]),
        .I2(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I4(\m_axis_tdata[21]_C_i_8_n_0 ),
        .O(\m_axis_tdata[21]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFEEE)) 
    \m_axis_tdata[21]_C_i_3 
       (.I0(\m_axis_tdata[21]_C_i_9_n_0 ),
        .I1(\m_axis_tdata[21]_C_i_10_n_0 ),
        .I2(s_axis_tdata[21]),
        .I3(\m_axis_tdata[21]_C_i_11_n_0 ),
        .I4(\m_axis_tdata[21]_C_i_12_n_0 ),
        .I5(\m_axis_tdata[7]_C_i_6_n_0 ),
        .O(\m_axis_tdata[21]_C_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[21]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_9_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_18_n_0 ),
        .O(\m_axis_tdata[21]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[21]_C_i_5 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[17]),
        .I2(\m_axis_tdata[21]_C_i_13_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[15]),
        .O(\m_axis_tdata[21]_C_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF0808080)) 
    \m_axis_tdata[21]_C_i_6 
       (.I0(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I1(s_axis_tdata[13]),
        .I2(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I4(s_axis_tdata[14]),
        .O(\m_axis_tdata[21]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800080000)) 
    \m_axis_tdata[21]_C_i_7 
       (.I0(m_axis_tdata1),
        .I1(balance[0]),
        .I2(balance[1]),
        .I3(balance[2]),
        .I4(balance[3]),
        .I5(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(\m_axis_tdata[21]_C_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[21]_C_i_8 
       (.I0(s_axis_tdata[18]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[19]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[21]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0002200000000000)) 
    \m_axis_tdata[21]_C_i_9 
       (.I0(s_axis_tdata[23]),
        .I1(balance[0]),
        .I2(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I3(balance[3]),
        .I4(balance[2]),
        .I5(balance[1]),
        .O(\m_axis_tdata[21]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\m_axis_tdata_reg[21]_P_n_0 ),
        .I1(\m_axis_tdata_reg[21]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[21]_C_n_0 ),
        .O(m_axis_tdata[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \m_axis_tdata[22]_C_i_1 
       (.I0(\m_axis_tdata[22]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_7_n_0 ),
        .I2(\m_axis_tdata[22]_C_i_3_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_4_n_0 ),
        .I4(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_6_n_0 ),
        .O(\m_axis_tdata[22]_C_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \m_axis_tdata[22]_C_i_10 
       (.I0(sel0[11]),
        .I1(m_axis_tdata19_out),
        .I2(\m_axis_tdata[23]_C_i_27_n_0 ),
        .O(\m_axis_tdata[22]_C_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[22]_C_i_11 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[17]),
        .O(\m_axis_tdata[22]_C_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000EAFFEA)) 
    \m_axis_tdata[22]_C_i_12 
       (.I0(\m_axis_tdata[22]_C_i_23_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_24_n_0 ),
        .I2(sel0[11]),
        .I3(sel0[13]),
        .I4(m_axis_tdata115_out),
        .I5(s_axis_tdata[23]),
        .O(\m_axis_tdata[22]_C_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000002FFFFFFFF)) 
    \m_axis_tdata[22]_C_i_13 
       (.I0(\m_axis_tdata[22]_C_i_25_n_0 ),
        .I1(balance[2]),
        .I2(balance[3]),
        .I3(balance[4]),
        .I4(balance[5]),
        .I5(balance[1]),
        .O(\m_axis_tdata[22]_C_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[22]_C_i_14 
       (.I0(balance[8]),
        .I1(balance[7]),
        .I2(balance[6]),
        .I3(balance[5]),
        .I4(balance[9]),
        .I5(balance[4]),
        .O(\m_axis_tdata[22]_C_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[22]_C_i_15 
       (.I0(s_axis_tdata[19]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[22]_C_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h000000000072FF72)) 
    \m_axis_tdata[22]_C_i_16 
       (.I0(sel0[9]),
        .I1(m_axis_tdata13_out),
        .I2(\m_axis_tdata[22]_C_i_26_n_0 ),
        .I3(sel0[10]),
        .I4(m_axis_tdata16_out),
        .I5(s_axis_tdata[23]),
        .O(\m_axis_tdata[22]_C_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[22]_C_i_17 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[21]),
        .O(\m_axis_tdata[22]_C_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h400000034003C003)) 
    \m_axis_tdata[22]_C_i_18 
       (.I0(balance[0]),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[3]),
        .I3(balance[2]),
        .I4(balance[1]),
        .I5(\m_axis_tdata[22]_C_i_13_n_0 ),
        .O(\m_axis_tdata[22]_C_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_axis_tdata[22]_C_i_19 
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[15]),
        .O(\m_axis_tdata[22]_C_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hA200)) 
    \m_axis_tdata[22]_C_i_2 
       (.I0(s_axis_tdata[23]),
        .I1(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I2(sel0[1]),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[22]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axis_tdata[22]_C_i_20 
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_tdata[16]),
        .I2(s_axis_tdata[15]),
        .O(\m_axis_tdata[22]_C_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_axis_tdata[22]_C_i_21 
       (.I0(balance[3]),
        .I1(balance[0]),
        .I2(balance[1]),
        .I3(balance[2]),
        .O(\m_axis_tdata[22]_C_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \m_axis_tdata[22]_C_i_22 
       (.I0(balance[2]),
        .I1(balance[1]),
        .I2(balance[0]),
        .O(\m_axis_tdata[22]_C_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000006000)) 
    \m_axis_tdata[22]_C_i_23 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[1]),
        .I3(balance[0]),
        .I4(balance[2]),
        .I5(m_axis_tdata112_out),
        .O(\m_axis_tdata[22]_C_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF9FFF)) 
    \m_axis_tdata[22]_C_i_24 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[1]),
        .I3(balance[0]),
        .I4(balance[2]),
        .I5(m_axis_tdata19_out),
        .O(\m_axis_tdata[22]_C_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \m_axis_tdata[22]_C_i_25 
       (.I0(balance[8]),
        .I1(balance[9]),
        .I2(balance[6]),
        .I3(balance[7]),
        .O(\m_axis_tdata[22]_C_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0000140014000000)) 
    \m_axis_tdata[22]_C_i_26 
       (.I0(\m_axis_tdata[22]_C_i_27_n_0 ),
        .I1(balance[3]),
        .I2(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I3(balance[0]),
        .I4(s_axis_tdata[22]),
        .I5(s_axis_tdata[23]),
        .O(\m_axis_tdata[22]_C_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[22]_C_i_27 
       (.I0(balance[1]),
        .I1(balance[2]),
        .O(\m_axis_tdata[22]_C_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[22]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[15]),
        .I3(s_axis_tdata[14]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[22]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[22]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[18]),
        .I2(\m_axis_tdata[22]_C_i_11_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[16]),
        .O(\m_axis_tdata[22]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h08C000C000C0C080)) 
    \m_axis_tdata[22]_C_i_5 
       (.I0(\m_axis_tdata[22]_C_i_13_n_0 ),
        .I1(balance[0]),
        .I2(balance[1]),
        .I3(balance[2]),
        .I4(balance[3]),
        .I5(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(\m_axis_tdata[22]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[22]_C_i_6 
       (.I0(\m_axis_tdata[22]_C_i_15_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[22]_C_i_17_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[22]),
        .I5(\m_axis_tdata[22]_C_i_18_n_0 ),
        .O(\m_axis_tdata[22]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01000010)) 
    \m_axis_tdata[22]_C_i_7 
       (.I0(balance[1]),
        .I1(balance[0]),
        .I2(balance[2]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(sel0[1]));
  LUT6 #(
    .INIT(64'hF888000000000000)) 
    \m_axis_tdata[22]_C_i_8 
       (.I0(\m_axis_tdata[22]_C_i_19_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_28_n_0 ),
        .I2(\m_axis_tdata[22]_C_i_20_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_29_n_0 ),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_21_n_0 ),
        .O(\m_axis_tdata[22]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000000000008060E)) 
    \m_axis_tdata[22]_C_i_9 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(\m_axis_tdata[22]_C_i_22_n_0 ),
        .I3(m_axis_tdata121_out),
        .I4(m_axis_tdata118_out),
        .I5(s_axis_tdata[23]),
        .O(\m_axis_tdata[22]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\m_axis_tdata_reg[22]_P_n_0 ),
        .I1(\m_axis_tdata_reg[22]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[22]_C_n_0 ),
        .O(m_axis_tdata[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[23]_C_i_1 
       (.I0(\m_axis_tdata[23]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[23]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[23]_C_i_7_n_0 ),
        .O(\m_axis_tdata[23]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFF9)) 
    \m_axis_tdata[23]_C_i_10 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[1]),
        .I3(balance[2]),
        .I4(balance[0]),
        .O(\m_axis_tdata[23]_C_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_tdata[23]_C_i_11 
       (.I0(s_axis_tdata[18]),
        .I1(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I2(s_axis_tdata[19]),
        .I3(sel0[11]),
        .I4(m_axis_tdata19_out),
        .I5(\m_axis_tdata[23]_C_i_27_n_0 ),
        .O(\m_axis_tdata[23]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \m_axis_tdata[23]_C_i_12 
       (.I0(\m_axis_tdata[23]_C_i_28_n_0 ),
        .I1(s_axis_tdata[17]),
        .I2(\m_axis_tdata[23]_C_i_29_n_0 ),
        .I3(sel0[13]),
        .O(\m_axis_tdata[23]_C_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h4444777744744474)) 
    \m_axis_tdata[23]_C_i_13 
       (.I0(m_axis_tdata115_out),
        .I1(sel0[13]),
        .I2(sel0[11]),
        .I3(m_axis_tdata19_out),
        .I4(m_axis_tdata112_out),
        .I5(sel0[12]),
        .O(\m_axis_tdata[23]_C_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h007000E0)) 
    \m_axis_tdata[23]_C_i_14 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[0]),
        .I3(balance[1]),
        .I4(balance[2]),
        .O(\m_axis_tdata[23]_C_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[23]_C_i_15 
       (.I0(s_axis_tdata[21]),
        .I1(\m_axis_tdata[2]_C_i_8_n_0 ),
        .I2(s_axis_tdata[22]),
        .I3(\m_axis_tdata[21]_C_i_7_n_0 ),
        .O(\m_axis_tdata[23]_C_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028000000)) 
    \m_axis_tdata[23]_C_i_16 
       (.I0(m_axis_tdata16_out),
        .I1(balance[3]),
        .I2(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I3(balance[2]),
        .I4(balance[0]),
        .I5(balance[1]),
        .O(\m_axis_tdata[23]_C_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h4444777744744474)) 
    \m_axis_tdata[23]_C_i_17 
       (.I0(m_axis_tdata16_out),
        .I1(sel0[10]),
        .I2(sel0[8]),
        .I3(m_axis_tdata1),
        .I4(m_axis_tdata13_out),
        .I5(sel0[9]),
        .O(\m_axis_tdata[23]_C_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    \m_axis_tdata[23]_C_i_18 
       (.I0(balance[2]),
        .I1(balance[1]),
        .I2(balance[0]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(\m_axis_tdata[23]_C_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[23]_C_i_19 
       (.I0(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I1(s_axis_tdata[15]),
        .O(\m_axis_tdata[23]_C_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    \m_axis_tdata[23]_C_i_2 
       (.I0(\m_axis_tdata[23]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[23]),
        .O(\m_axis_tdata[23]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2800000000000000)) 
    \m_axis_tdata[23]_C_i_20 
       (.I0(m_axis_tdata118_out),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[3]),
        .I3(balance[0]),
        .I4(balance[1]),
        .I5(balance[2]),
        .O(\m_axis_tdata[23]_C_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0300050005000000)) 
    \m_axis_tdata[23]_C_i_21 
       (.I0(m_axis_tdata118_out),
        .I1(m_axis_tdata121_out),
        .I2(\m_axis_tdata[23]_C_i_42_n_0 ),
        .I3(balance[0]),
        .I4(balance[3]),
        .I5(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(\m_axis_tdata[23]_C_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h40000002)) 
    \m_axis_tdata[23]_C_i_22 
       (.I0(balance[0]),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[3]),
        .I3(balance[2]),
        .I4(balance[1]),
        .O(sel0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00007800)) 
    \m_axis_tdata[23]_C_i_23 
       (.I0(balance[3]),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[2]),
        .I3(balance[1]),
        .I4(balance[0]),
        .O(\m_axis_tdata[23]_C_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h55540000)) 
    \m_axis_tdata[23]_C_i_24 
       (.I0(\m_axis_tdata[23]_C_i_43_n_0 ),
        .I1(sel0[3]),
        .I2(sel0[4]),
        .I3(sel0[2]),
        .I4(s_axis_tdata[23]),
        .O(\m_axis_tdata[23]_C_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h80F0800080008000)) 
    \m_axis_tdata[23]_C_i_25 
       (.I0(\m_axis_tdata[22]_C_i_25_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_46_n_0 ),
        .I2(balance[0]),
        .I3(balance[1]),
        .I4(\m_axis_tdata[23]_C_i_47_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(sel0[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h80000001)) 
    \m_axis_tdata[23]_C_i_26 
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[22]),
        .I3(s_axis_tdata[23]),
        .I4(s_axis_tdata[20]),
        .O(m_axis_tdata19_out));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h1000E000)) 
    \m_axis_tdata[23]_C_i_27 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[1]),
        .I3(balance[0]),
        .I4(balance[2]),
        .O(\m_axis_tdata[23]_C_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_axis_tdata[23]_C_i_28 
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[22]),
        .I3(s_axis_tdata[23]),
        .I4(s_axis_tdata[20]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[23]_C_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_axis_tdata[23]_C_i_29 
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_tdata[21]),
        .I2(s_axis_tdata[22]),
        .I3(s_axis_tdata[23]),
        .I4(s_axis_tdata[20]),
        .I5(s_axis_tdata[18]),
        .O(\m_axis_tdata[23]_C_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[23]_C_i_3 
       (.I0(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_11_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I4(s_axis_tdata[23]),
        .I5(\m_axis_tdata[23]_C_i_13_n_0 ),
        .O(\m_axis_tdata[23]_C_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h20000080)) 
    \m_axis_tdata[23]_C_i_30 
       (.I0(balance[0]),
        .I1(balance[2]),
        .I2(balance[1]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(sel0[13]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[23]_C_i_31 
       (.I0(\m_axis_tdata[23]_C_i_29_n_0 ),
        .I1(s_axis_tdata[17]),
        .I2(\m_axis_tdata[23]_C_i_28_n_0 ),
        .O(m_axis_tdata115_out));
  LUT6 #(
    .INIT(64'h8000000000000001)) 
    \m_axis_tdata[23]_C_i_32 
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_tdata[20]),
        .I2(s_axis_tdata[23]),
        .I3(s_axis_tdata[22]),
        .I4(s_axis_tdata[21]),
        .I5(s_axis_tdata[19]),
        .O(m_axis_tdata112_out));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    \m_axis_tdata[23]_C_i_33 
       (.I0(balance[2]),
        .I1(balance[0]),
        .I2(balance[1]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(sel0[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8001)) 
    \m_axis_tdata[23]_C_i_34 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_tdata[23]),
        .I2(s_axis_tdata[22]),
        .I3(s_axis_tdata[21]),
        .O(m_axis_tdata16_out));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    \m_axis_tdata[23]_C_i_35 
       (.I0(balance[1]),
        .I1(balance[0]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I4(balance[3]),
        .O(sel0[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000028)) 
    \m_axis_tdata[23]_C_i_36 
       (.I0(balance[0]),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[3]),
        .I3(balance[1]),
        .I4(balance[2]),
        .O(sel0[8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \m_axis_tdata[23]_C_i_37 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_tdata[22]),
        .O(m_axis_tdata1));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \m_axis_tdata[23]_C_i_38 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_tdata[22]),
        .I2(s_axis_tdata[23]),
        .O(m_axis_tdata13_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h02000020)) 
    \m_axis_tdata[23]_C_i_39 
       (.I0(balance[0]),
        .I1(balance[1]),
        .I2(balance[2]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(sel0[9]));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[23]_C_i_4 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_15_n_0 ),
        .I2(s_axis_tdata[20]),
        .I3(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I4(s_axis_tdata[23]),
        .I5(\m_axis_tdata[23]_C_i_17_n_0 ),
        .O(\m_axis_tdata[23]_C_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hA00C)) 
    \m_axis_tdata[23]_C_i_40 
       (.I0(\m_axis_tdata[23]_C_i_29_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_28_n_0 ),
        .I2(s_axis_tdata[16]),
        .I3(s_axis_tdata[17]),
        .O(m_axis_tdata118_out));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hA000000C)) 
    \m_axis_tdata[23]_C_i_41 
       (.I0(\m_axis_tdata[23]_C_i_29_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_28_n_0 ),
        .I2(s_axis_tdata[17]),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[15]),
        .O(m_axis_tdata121_out));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \m_axis_tdata[23]_C_i_42 
       (.I0(balance[1]),
        .I1(balance[2]),
        .O(\m_axis_tdata[23]_C_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0001A888)) 
    \m_axis_tdata[23]_C_i_43 
       (.I0(balance[1]),
        .I1(balance[2]),
        .I2(balance[3]),
        .I3(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I4(balance[0]),
        .O(\m_axis_tdata[23]_C_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h080808080F000000)) 
    \m_axis_tdata[23]_C_i_44 
       (.I0(\m_axis_tdata[22]_C_i_25_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_46_n_0 ),
        .I2(balance[0]),
        .I3(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_47_n_0 ),
        .I5(balance[1]),
        .O(sel0[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00101000)) 
    \m_axis_tdata[23]_C_i_45 
       (.I0(balance[0]),
        .I1(balance[1]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I4(balance[3]),
        .O(sel0[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \m_axis_tdata[23]_C_i_46 
       (.I0(balance[2]),
        .I1(balance[3]),
        .I2(balance[4]),
        .I3(balance[5]),
        .O(\m_axis_tdata[23]_C_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[23]_C_i_47 
       (.I0(balance[3]),
        .I1(balance[2]),
        .O(\m_axis_tdata[23]_C_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[23]_C_i_5 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_19_n_0 ),
        .I2(s_axis_tdata[16]),
        .I3(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I4(s_axis_tdata[23]),
        .I5(\m_axis_tdata[23]_C_i_21_n_0 ),
        .O(\m_axis_tdata[23]_C_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \m_axis_tdata[23]_C_i_6 
       (.I0(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I2(s_axis_tdata[23]),
        .O(\m_axis_tdata[23]_C_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00FF0040)) 
    \m_axis_tdata[23]_C_i_7 
       (.I0(sel0[7]),
        .I1(s_axis_tdata[23]),
        .I2(\m_axis_tdata[23]_C_i_23_n_0 ),
        .I3(\m_axis_tdata[7]_C_i_6_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_24_n_0 ),
        .O(\m_axis_tdata[23]_C_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00018000)) 
    \m_axis_tdata[23]_C_i_8 
       (.I0(balance[1]),
        .I1(balance[2]),
        .I2(balance[3]),
        .I3(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I4(balance[0]),
        .O(\m_axis_tdata[23]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h010101113101011D)) 
    \m_axis_tdata[23]_C_i_9 
       (.I0(balance[0]),
        .I1(balance[1]),
        .I2(balance[2]),
        .I3(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I4(balance[3]),
        .I5(\m_axis_tdata[22]_C_i_13_n_0 ),
        .O(\m_axis_tdata[23]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\m_axis_tdata_reg[23]_P_n_0 ),
        .I1(\m_axis_tdata_reg[23]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[23]_C_n_0 ),
        .O(m_axis_tdata[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[2]_C_i_1 
       (.I0(\m_axis_tdata[2]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[2]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[2]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[2]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[2]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[3]_C_i_7_n_0 ),
        .O(\m_axis_tdata[2]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[2]_C_i_2 
       (.I0(\m_axis_tdata[23]_C_i_8_n_0 ),
        .I1(s_axis_tdata[2]),
        .O(\m_axis_tdata[2]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[2]_C_i_3 
       (.I0(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I1(\m_axis_tdata[2]_C_i_7_n_0 ),
        .I2(s_axis_tdata[6]),
        .I3(\m_axis_tdata[16]_C_i_11_n_0 ),
        .I4(s_axis_tdata[7]),
        .I5(\m_axis_tdata[16]_C_i_12_n_0 ),
        .O(\m_axis_tdata[2]_C_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[2]_C_i_4 
       (.I0(s_axis_tdata[3]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[4]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[2]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[2]_C_i_5 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(\m_axis_tdata[2]_C_i_8_n_0 ),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[1]),
        .I4(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_16_n_0 ),
        .O(\m_axis_tdata[2]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    \m_axis_tdata[2]_C_i_6 
       (.I0(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I1(sel0[1]),
        .I2(s_axis_tdata[8]),
        .I3(s_axis_tdata[9]),
        .I4(s_axis_tdata[2]),
        .I5(sel0[0]),
        .O(\m_axis_tdata[2]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[2]_C_i_7 
       (.I0(sel0[4]),
        .I1(s_axis_tdata[5]),
        .O(\m_axis_tdata[2]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000028000000000)) 
    \m_axis_tdata[2]_C_i_8 
       (.I0(m_axis_tdata13_out),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[3]),
        .I3(balance[2]),
        .I4(balance[1]),
        .I5(balance[0]),
        .O(\m_axis_tdata[2]_C_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\m_axis_tdata_reg[2]_P_n_0 ),
        .I1(\m_axis_tdata_reg[2]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[2]_C_n_0 ),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[3]_C_i_1 
       (.I0(\m_axis_tdata[3]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[3]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[3]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[3]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[3]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[3]_C_i_7_n_0 ),
        .O(\m_axis_tdata[3]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF8000001E000000)) 
    \m_axis_tdata[3]_C_i_10 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[2]),
        .I3(balance[1]),
        .I4(balance[0]),
        .I5(\m_axis_tdata[22]_C_i_13_n_0 ),
        .O(\m_axis_tdata[3]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[3]_C_i_2 
       (.I0(\m_axis_tdata[23]_C_i_8_n_0 ),
        .I1(s_axis_tdata[3]),
        .O(\m_axis_tdata[3]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[3]_C_i_3 
       (.I0(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I1(\m_axis_tdata[3]_C_i_8_n_0 ),
        .I2(s_axis_tdata[7]),
        .I3(\m_axis_tdata[16]_C_i_11_n_0 ),
        .I4(s_axis_tdata[8]),
        .I5(\m_axis_tdata[16]_C_i_12_n_0 ),
        .O(\m_axis_tdata[3]_C_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[3]_C_i_4 
       (.I0(s_axis_tdata[4]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[5]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[3]_C_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \m_axis_tdata[3]_C_i_5 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(s_axis_tdata[2]),
        .I2(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I4(\m_axis_tdata[3]_C_i_9_n_0 ),
        .O(\m_axis_tdata[3]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    \m_axis_tdata[3]_C_i_6 
       (.I0(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I1(sel0[1]),
        .I2(s_axis_tdata[9]),
        .I3(s_axis_tdata[10]),
        .I4(s_axis_tdata[3]),
        .I5(sel0[0]),
        .O(\m_axis_tdata[3]_C_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8880000)) 
    \m_axis_tdata[3]_C_i_7 
       (.I0(\m_axis_tdata[22]_C_i_9_n_0 ),
        .I1(\m_axis_tdata[7]_C_i_12_n_0 ),
        .I2(\m_axis_tdata[3]_C_i_10_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[7]_C_i_6_n_0 ),
        .O(\m_axis_tdata[3]_C_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[3]_C_i_8 
       (.I0(sel0[4]),
        .I1(s_axis_tdata[6]),
        .O(\m_axis_tdata[3]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[3]_C_i_9 
       (.I0(s_axis_tdata[0]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[1]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[3]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\m_axis_tdata_reg[3]_P_n_0 ),
        .I1(\m_axis_tdata_reg[3]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[3]_C_n_0 ),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[4]_C_i_1 
       (.I0(\m_axis_tdata[4]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[4]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[4]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[4]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[4]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[4]_C_i_7_n_0 ),
        .O(\m_axis_tdata[4]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[4]_C_i_2 
       (.I0(s_axis_tdata[5]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[6]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[4]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \m_axis_tdata[4]_C_i_3 
       (.I0(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I2(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I3(s_axis_tdata[0]),
        .O(\m_axis_tdata[4]_C_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \m_axis_tdata[4]_C_i_4 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(s_axis_tdata[3]),
        .I2(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I4(\m_axis_tdata[4]_C_i_8_n_0 ),
        .O(\m_axis_tdata[4]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[4]_C_i_5 
       (.I0(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I1(\m_axis_tdata[4]_C_i_9_n_0 ),
        .I2(s_axis_tdata[8]),
        .I3(\m_axis_tdata[16]_C_i_11_n_0 ),
        .I4(s_axis_tdata[9]),
        .I5(\m_axis_tdata[16]_C_i_12_n_0 ),
        .O(\m_axis_tdata[4]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    \m_axis_tdata[4]_C_i_6 
       (.I0(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I1(sel0[1]),
        .I2(s_axis_tdata[10]),
        .I3(s_axis_tdata[11]),
        .I4(s_axis_tdata[4]),
        .I5(sel0[0]),
        .O(\m_axis_tdata[4]_C_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \m_axis_tdata[4]_C_i_7 
       (.I0(\m_axis_tdata[7]_C_i_6_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_9_n_0 ),
        .I2(\m_axis_tdata[7]_C_i_12_n_0 ),
        .I3(s_axis_tdata[4]),
        .I4(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[4]_C_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[4]_C_i_8 
       (.I0(s_axis_tdata[1]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[2]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[4]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[4]_C_i_9 
       (.I0(sel0[4]),
        .I1(s_axis_tdata[7]),
        .O(\m_axis_tdata[4]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\m_axis_tdata_reg[4]_P_n_0 ),
        .I1(\m_axis_tdata_reg[4]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[4]_C_n_0 ),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[5]_C_i_1 
       (.I0(\m_axis_tdata[5]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[5]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[5]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[5]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[5]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[5]_C_i_7_n_0 ),
        .O(\m_axis_tdata[5]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[5]_C_i_10 
       (.I0(sel0[4]),
        .I1(s_axis_tdata[8]),
        .O(\m_axis_tdata[5]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00010100)) 
    \m_axis_tdata[5]_C_i_11 
       (.I0(balance[0]),
        .I1(balance[2]),
        .I2(balance[1]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(sel0[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[5]_C_i_2 
       (.I0(s_axis_tdata[6]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[7]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[5]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[5]_C_i_3 
       (.I0(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I1(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I2(s_axis_tdata[0]),
        .I3(s_axis_tdata[1]),
        .I4(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_12_n_0 ),
        .O(\m_axis_tdata[5]_C_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \m_axis_tdata[5]_C_i_4 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(s_axis_tdata[4]),
        .I2(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I4(\m_axis_tdata[5]_C_i_9_n_0 ),
        .O(\m_axis_tdata[5]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    \m_axis_tdata[5]_C_i_5 
       (.I0(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I1(\m_axis_tdata[5]_C_i_10_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(\m_axis_tdata[16]_C_i_11_n_0 ),
        .I4(s_axis_tdata[10]),
        .I5(\m_axis_tdata[16]_C_i_12_n_0 ),
        .O(\m_axis_tdata[5]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA280A280A2A28080)) 
    \m_axis_tdata[5]_C_i_6 
       (.I0(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I1(sel0[1]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[12]),
        .I4(s_axis_tdata[5]),
        .I5(sel0[0]),
        .O(\m_axis_tdata[5]_C_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \m_axis_tdata[5]_C_i_7 
       (.I0(\m_axis_tdata[7]_C_i_6_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_9_n_0 ),
        .I2(\m_axis_tdata[7]_C_i_12_n_0 ),
        .I3(s_axis_tdata[5]),
        .I4(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[5]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000028000000)) 
    \m_axis_tdata[5]_C_i_8 
       (.I0(m_axis_tdata112_out),
        .I1(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I2(balance[3]),
        .I3(balance[1]),
        .I4(balance[0]),
        .I5(balance[2]),
        .O(\m_axis_tdata[5]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[5]_C_i_9 
       (.I0(s_axis_tdata[2]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[3]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[5]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\m_axis_tdata_reg[5]_P_n_0 ),
        .I1(\m_axis_tdata_reg[5]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[5]_C_n_0 ),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \m_axis_tdata[6]_C_i_1 
       (.I0(\m_axis_tdata[6]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[6]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I3(\m_axis_tdata[6]_C_i_4_n_0 ),
        .I4(\m_axis_tdata[6]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[6]_C_i_6_n_0 ),
        .O(\m_axis_tdata[6]_C_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222FFFFF222F222F)) 
    \m_axis_tdata[6]_C_i_10 
       (.I0(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I1(s_axis_tdata[6]),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[13]),
        .I4(s_axis_tdata[12]),
        .I5(sel0[1]),
        .O(\m_axis_tdata[6]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[6]_C_i_2 
       (.I0(s_axis_tdata[7]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[8]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[6]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[6]_C_i_3 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[2]),
        .I2(\m_axis_tdata[6]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[0]),
        .O(\m_axis_tdata[6]_C_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA80)) 
    \m_axis_tdata[6]_C_i_4 
       (.I0(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I1(s_axis_tdata[5]),
        .I2(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I4(\m_axis_tdata[6]_C_i_8_n_0 ),
        .O(\m_axis_tdata[6]_C_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \m_axis_tdata[6]_C_i_5 
       (.I0(\m_axis_tdata[6]_C_i_9_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[6]_C_i_10_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[6]_C_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF808080)) 
    \m_axis_tdata[6]_C_i_6 
       (.I0(\m_axis_tdata[7]_C_i_6_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_9_n_0 ),
        .I2(\m_axis_tdata[7]_C_i_12_n_0 ),
        .I3(s_axis_tdata[6]),
        .I4(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[6]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[6]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[1]),
        .O(\m_axis_tdata[6]_C_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[6]_C_i_8 
       (.I0(s_axis_tdata[3]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[4]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[6]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[6]_C_i_9 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[11]),
        .I3(s_axis_tdata[10]),
        .I4(s_axis_tdata[9]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[6]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\m_axis_tdata_reg[6]_P_n_0 ),
        .I1(\m_axis_tdata_reg[6]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[6]_C_n_0 ),
        .O(m_axis_tdata[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEEEEE)) 
    \m_axis_tdata[7]_C_i_1 
       (.I0(\m_axis_tdata[7]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[7]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[7]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[7]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[7]_C_i_6_n_0 ),
        .I5(\m_axis_tdata[7]_C_i_7_n_0 ),
        .O(\m_axis_tdata[7]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[7]_C_i_10 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[6]),
        .O(\m_axis_tdata[7]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h02222220)) 
    \m_axis_tdata[7]_C_i_11 
       (.I0(balance[0]),
        .I1(balance[1]),
        .I2(balance[2]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(\m_axis_tdata[7]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hE0000000)) 
    \m_axis_tdata[7]_C_i_12 
       (.I0(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I1(balance[3]),
        .I2(balance[0]),
        .I3(balance[1]),
        .I4(balance[2]),
        .O(\m_axis_tdata[7]_C_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0020200000000000)) 
    \m_axis_tdata[7]_C_i_13 
       (.I0(s_axis_tdata[0]),
        .I1(\m_axis_tdata[23]_C_i_42_n_0 ),
        .I2(balance[0]),
        .I3(balance[3]),
        .I4(\m_axis_tdata[22]_C_i_14_n_0 ),
        .I5(m_axis_tdata118_out),
        .O(\m_axis_tdata[7]_C_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h88888888F8888888)) 
    \m_axis_tdata[7]_C_i_14 
       (.I0(s_axis_tdata[2]),
        .I1(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I2(s_axis_tdata[3]),
        .I3(sel0[11]),
        .I4(m_axis_tdata19_out),
        .I5(\m_axis_tdata[23]_C_i_27_n_0 ),
        .O(\m_axis_tdata[7]_C_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h380030003000E000)) 
    \m_axis_tdata[7]_C_i_15 
       (.I0(\m_axis_tdata[22]_C_i_13_n_0 ),
        .I1(balance[2]),
        .I2(balance[1]),
        .I3(balance[0]),
        .I4(balance[3]),
        .I5(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(\m_axis_tdata[7]_C_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    \m_axis_tdata[7]_C_i_2 
       (.I0(\m_axis_tdata[7]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I3(sel0[1]),
        .I4(s_axis_tdata[13]),
        .O(\m_axis_tdata[7]_C_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[7]_C_i_3 
       (.I0(s_axis_tdata[8]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[9]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[7]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFC0000)) 
    \m_axis_tdata[7]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_9_n_0 ),
        .I1(\m_axis_tdata[7]_C_i_9_n_0 ),
        .I2(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I3(\m_axis_tdata[7]_C_i_10_n_0 ),
        .I4(\m_axis_tdata[7]_C_i_11_n_0 ),
        .I5(\m_axis_tdata[7]_C_i_12_n_0 ),
        .O(\m_axis_tdata[7]_C_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEAAAAAAAA)) 
    \m_axis_tdata[7]_C_i_5 
       (.I0(\m_axis_tdata[7]_C_i_13_n_0 ),
        .I1(\m_axis_tdata[7]_C_i_14_n_0 ),
        .I2(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I4(s_axis_tdata[1]),
        .I5(\m_axis_tdata[7]_C_i_15_n_0 ),
        .O(\m_axis_tdata[7]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFB00FF00FF00EC00)) 
    \m_axis_tdata[7]_C_i_6 
       (.I0(\m_axis_tdata[22]_C_i_13_n_0 ),
        .I1(balance[2]),
        .I2(balance[1]),
        .I3(balance[0]),
        .I4(balance[3]),
        .I5(\m_axis_tdata[22]_C_i_14_n_0 ),
        .O(\m_axis_tdata[7]_C_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hF2F0F2F0F2002200)) 
    \m_axis_tdata[7]_C_i_7 
       (.I0(s_axis_tdata[14]),
        .I1(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I2(s_axis_tdata[7]),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .I4(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[7]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[7]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[12]),
        .I3(s_axis_tdata[11]),
        .I4(s_axis_tdata[10]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[7]_C_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[7]_C_i_9 
       (.I0(s_axis_tdata[4]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[5]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[7]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\m_axis_tdata_reg[7]_P_n_0 ),
        .I1(\m_axis_tdata_reg[7]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[7]_C_n_0 ),
        .O(m_axis_tdata[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[8]_C_i_1 
       (.I0(\m_axis_tdata[8]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[8]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[8]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[8]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[8]_C_i_6_n_0 ),
        .O(\m_axis_tdata[8]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[8]_C_i_10 
       (.I0(s_axis_tdata[5]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[6]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[8]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[8]_C_i_11 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[7]),
        .O(\m_axis_tdata[8]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[8]_C_i_2 
       (.I0(s_axis_tdata[9]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[10]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[8]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[8]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[1]),
        .I3(s_axis_tdata[0]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[8]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[8]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[4]),
        .I2(\m_axis_tdata[8]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[2]),
        .O(\m_axis_tdata[8]_C_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \m_axis_tdata[8]_C_i_5 
       (.I0(\m_axis_tdata[8]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[8]_C_i_9_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[8]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[8]_C_i_6 
       (.I0(\m_axis_tdata[8]_C_i_10_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[8]_C_i_11_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[8]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[8]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[8]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[3]),
        .O(\m_axis_tdata[8]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[8]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[13]),
        .I3(s_axis_tdata[12]),
        .I4(s_axis_tdata[11]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[8]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h222FFFFF222F222F)) 
    \m_axis_tdata[8]_C_i_9 
       (.I0(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I1(s_axis_tdata[8]),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[15]),
        .I4(s_axis_tdata[14]),
        .I5(sel0[1]),
        .O(\m_axis_tdata[8]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\m_axis_tdata_reg[8]_P_n_0 ),
        .I1(\m_axis_tdata_reg[8]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[8]_C_n_0 ),
        .O(m_axis_tdata[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \m_axis_tdata[9]_C_i_1 
       (.I0(\m_axis_tdata[9]_C_i_2_n_0 ),
        .I1(\m_axis_tdata[9]_C_i_3_n_0 ),
        .I2(\m_axis_tdata[9]_C_i_4_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_5_n_0 ),
        .I4(\m_axis_tdata[9]_C_i_5_n_0 ),
        .I5(\m_axis_tdata[9]_C_i_6_n_0 ),
        .O(\m_axis_tdata[9]_C_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[9]_C_i_10 
       (.I0(s_axis_tdata[6]),
        .I1(\m_axis_tdata[23]_C_i_16_n_0 ),
        .I2(s_axis_tdata[7]),
        .I3(\m_axis_tdata[2]_C_i_8_n_0 ),
        .O(\m_axis_tdata[9]_C_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[9]_C_i_11 
       (.I0(\m_axis_tdata[21]_C_i_7_n_0 ),
        .I1(s_axis_tdata[8]),
        .O(\m_axis_tdata[9]_C_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \m_axis_tdata[9]_C_i_2 
       (.I0(s_axis_tdata[10]),
        .I1(\m_axis_tdata[19]_C_i_8_n_0 ),
        .I2(s_axis_tdata[11]),
        .I3(\m_axis_tdata[19]_C_i_9_n_0 ),
        .O(\m_axis_tdata[9]_C_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAA808080)) 
    \m_axis_tdata[9]_C_i_3 
       (.I0(\m_axis_tdata[23]_C_i_18_n_0 ),
        .I1(\m_axis_tdata[23]_C_i_20_n_0 ),
        .I2(s_axis_tdata[2]),
        .I3(s_axis_tdata[1]),
        .I4(\m_axis_tdata[22]_C_i_8_n_0 ),
        .I5(\m_axis_tdata[22]_C_i_9_n_0 ),
        .O(\m_axis_tdata[9]_C_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF8FFF8FFF8)) 
    \m_axis_tdata[9]_C_i_4 
       (.I0(\m_axis_tdata[22]_C_i_10_n_0 ),
        .I1(s_axis_tdata[5]),
        .I2(\m_axis_tdata[9]_C_i_7_n_0 ),
        .I3(\m_axis_tdata[22]_C_i_12_n_0 ),
        .I4(\m_axis_tdata[23]_C_i_12_n_0 ),
        .I5(s_axis_tdata[3]),
        .O(\m_axis_tdata[9]_C_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8F88)) 
    \m_axis_tdata[9]_C_i_5 
       (.I0(\m_axis_tdata[9]_C_i_8_n_0 ),
        .I1(\m_axis_tdata[19]_C_i_11_n_0 ),
        .I2(\m_axis_tdata[9]_C_i_9_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_9_n_0 ),
        .O(\m_axis_tdata[9]_C_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFE00FE00FE00)) 
    \m_axis_tdata[9]_C_i_6 
       (.I0(\m_axis_tdata[9]_C_i_10_n_0 ),
        .I1(\m_axis_tdata[22]_C_i_16_n_0 ),
        .I2(\m_axis_tdata[9]_C_i_11_n_0 ),
        .I3(\m_axis_tdata[23]_C_i_14_n_0 ),
        .I4(s_axis_tdata[9]),
        .I5(\m_axis_tdata[23]_C_i_8_n_0 ),
        .O(\m_axis_tdata[9]_C_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tdata[9]_C_i_7 
       (.I0(\m_axis_tdata[5]_C_i_8_n_0 ),
        .I1(s_axis_tdata[4]),
        .O(\m_axis_tdata[9]_C_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000EA40EA40)) 
    \m_axis_tdata[9]_C_i_8 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(s_axis_tdata[14]),
        .I3(s_axis_tdata[13]),
        .I4(s_axis_tdata[12]),
        .I5(sel0[4]),
        .O(\m_axis_tdata[9]_C_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h222FFFFF222F222F)) 
    \m_axis_tdata[9]_C_i_9 
       (.I0(\m_axis_tdata[19]_C_i_12_n_0 ),
        .I1(s_axis_tdata[9]),
        .I2(\m_axis_tdata[23]_C_i_10_n_0 ),
        .I3(s_axis_tdata[16]),
        .I4(s_axis_tdata[15]),
        .I5(sel0[1]),
        .O(\m_axis_tdata[9]_C_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\m_axis_tdata_reg[9]_P_n_0 ),
        .I1(\m_axis_tdata_reg[9]_LDC_n_0 ),
        .I2(\m_axis_tdata_reg[9]_C_n_0 ),
        .O(m_axis_tdata[9]));
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
        .CE(1'b1),
        .D(\m_axis_tdata[0]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[10]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[11]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[12]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[13]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[14]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[15]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[16]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[17]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[18]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[19]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[1]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[20]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[21]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[22]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[23]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[2]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[3]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[4]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[5]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[6]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[7]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[8]_C_i_1_n_0 ),
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
        .CE(1'b1),
        .D(\m_axis_tdata[9]_C_i_1_n_0 ),
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
