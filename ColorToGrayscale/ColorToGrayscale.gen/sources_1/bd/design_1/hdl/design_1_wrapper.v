//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Mon Apr  3 15:13:02 2023
//Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (UART_RX_0,
    UART_RX_1,
    UART_TX_0,
    UART_TX_1,
    reset,
    sys_clock);
  input UART_RX_0;
  output UART_RX_1;
  output UART_TX_0;
  output UART_TX_1;
  input reset;
  input sys_clock;

  wire UART_RX_0;
  wire UART_RX_1;
  wire UART_TX_0;
  wire UART_TX_1;
  wire reset;
  wire sys_clock;

  design_1 design_1_i
       (.UART_RX_0(UART_RX_0),
        .UART_RX_1(UART_RX_1),
        .UART_TX_0(UART_TX_0),
        .UART_TX_1(UART_TX_1),
        .reset(reset),
        .sys_clock(sys_clock));
endmodule
