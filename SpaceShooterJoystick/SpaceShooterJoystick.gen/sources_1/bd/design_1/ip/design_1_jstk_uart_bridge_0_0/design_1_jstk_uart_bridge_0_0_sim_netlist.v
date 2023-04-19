// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Apr 19 16:53:13 2023
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alberton/Desktop/desd/SpaceShooterJoystick/SpaceShooterJoystick.gen/sources_1/bd/design_1/ip/design_1_jstk_uart_bridge_0_0/design_1_jstk_uart_bridge_0_0_sim_netlist.v
// Design      : design_1_jstk_uart_bridge_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_jstk_uart_bridge_0_0,jstk_uart_bridge,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "jstk_uart_bridge,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_jstk_uart_bridge_0_0
   (aclk,
    aresetn,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger,
    led_r,
    led_g,
    led_b);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  input [9:0]jstk_x;
  input [9:0]jstk_y;
  input btn_jstk;
  input btn_trigger;
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;

  wire \<const1> ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [9:0]jstk_x;
  wire [9:0]jstk_y;
  wire [7:0]led_b;
  wire [7:0]led_g;
  wire [7:0]led_r;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign s_axis_tready = \<const1> ;
  design_1_jstk_uart_bridge_0_0_jstk_uart_bridge U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .btn_jstk(btn_jstk),
        .btn_trigger(btn_trigger),
        .jstk_x(jstk_x[9:3]),
        .jstk_y(jstk_y[9:3]),
        .led_b(led_b),
        .led_g(led_g),
        .led_r(led_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
  VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "jstk_uart_bridge" *) 
