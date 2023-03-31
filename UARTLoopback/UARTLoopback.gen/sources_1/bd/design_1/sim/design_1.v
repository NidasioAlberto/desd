//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Fri Mar 31 20:55:22 2023
//Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (reset,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN design_1_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *) input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *) output usb_uart_txd;

  wire [7:0]axi4stream_uart_0_M00_AXIS_RX_TDATA;
  wire axi4stream_uart_0_M00_AXIS_RX_TREADY;
  wire axi4stream_uart_0_M00_AXIS_RX_TVALID;
  wire axi4stream_uart_0_UART_RxD;
  wire axi4stream_uart_0_UART_TxD;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  wire reset_1;
  wire sys_clock_1;

  assign axi4stream_uart_0_UART_RxD = usb_uart_rxd;
  assign reset_1 = reset;
  assign sys_clock_1 = sys_clock;
  assign usb_uart_txd = axi4stream_uart_0_UART_TxD;
  design_1_axi4stream_uart_0_0 axi4stream_uart_0
       (.UART_RX(axi4stream_uart_0_UART_RxD),
        .UART_TX(axi4stream_uart_0_UART_TxD),
        .clk_uart(clk_wiz_0_clk_out1),
        .m00_axis_rx_aclk(clk_wiz_0_clk_out1),
        .m00_axis_rx_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m00_axis_rx_tdata(axi4stream_uart_0_M00_AXIS_RX_TDATA),
        .m00_axis_rx_tready(axi4stream_uart_0_M00_AXIS_RX_TREADY),
        .m00_axis_rx_tvalid(axi4stream_uart_0_M00_AXIS_RX_TVALID),
        .rst(proc_sys_reset_0_peripheral_reset),
        .s00_axis_tx_aclk(clk_wiz_0_clk_out1),
        .s00_axis_tx_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s00_axis_tx_tdata(axi4stream_uart_0_M00_AXIS_RX_TDATA),
        .s00_axis_tx_tready(axi4stream_uart_0_M00_AXIS_RX_TREADY),
        .s00_axis_tx_tvalid(axi4stream_uart_0_M00_AXIS_RX_TVALID));
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
  design_1_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
endmodule
