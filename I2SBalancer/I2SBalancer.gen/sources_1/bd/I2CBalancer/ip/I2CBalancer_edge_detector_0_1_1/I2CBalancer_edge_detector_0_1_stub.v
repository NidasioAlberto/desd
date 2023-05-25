// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri May 26 01:07:34 2023
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_edge_detector_0_1_1/I2CBalancer_edge_detector_0_1_stub.v
// Design      : I2CBalancer_edge_detector_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "edge_detector,Vivado 2020.2" *)
module I2CBalancer_edge_detector_0_1(clk, input_signal, reset, output_signal)
/* synthesis syn_black_box black_box_pad_pin="clk,input_signal,reset,output_signal" */;
  input clk;
  input input_signal;
  input reset;
  output output_signal;
endmodule