module design_1_jstk_uart_bridge_0_0_jstk_uart_bridge
   (m_axis_tdata,
    led_r,
    led_g,
    led_b,
    m_axis_tvalid,
    m_axis_tready,
    aclk,
    s_axis_tdata,
    s_axis_tvalid,
    aresetn,
    jstk_x,
    jstk_y,
    btn_jstk,
    btn_trigger);
  output [7:0]m_axis_tdata;
  output [7:0]led_r;
  output [7:0]led_g;
  output [7:0]led_b;
  output m_axis_tvalid;
  input m_axis_tready;
  input aclk;
  input [7:0]s_axis_tdata;
  input s_axis_tvalid;
  input aresetn;
  input [6:0]jstk_x;
  input [6:0]jstk_y;
  input btn_jstk;
  input btn_trigger;

  wire \FSM_sequential_rx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire aclk;
  wire aresetn;
  wire btn_jstk;
  wire btn_trigger;
  wire [26:1]data0;
  wire [26:0]delay_counter;
  wire delay_counter0_carry__0_n_0;
  wire delay_counter0_carry__0_n_1;
  wire delay_counter0_carry__0_n_2;
  wire delay_counter0_carry__0_n_3;
  wire delay_counter0_carry__1_n_0;
  wire delay_counter0_carry__1_n_1;
  wire delay_counter0_carry__1_n_2;
  wire delay_counter0_carry__1_n_3;
  wire delay_counter0_carry__2_n_0;
  wire delay_counter0_carry__2_n_1;
  wire delay_counter0_carry__2_n_2;
  wire delay_counter0_carry__2_n_3;
  wire delay_counter0_carry__3_n_0;
  wire delay_counter0_carry__3_n_1;
  wire delay_counter0_carry__3_n_2;
  wire delay_counter0_carry__3_n_3;
  wire delay_counter0_carry__4_n_0;
  wire delay_counter0_carry__4_n_1;
  wire delay_counter0_carry__4_n_2;
  wire delay_counter0_carry__4_n_3;
  wire delay_counter0_carry__5_n_3;
  wire delay_counter0_carry_n_0;
  wire delay_counter0_carry_n_1;
  wire delay_counter0_carry_n_2;
  wire delay_counter0_carry_n_3;
  wire \delay_counter[0]_i_1_n_0 ;
  wire \delay_counter[10]_i_1_n_0 ;
  wire \delay_counter[11]_i_1_n_0 ;
  wire \delay_counter[12]_i_1_n_0 ;
  wire \delay_counter[13]_i_1_n_0 ;
  wire \delay_counter[14]_i_1_n_0 ;
  wire \delay_counter[15]_i_1_n_0 ;
  wire \delay_counter[16]_i_1_n_0 ;
  wire \delay_counter[17]_i_1_n_0 ;
  wire \delay_counter[18]_i_1_n_0 ;
  wire \delay_counter[19]_i_1_n_0 ;
  wire \delay_counter[1]_i_1_n_0 ;
  wire \delay_counter[20]_i_1_n_0 ;
  wire \delay_counter[21]_i_1_n_0 ;
  wire \delay_counter[22]_i_1_n_0 ;
  wire \delay_counter[23]_i_1_n_0 ;
  wire \delay_counter[24]_i_1_n_0 ;
  wire \delay_counter[25]_i_1_n_0 ;
  wire \delay_counter[26]_i_1_n_0 ;
  wire \delay_counter[2]_i_1_n_0 ;
  wire \delay_counter[3]_i_1_n_0 ;
  wire \delay_counter[4]_i_1_n_0 ;
  wire \delay_counter[5]_i_1_n_0 ;
  wire \delay_counter[6]_i_1_n_0 ;
  wire \delay_counter[7]_i_1_n_0 ;
  wire \delay_counter[8]_i_1_n_0 ;
  wire \delay_counter[9]_i_1_n_0 ;
  wire [6:0]jstk_x;
  wire [6:0]jstk_y;
  wire [7:0]led_b;
  wire led_b0;
  wire [7:0]led_g;
  wire led_g0;
  wire [7:0]led_r;
  wire led_r0;
  wire [7:0]m_axis_tdata;
  wire m_axis_tdata0;
  wire \m_axis_tdata[0]_i_1_n_0 ;
  wire \m_axis_tdata[1]_i_1_n_0 ;
  wire \m_axis_tdata[2]_i_1_n_0 ;
  wire \m_axis_tdata[3]_i_1_n_0 ;
  wire \m_axis_tdata[4]_i_1_n_0 ;
  wire \m_axis_tdata[5]_i_1_n_0 ;
  wire \m_axis_tdata[6]_i_1_n_0 ;
  wire \m_axis_tdata[7]_i_10_n_0 ;
  wire \m_axis_tdata[7]_i_2_n_0 ;
  wire \m_axis_tdata[7]_i_3_n_0 ;
  wire \m_axis_tdata[7]_i_4_n_0 ;
  wire \m_axis_tdata[7]_i_5_n_0 ;
  wire \m_axis_tdata[7]_i_6_n_0 ;
  wire \m_axis_tdata[7]_i_7_n_0 ;
  wire \m_axis_tdata[7]_i_8_n_0 ;
  wire \m_axis_tdata[7]_i_9_n_0 ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [1:0]rx_state;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [2:0]tx_state__0;
  wire [3:1]NLW_delay_counter0_carry__5_CO_UNCONNECTED;
  wire [3:2]NLW_delay_counter0_carry__5_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h22222232CCCCCCCC)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .I3(s_axis_tdata[1]),
        .I4(s_axis_tdata[0]),
        .I5(s_axis_tvalid),
        .O(\FSM_sequential_rx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_tdata[5]),
        .I2(s_axis_tdata[2]),
        .I3(s_axis_tdata[3]),
        .I4(s_axis_tdata[7]),
        .I5(s_axis_tdata[6]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(s_axis_tvalid),
        .O(\FSM_sequential_rx_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "get_led_r:01,get_led_g:10,get_header:00,get_led_b:11" *) 
  FDCE \FSM_sequential_rx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_rx_state[0]_i_1_n_0 ),
        .Q(rx_state[0]));
  (* FSM_ENCODED_STATES = "get_led_r:01,get_led_g:10,get_header:00,get_led_b:11" *) 
  FDCE \FSM_sequential_rx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_rx_state[1]_i_1_n_0 ),
        .Q(rx_state[1]));
  LUT3 #(
    .INIT(8'h9A)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(tx_state__0[0]),
        .I1(tx_state__0[2]),
        .I2(m_axis_tready),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state__0[1]),
        .I1(tx_state__0[0]),
        .I2(tx_state__0[2]),
        .I3(m_axis_tready),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEF000FFFE0000)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(\m_axis_tdata[7]_i_3_n_0 ),
        .I1(delay_counter[0]),
        .I2(tx_state__0[1]),
        .I3(tx_state__0[0]),
        .I4(tx_state__0[2]),
        .I5(m_axis_tready),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(aresetn),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "delay:100,send_header:000,send_jstk_x:001,send_jstk_y:010,send_buttons:011," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state__0[0]));
  (* FSM_ENCODED_STATES = "delay:100,send_header:000,send_jstk_x:001,send_jstk_y:010,send_buttons:011," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state__0[1]));
  (* FSM_ENCODED_STATES = "delay:100,send_header:000,send_jstk_x:001,send_jstk_y:010,send_buttons:011," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state__0[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry
       (.CI(1'b0),
        .CO({delay_counter0_carry_n_0,delay_counter0_carry_n_1,delay_counter0_carry_n_2,delay_counter0_carry_n_3}),
        .CYINIT(delay_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(delay_counter[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__0
       (.CI(delay_counter0_carry_n_0),
        .CO({delay_counter0_carry__0_n_0,delay_counter0_carry__0_n_1,delay_counter0_carry__0_n_2,delay_counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(delay_counter[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__1
       (.CI(delay_counter0_carry__0_n_0),
        .CO({delay_counter0_carry__1_n_0,delay_counter0_carry__1_n_1,delay_counter0_carry__1_n_2,delay_counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(delay_counter[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__2
       (.CI(delay_counter0_carry__1_n_0),
        .CO({delay_counter0_carry__2_n_0,delay_counter0_carry__2_n_1,delay_counter0_carry__2_n_2,delay_counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(delay_counter[16:13]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__3
       (.CI(delay_counter0_carry__2_n_0),
        .CO({delay_counter0_carry__3_n_0,delay_counter0_carry__3_n_1,delay_counter0_carry__3_n_2,delay_counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(delay_counter[20:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__4
       (.CI(delay_counter0_carry__3_n_0),
        .CO({delay_counter0_carry__4_n_0,delay_counter0_carry__4_n_1,delay_counter0_carry__4_n_2,delay_counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(delay_counter[24:21]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 delay_counter0_carry__5
       (.CI(delay_counter0_carry__4_n_0),
        .CO({NLW_delay_counter0_carry__5_CO_UNCONNECTED[3:1],delay_counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_delay_counter0_carry__5_O_UNCONNECTED[3:2],data0[26:25]}),
        .S({1'b0,1'b0,delay_counter[26:25]}));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \delay_counter[0]_i_1 
       (.I0(\m_axis_tdata[7]_i_3_n_0 ),
        .I1(delay_counter[0]),
        .O(\delay_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[10]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[10]),
        .O(\delay_counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[11]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[11]),
        .O(\delay_counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[12]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[12]),
        .O(\delay_counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[13]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[13]),
        .O(\delay_counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[14]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[14]),
        .O(\delay_counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[15]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[15]),
        .O(\delay_counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[16]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[16]),
        .O(\delay_counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[17]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[17]),
        .O(\delay_counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[18]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[18]),
        .O(\delay_counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[19]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[19]),
        .O(\delay_counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[1]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[1]),
        .O(\delay_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[20]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[20]),
        .O(\delay_counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[21]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[21]),
        .O(\delay_counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[22]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[22]),
        .O(\delay_counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[23]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[23]),
        .O(\delay_counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[24]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[24]),
        .O(\delay_counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[25]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[25]),
        .O(\delay_counter[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[26]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[26]),
        .O(\delay_counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[2]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[2]),
        .O(\delay_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[3]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[3]),
        .O(\delay_counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[4]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[4]),
        .O(\delay_counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[5]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[5]),
        .O(\delay_counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[6]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[6]),
        .O(\delay_counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[7]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[7]),
        .O(\delay_counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[8]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[8]),
        .O(\delay_counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \delay_counter[9]_i_1 
       (.I0(delay_counter[0]),
        .I1(\m_axis_tdata[7]_i_3_n_0 ),
        .I2(data0[9]),
        .O(\delay_counter[9]_i_1_n_0 ));
  FDCE \delay_counter_reg[0] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[0]_i_1_n_0 ),
        .Q(delay_counter[0]));
  FDCE \delay_counter_reg[10] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[10]_i_1_n_0 ),
        .Q(delay_counter[10]));
  FDCE \delay_counter_reg[11] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[11]_i_1_n_0 ),
        .Q(delay_counter[11]));
  FDCE \delay_counter_reg[12] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[12]_i_1_n_0 ),
        .Q(delay_counter[12]));
  FDCE \delay_counter_reg[13] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[13]_i_1_n_0 ),
        .Q(delay_counter[13]));
  FDCE \delay_counter_reg[14] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[14]_i_1_n_0 ),
        .Q(delay_counter[14]));
  FDCE \delay_counter_reg[15] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[15]_i_1_n_0 ),
        .Q(delay_counter[15]));
  FDCE \delay_counter_reg[16] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[16]_i_1_n_0 ),
        .Q(delay_counter[16]));
  FDCE \delay_counter_reg[17] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[17]_i_1_n_0 ),
        .Q(delay_counter[17]));
  FDCE \delay_counter_reg[18] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[18]_i_1_n_0 ),
        .Q(delay_counter[18]));
  FDCE \delay_counter_reg[19] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[19]_i_1_n_0 ),
        .Q(delay_counter[19]));
  FDCE \delay_counter_reg[1] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[1]_i_1_n_0 ),
        .Q(delay_counter[1]));
  FDCE \delay_counter_reg[20] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[20]_i_1_n_0 ),
        .Q(delay_counter[20]));
  FDCE \delay_counter_reg[21] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[21]_i_1_n_0 ),
        .Q(delay_counter[21]));
  FDCE \delay_counter_reg[22] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[22]_i_1_n_0 ),
        .Q(delay_counter[22]));
  FDCE \delay_counter_reg[23] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[23]_i_1_n_0 ),
        .Q(delay_counter[23]));
  FDCE \delay_counter_reg[24] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[24]_i_1_n_0 ),
        .Q(delay_counter[24]));
  FDCE \delay_counter_reg[25] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[25]_i_1_n_0 ),
        .Q(delay_counter[25]));
  FDCE \delay_counter_reg[26] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[26]_i_1_n_0 ),
        .Q(delay_counter[26]));
  FDCE \delay_counter_reg[2] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[2]_i_1_n_0 ),
        .Q(delay_counter[2]));
  FDCE \delay_counter_reg[3] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[3]_i_1_n_0 ),
        .Q(delay_counter[3]));
  FDCE \delay_counter_reg[4] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[4]_i_1_n_0 ),
        .Q(delay_counter[4]));
  FDCE \delay_counter_reg[5] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[5]_i_1_n_0 ),
        .Q(delay_counter[5]));
  FDCE \delay_counter_reg[6] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[6]_i_1_n_0 ),
        .Q(delay_counter[6]));
  FDCE \delay_counter_reg[7] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[7]_i_1_n_0 ),
        .Q(delay_counter[7]));
  FDCE \delay_counter_reg[8] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[8]_i_1_n_0 ),
        .Q(delay_counter[8]));
  FDCE \delay_counter_reg[9] 
       (.C(aclk),
        .CE(\m_axis_tdata[7]_i_2_n_0 ),
        .CLR(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .D(\delay_counter[9]_i_1_n_0 ),
        .Q(delay_counter[9]));
  LUT4 #(
    .INIT(16'h8000)) 
    \led_b[7]_i_1 
       (.I0(aresetn),
        .I1(rx_state[0]),
        .I2(s_axis_tvalid),
        .I3(rx_state[1]),
        .O(led_b0));
  FDRE \led_b_reg[0] 
       (.C(aclk),
        .CE(led_b0),
        .D(s_axis_tdata[0]),
        .Q(led_b[0]),
        .R(1'b0));
  FDRE \led_b_reg[1] 
       (.C(aclk),
        .CE(led_b0),
        .D(s_axis_tdata[1]),
        .Q(led_b[1]),
        .R(1'b0));
  FDRE \led_b_reg[2] 
       (.C(aclk),
        .CE(led_b0),
        .D(s_axis_tdata[2]),
        .Q(led_b[2]),
        .R(1'b0));
  FDRE \led_b_reg[3] 
       (.C(aclk),
        .CE(led_b0),
        .D(s_axis_tdata[3]),
        .Q(led_b[3]),
        .R(1'b0));
  FDRE \led_b_reg[4] 
       (.C(aclk),
        .CE(led_b0),
        .D(s_axis_tdata[4]),
        .Q(led_b[4]),
        .R(1'b0));
  FDRE \led_b_reg[5] 
       (.C(aclk),
        .CE(led_b0),
        .D(s_axis_tdata[5]),
        .Q(led_b[5]),
        .R(1'b0));
  FDRE \led_b_reg[6] 
       (.C(aclk),
        .CE(led_b0),
        .D(s_axis_tdata[6]),
        .Q(led_b[6]),
        .R(1'b0));
  FDRE \led_b_reg[7] 
       (.C(aclk),
        .CE(led_b0),
        .D(s_axis_tdata[7]),
        .Q(led_b[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4000)) 
    \led_g[7]_i_1 
       (.I0(rx_state[0]),
        .I1(aresetn),
        .I2(s_axis_tvalid),
        .I3(rx_state[1]),
        .O(led_g0));
  FDRE \led_g_reg[0] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[0]),
        .Q(led_g[0]),
        .R(1'b0));
  FDRE \led_g_reg[1] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[1]),
        .Q(led_g[1]),
        .R(1'b0));
  FDRE \led_g_reg[2] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[2]),
        .Q(led_g[2]),
        .R(1'b0));
  FDRE \led_g_reg[3] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[3]),
        .Q(led_g[3]),
        .R(1'b0));
  FDRE \led_g_reg[4] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[4]),
        .Q(led_g[4]),
        .R(1'b0));
  FDRE \led_g_reg[5] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[5]),
        .Q(led_g[5]),
        .R(1'b0));
  FDRE \led_g_reg[6] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[6]),
        .Q(led_g[6]),
        .R(1'b0));
  FDRE \led_g_reg[7] 
       (.C(aclk),
        .CE(led_g0),
        .D(s_axis_tdata[7]),
        .Q(led_g[7]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4000)) 
    \led_r[7]_i_1 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(aresetn),
        .I3(s_axis_tvalid),
        .O(led_r0));
  FDRE \led_r_reg[0] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[0]),
        .Q(led_r[0]),
        .R(1'b0));
  FDRE \led_r_reg[1] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[1]),
        .Q(led_r[1]),
        .R(1'b0));
  FDRE \led_r_reg[2] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[2]),
        .Q(led_r[2]),
        .R(1'b0));
  FDRE \led_r_reg[3] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[3]),
        .Q(led_r[3]),
        .R(1'b0));
  FDRE \led_r_reg[4] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[4]),
        .Q(led_r[4]),
        .R(1'b0));
  FDRE \led_r_reg[5] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[5]),
        .Q(led_r[5]),
        .R(1'b0));
  FDRE \led_r_reg[6] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[6]),
        .Q(led_r[6]),
        .R(1'b0));
  FDRE \led_r_reg[7] 
       (.C(aclk),
        .CE(led_r0),
        .D(s_axis_tdata[7]),
        .Q(led_r[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FF00E4E4)) 
    \m_axis_tdata[0]_i_1 
       (.I0(tx_state__0[0]),
        .I1(jstk_x[0]),
        .I2(jstk_y[0]),
        .I3(btn_jstk),
        .I4(tx_state__0[1]),
        .I5(tx_state__0[2]),
        .O(\m_axis_tdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF00E4E4)) 
    \m_axis_tdata[1]_i_1 
       (.I0(tx_state__0[0]),
        .I1(jstk_x[1]),
        .I2(jstk_y[1]),
        .I3(btn_trigger),
        .I4(tx_state__0[1]),
        .I5(tx_state__0[2]),
        .O(\m_axis_tdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h000A000C)) 
    \m_axis_tdata[2]_i_1 
       (.I0(jstk_y[2]),
        .I1(jstk_x[2]),
        .I2(tx_state__0[2]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[0]),
        .O(\m_axis_tdata[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \m_axis_tdata[3]_i_1 
       (.I0(jstk_y[3]),
        .I1(jstk_x[3]),
        .I2(tx_state__0[2]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[0]),
        .O(\m_axis_tdata[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \m_axis_tdata[4]_i_1 
       (.I0(jstk_y[4]),
        .I1(jstk_x[4]),
        .I2(tx_state__0[2]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[0]),
        .O(\m_axis_tdata[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \m_axis_tdata[5]_i_1 
       (.I0(jstk_y[5]),
        .I1(jstk_x[5]),
        .I2(tx_state__0[2]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[0]),
        .O(\m_axis_tdata[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000C00FA)) 
    \m_axis_tdata[6]_i_1 
       (.I0(jstk_x[6]),
        .I1(jstk_y[6]),
        .I2(tx_state__0[2]),
        .I3(tx_state__0[1]),
        .I4(tx_state__0[0]),
        .O(\m_axis_tdata[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    \m_axis_tdata[7]_i_1 
       (.I0(\m_axis_tdata[7]_i_3_n_0 ),
        .I1(delay_counter[0]),
        .I2(\m_axis_tdata[7]_i_2_n_0 ),
        .I3(aresetn),
        .I4(\m_axis_tdata[7]_i_4_n_0 ),
        .O(m_axis_tdata0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[7]_i_10 
       (.I0(delay_counter[25]),
        .I1(delay_counter[26]),
        .I2(delay_counter[23]),
        .I3(delay_counter[24]),
        .I4(delay_counter[2]),
        .I5(delay_counter[1]),
        .O(\m_axis_tdata[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h10)) 
    \m_axis_tdata[7]_i_2 
       (.I0(tx_state__0[1]),
        .I1(tx_state__0[0]),
        .I2(tx_state__0[2]),
        .O(\m_axis_tdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[7]_i_3 
       (.I0(\m_axis_tdata[7]_i_5_n_0 ),
        .I1(\m_axis_tdata[7]_i_6_n_0 ),
        .I2(\m_axis_tdata[7]_i_7_n_0 ),
        .I3(\m_axis_tdata[7]_i_8_n_0 ),
        .I4(\m_axis_tdata[7]_i_9_n_0 ),
        .I5(\m_axis_tdata[7]_i_10_n_0 ),
        .O(\m_axis_tdata[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07000000)) 
    \m_axis_tdata[7]_i_4 
       (.I0(tx_state__0[1]),
        .I1(tx_state__0[0]),
        .I2(tx_state__0[2]),
        .I3(m_axis_tready),
        .I4(aresetn),
        .O(\m_axis_tdata[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \m_axis_tdata[7]_i_5 
       (.I0(delay_counter[16]),
        .I1(delay_counter[15]),
        .I2(delay_counter[18]),
        .I3(delay_counter[17]),
        .O(\m_axis_tdata[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \m_axis_tdata[7]_i_6 
       (.I0(delay_counter[19]),
        .I1(delay_counter[20]),
        .I2(delay_counter[22]),
        .I3(delay_counter[21]),
        .O(\m_axis_tdata[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \m_axis_tdata[7]_i_7 
       (.I0(delay_counter[8]),
        .I1(delay_counter[7]),
        .I2(delay_counter[9]),
        .I3(delay_counter[10]),
        .O(\m_axis_tdata[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \m_axis_tdata[7]_i_8 
       (.I0(delay_counter[12]),
        .I1(delay_counter[11]),
        .I2(delay_counter[14]),
        .I3(delay_counter[13]),
        .O(\m_axis_tdata[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \m_axis_tdata[7]_i_9 
       (.I0(delay_counter[4]),
        .I1(delay_counter[3]),
        .I2(delay_counter[6]),
        .I3(delay_counter[5]),
        .O(\m_axis_tdata[7]_i_9_n_0 ));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[0]_i_1_n_0 ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[1]_i_1_n_0 ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[2]_i_1_n_0 ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[3]_i_1_n_0 ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[4]_i_1_n_0 ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[5]_i_1_n_0 ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[6]_i_1_n_0 ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(m_axis_tdata0),
        .D(\m_axis_tdata[7]_i_2_n_0 ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    m_axis_tvalid_INST_0
       (.I0(tx_state__0[2]),
        .O(m_axis_tvalid));
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
