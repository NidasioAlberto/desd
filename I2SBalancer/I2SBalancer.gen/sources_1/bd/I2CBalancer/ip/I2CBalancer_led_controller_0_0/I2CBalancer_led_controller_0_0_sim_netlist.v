// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 22 16:54:11 2023
// Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
//               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_led_controller_0_0/I2CBalancer_led_controller_0_0_sim_netlist.v}
// Design      : I2CBalancer_led_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2CBalancer_led_controller_0_0,led_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "led_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module I2CBalancer_led_controller_0_0
   (mute_enable,
    filter_enable,
    r,
    g,
    b);
  input mute_enable;
  input filter_enable;
  output [7:0]r;
  output [7:0]g;
  output [7:0]b;

  wire [7:7]\^b ;
  wire filter_enable;
  wire [7:7]\^g ;
  wire mute_enable;

  assign b[7] = \^b [7];
  assign b[6] = \^b [7];
  assign b[5] = \^b [7];
  assign b[4] = \^b [7];
  assign b[3] = \^b [7];
  assign b[2] = \^b [7];
  assign b[1] = \^b [7];
  assign b[0] = \^b [7];
  assign g[7] = \^g [7];
  assign g[6] = \^g [7];
  assign g[5] = \^g [7];
  assign g[4] = \^g [7];
  assign g[3] = \^g [7];
  assign g[2] = \^g [7];
  assign g[1] = \^g [7];
  assign g[0] = \^g [7];
  assign r[7] = mute_enable;
  assign r[6] = mute_enable;
  assign r[5] = mute_enable;
  assign r[4] = mute_enable;
  assign r[3] = mute_enable;
  assign r[2] = mute_enable;
  assign r[1] = mute_enable;
  assign r[0] = mute_enable;
  LUT2 #(
    .INIT(4'h2)) 
    \b[0]_INST_0 
       (.I0(filter_enable),
        .I1(mute_enable),
        .O(\^b ));
  LUT2 #(
    .INIT(4'h1)) 
    \g[0]_INST_0 
       (.I0(filter_enable),
        .I1(mute_enable),
        .O(\^g ));
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
