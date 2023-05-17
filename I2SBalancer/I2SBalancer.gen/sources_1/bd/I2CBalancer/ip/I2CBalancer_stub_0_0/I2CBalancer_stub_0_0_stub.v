// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed May 17 23:35:34 2023
// Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/emili/OneDrive - Politecnico di
//               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_stub_0_0/I2CBalancer_stub_0_0_stub.v}
// Design      : I2CBalancer_stub_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "stub,Vivado 2020.2" *)
module I2CBalancer_stub_0_0(en, r, g, b, mute_enable)
/* synthesis syn_black_box black_box_pad_pin="en,r[7:0],g[7:0],b[7:0],mute_enable" */;
  input en;
  output [7:0]r;
  output [7:0]g;
  output [7:0]b;
  output mute_enable;
endmodule
