// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Apr 19 17:27:11 2023
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/alberton/Desktop/desd/SpaceShooterJoystick/SpaceShooterJoystick.gen/sources_1/bd/design_1/ip/design_1_axi4stream_spi_master_0_0/design_1_axi4stream_spi_master_0_0_stub.v
// Design      : design_1_axi4stream_spi_master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ipi_axis_lw_spi_master,Vivado 2020.2" *)
module design_1_axi4stream_spi_master_0_0(aclk, aresetn, s_axis_tvalid, s_axis_tdata, 
  s_axis_tready, m_axis_tvalid, m_axis_tdata, cs_i, cs_o, cs_t, sclk_i, sclk_o, sclk_t, mosi_i, mosi_o, 
  mosi_t, miso_i, miso_o, miso_t)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid,s_axis_tdata[7:0],s_axis_tready,m_axis_tvalid,m_axis_tdata[7:0],cs_i,cs_o,cs_t,sclk_i,sclk_o,sclk_t,mosi_i,mosi_o,mosi_t,miso_i,miso_o,miso_t" */;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  input [7:0]s_axis_tdata;
  output s_axis_tready;
  output m_axis_tvalid;
  output [7:0]m_axis_tdata;
  input cs_i;
  output cs_o;
  output cs_t;
  input sclk_i;
  output sclk_o;
  output sclk_t;
  input mosi_i;
  output mosi_o;
  output mosi_t;
  input miso_i;
  output miso_o;
  output miso_t;
endmodule
