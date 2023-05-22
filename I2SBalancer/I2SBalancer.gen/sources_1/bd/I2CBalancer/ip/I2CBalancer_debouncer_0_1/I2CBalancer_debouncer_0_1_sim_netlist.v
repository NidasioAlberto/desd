// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Mon May 22 16:54:12 2023
// Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
//               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_debouncer_0_1/I2CBalancer_debouncer_0_1_sim_netlist.v}
// Design      : I2CBalancer_debouncer_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2CBalancer_debouncer_0_1,debouncer,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "debouncer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module I2CBalancer_debouncer_0_1
   (clk,
    input_signal,
    reset,
    debounced);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  input input_signal;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input reset;
  output debounced;

  wire clk;
  wire debounced;
  wire input_signal;
  wire reset;

  I2CBalancer_debouncer_0_1_debouncer U0
       (.clk(clk),
        .debounced(debounced),
        .input_signal(input_signal),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "debouncer" *) 
module I2CBalancer_debouncer_0_1_debouncer
   (debounced,
    input_signal,
    clk,
    reset);
  output debounced;
  input input_signal;
  input clk;
  input reset;

  wire \/i__n_0 ;
  wire clk;
  wire debounced;
  wire debounced__0_n_0;
  wire debounced_i_1_n_0;
  wire input_signal;
  wire \last_inputs_reg_n_0_[0] ;
  wire \last_inputs_reg_n_0_[1] ;
  wire \last_inputs_reg_n_0_[2] ;
  wire \last_inputs_reg_n_0_[3] ;
  wire \last_inputs_reg_n_0_[4] ;
  wire \last_inputs_reg_n_0_[5] ;
  wire reset;

  LUT6 #(
    .INIT(64'h8000000000000001)) 
    \/i_ 
       (.I0(\last_inputs_reg_n_0_[0] ),
        .I1(\last_inputs_reg_n_0_[5] ),
        .I2(\last_inputs_reg_n_0_[4] ),
        .I3(\last_inputs_reg_n_0_[3] ),
        .I4(\last_inputs_reg_n_0_[2] ),
        .I5(\last_inputs_reg_n_0_[1] ),
        .O(\/i__n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    debounced__0
       (.I0(\last_inputs_reg_n_0_[0] ),
        .I1(\last_inputs_reg_n_0_[1] ),
        .I2(\last_inputs_reg_n_0_[4] ),
        .I3(\last_inputs_reg_n_0_[5] ),
        .I4(\last_inputs_reg_n_0_[2] ),
        .I5(\last_inputs_reg_n_0_[3] ),
        .O(debounced__0_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    debounced_i_1
       (.I0(debounced__0_n_0),
        .I1(\/i__n_0 ),
        .I2(debounced),
        .O(debounced_i_1_n_0));
  FDCE debounced_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(debounced_i_1_n_0),
        .Q(debounced));
  FDCE \last_inputs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(input_signal),
        .Q(\last_inputs_reg_n_0_[0] ));
  FDCE \last_inputs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\last_inputs_reg_n_0_[0] ),
        .Q(\last_inputs_reg_n_0_[1] ));
  FDCE \last_inputs_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\last_inputs_reg_n_0_[1] ),
        .Q(\last_inputs_reg_n_0_[2] ));
  FDCE \last_inputs_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\last_inputs_reg_n_0_[2] ),
        .Q(\last_inputs_reg_n_0_[3] ));
  FDCE \last_inputs_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\last_inputs_reg_n_0_[3] ),
        .Q(\last_inputs_reg_n_0_[4] ));
  FDCE \last_inputs_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\last_inputs_reg_n_0_[4] ),
        .Q(\last_inputs_reg_n_0_[5] ));
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
