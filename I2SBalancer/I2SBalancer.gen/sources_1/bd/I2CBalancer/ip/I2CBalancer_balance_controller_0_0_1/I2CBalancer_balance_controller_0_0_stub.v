// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri May 26 01:28:31 2023
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_balance_controller_0_0_1/I2CBalancer_balance_controller_0_0_stub.v
// Design      : I2CBalancer_balance_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "balance_controller,Vivado 2020.2" *)
module I2CBalancer_balance_controller_0_0(m_axis_tvalid, m_axis_tlast, m_axis_tdata, 
  m_axis_tready, s_axis_tvalid, s_axis_tlast, s_axis_tdata, s_axis_tready, aclk, aresetn, 
  balance)
/* synthesis syn_black_box black_box_pad_pin="m_axis_tvalid,m_axis_tlast,m_axis_tdata[23:0],m_axis_tready,s_axis_tvalid,s_axis_tlast,s_axis_tdata[23:0],s_axis_tready,aclk,aresetn,balance[9:0]" */;
  output m_axis_tvalid;
  output m_axis_tlast;
  output [23:0]m_axis_tdata;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_axis_tlast;
  input [23:0]s_axis_tdata;
  output s_axis_tready;
  input aclk;
  input aresetn;
  input [9:0]balance;
endmodule
