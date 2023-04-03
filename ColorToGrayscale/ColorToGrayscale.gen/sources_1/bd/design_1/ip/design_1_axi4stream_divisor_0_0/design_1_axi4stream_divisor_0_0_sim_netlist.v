// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Apr  3 15:13:19 2023
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alberton/Desktop/desd/ColorToGrayscale/ColorToGrayscale.gen/sources_1/bd/design_1/ip/design_1_axi4stream_divisor_0_0/design_1_axi4stream_divisor_0_0_sim_netlist.v
// Design      : design_1_axi4stream_divisor_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi4stream_divisor_0_0,axi4stream_divisor,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi4stream_divisor,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_axi4stream_divisor_0_0
   (clk,
    resetn,
    s_axis_tvalid,
    s_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tdata,
    m_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [7:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;

  wire clk;
  wire [7:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire resetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  design_1_axi4stream_divisor_0_0_axi4stream_divisor inst
       (.clk(clk),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .resetn(resetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi4stream_divisor" *) 
module design_1_axi4stream_divisor_0_0_axi4stream_divisor
   (m_axis_tdata,
    m_axis_tvalid,
    s_axis_tready,
    clk,
    s_axis_tdata,
    resetn,
    s_axis_tvalid,
    m_axis_tready);
  output [7:0]m_axis_tdata;
  output m_axis_tvalid;
  output s_axis_tready;
  input clk;
  input [7:0]s_axis_tdata;
  input resetn;
  input s_axis_tvalid;
  input m_axis_tready;

  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire clk;
  wire [9:0]in4;
  wire [7:0]m_axis_tdata;
  wire m_axis_tdata0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [7:0]p_0_in;
  wire resetn;
  wire [7:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire [2:0]state__0;
  wire [9:0]sum;
  wire \sum[3]_i_3_n_0 ;
  wire \sum[3]_i_4_n_0 ;
  wire \sum[3]_i_5_n_0 ;
  wire \sum[3]_i_6_n_0 ;
  wire \sum[7]_i_3_n_0 ;
  wire \sum[7]_i_4_n_0 ;
  wire \sum[7]_i_5_n_0 ;
  wire \sum[7]_i_6_n_0 ;
  wire sum_0;
  wire \sum_reg[3]_i_2_n_0 ;
  wire \sum_reg[3]_i_2_n_1 ;
  wire \sum_reg[3]_i_2_n_2 ;
  wire \sum_reg[3]_i_2_n_3 ;
  wire \sum_reg[7]_i_2_n_0 ;
  wire \sum_reg[7]_i_2_n_1 ;
  wire \sum_reg[7]_i_2_n_2 ;
  wire \sum_reg[7]_i_2_n_3 ;
  wire \sum_reg[9]_i_3_n_3 ;
  wire \sum_reg_n_0_[0] ;
  wire \sum_reg_n_0_[1] ;
  wire \sum_reg_n_0_[2] ;
  wire \sum_reg_n_0_[3] ;
  wire \sum_reg_n_0_[4] ;
  wire \sum_reg_n_0_[5] ;
  wire \sum_reg_n_0_[6] ;
  wire \sum_reg_n_0_[7] ;
  wire \sum_reg_n_0_[8] ;
  wire \sum_reg_n_0_[9] ;
  wire [3:1]\NLW_sum_reg[9]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_sum_reg[9]_i_3_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .O(state__0[1]));
  LUT5 #(
    .INIT(32'h5C0C5D5D)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state[1]),
        .I1(s_axis_tvalid),
        .I2(state[2]),
        .I3(m_axis_tready),
        .I4(state[0]),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h24)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(state__0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(resetn),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,receive_byte_1:001,receive_byte_2:010,receive_byte_3:011,compute:100,transmit:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "idle:000,receive_byte_1:001,receive_byte_2:010,receive_byte_3:011,compute:100,transmit:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[1]),
        .Q(state[1]));
  (* FSM_ENCODED_STATES = "idle:000,receive_byte_1:001,receive_byte_2:010,receive_byte_3:011,compute:100,transmit:101," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[2]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(state__0[2]),
        .Q(state[2]));
  LUT6 #(
    .INIT(64'hC2BC833E833EC2BC)) 
    \m_axis_tdata[0]_i_1 
       (.I0(\sum_reg_n_0_[0] ),
        .I1(\sum_reg_n_0_[2] ),
        .I2(p_0_in[2]),
        .I3(\sum_reg_n_0_[1] ),
        .I4(\sum_reg_n_0_[3] ),
        .I5(p_0_in[3]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hC2BC833E833EC2BC)) 
    \m_axis_tdata[1]_i_1 
       (.I0(\sum_reg_n_0_[1] ),
        .I1(\sum_reg_n_0_[3] ),
        .I2(p_0_in[3]),
        .I3(\sum_reg_n_0_[2] ),
        .I4(\sum_reg_n_0_[4] ),
        .I5(p_0_in[4]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hC2BC833E833EC2BC)) 
    \m_axis_tdata[2]_i_1 
       (.I0(\sum_reg_n_0_[2] ),
        .I1(\sum_reg_n_0_[4] ),
        .I2(p_0_in[4]),
        .I3(\sum_reg_n_0_[3] ),
        .I4(\sum_reg_n_0_[5] ),
        .I5(p_0_in[5]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hC3BE823C)) 
    \m_axis_tdata[3]_i_1 
       (.I0(\sum_reg_n_0_[3] ),
        .I1(\sum_reg_n_0_[5] ),
        .I2(p_0_in[5]),
        .I3(\sum_reg_n_0_[4] ),
        .I4(p_0_in[4]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hB22CCBB22CCBB22C)) 
    \m_axis_tdata[4]_i_1 
       (.I0(\sum_reg_n_0_[4] ),
        .I1(\sum_reg_n_0_[6] ),
        .I2(\sum_reg_n_0_[7] ),
        .I3(\sum_reg_n_0_[9] ),
        .I4(\sum_reg_n_0_[8] ),
        .I5(\sum_reg_n_0_[5] ),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h2CB2CB2C)) 
    \m_axis_tdata[5]_i_1 
       (.I0(\sum_reg_n_0_[5] ),
        .I1(\sum_reg_n_0_[7] ),
        .I2(\sum_reg_n_0_[8] ),
        .I3(\sum_reg_n_0_[9] ),
        .I4(\sum_reg_n_0_[6] ),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h83E8)) 
    \m_axis_tdata[6]_i_1 
       (.I0(\sum_reg_n_0_[6] ),
        .I1(\sum_reg_n_0_[7] ),
        .I2(\sum_reg_n_0_[9] ),
        .I3(\sum_reg_n_0_[8] ),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata[7]_i_1 
       (.I0(state[0]),
        .I1(resetn),
        .I2(state[1]),
        .I3(state[2]),
        .O(m_axis_tdata0));
  LUT3 #(
    .INIT(8'h64)) 
    \m_axis_tdata[7]_i_2 
       (.I0(\sum_reg_n_0_[8] ),
        .I1(\sum_reg_n_0_[9] ),
        .I2(\sum_reg_n_0_[7] ),
        .O(p_0_in[7]));
  FDRE \m_axis_tdata_reg[0] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(p_0_in[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(p_0_in[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(p_0_in[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(p_0_in[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(p_0_in[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(p_0_in[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(p_0_in[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(clk),
        .CE(m_axis_tdata0),
        .D(p_0_in[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h40)) 
    m_axis_tvalid_INST_0
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h32)) 
    s_axis_tready_INST_0
       (.I0(state[0]),
        .I1(state[2]),
        .I2(state[1]),
        .O(s_axis_tready));
  LUT3 #(
    .INIT(8'hAC)) 
    \sum[0]_i_1 
       (.I0(in4[0]),
        .I1(s_axis_tdata[0]),
        .I2(state[1]),
        .O(sum[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sum[1]_i_1 
       (.I0(in4[1]),
        .I1(s_axis_tdata[1]),
        .I2(state[1]),
        .O(sum[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sum[2]_i_1 
       (.I0(in4[2]),
        .I1(s_axis_tdata[2]),
        .I2(state[1]),
        .O(sum[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sum[3]_i_1 
       (.I0(in4[3]),
        .I1(s_axis_tdata[3]),
        .I2(state[1]),
        .O(sum[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_3 
       (.I0(\sum_reg_n_0_[3] ),
        .I1(s_axis_tdata[3]),
        .O(\sum[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_4 
       (.I0(\sum_reg_n_0_[2] ),
        .I1(s_axis_tdata[2]),
        .O(\sum[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_5 
       (.I0(\sum_reg_n_0_[1] ),
        .I1(s_axis_tdata[1]),
        .O(\sum[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[3]_i_6 
       (.I0(\sum_reg_n_0_[0] ),
        .I1(s_axis_tdata[0]),
        .O(\sum[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sum[4]_i_1 
       (.I0(in4[4]),
        .I1(s_axis_tdata[4]),
        .I2(state[1]),
        .O(sum[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sum[5]_i_1 
       (.I0(in4[5]),
        .I1(s_axis_tdata[5]),
        .I2(state[1]),
        .O(sum[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sum[6]_i_1 
       (.I0(in4[6]),
        .I1(s_axis_tdata[6]),
        .I2(state[1]),
        .O(sum[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \sum[7]_i_1 
       (.I0(in4[7]),
        .I1(s_axis_tdata[7]),
        .I2(state[1]),
        .O(sum[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_3 
       (.I0(\sum_reg_n_0_[7] ),
        .I1(s_axis_tdata[7]),
        .O(\sum[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_4 
       (.I0(\sum_reg_n_0_[6] ),
        .I1(s_axis_tdata[6]),
        .O(\sum[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_5 
       (.I0(\sum_reg_n_0_[5] ),
        .I1(s_axis_tdata[5]),
        .O(\sum[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \sum[7]_i_6 
       (.I0(\sum_reg_n_0_[4] ),
        .I1(s_axis_tdata[4]),
        .O(\sum[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[8]_i_1 
       (.I0(state[1]),
        .I1(in4[8]),
        .O(sum[8]));
  LUT4 #(
    .INIT(16'h3200)) 
    \sum[9]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(s_axis_tvalid),
        .O(sum_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sum[9]_i_2 
       (.I0(state[1]),
        .I1(in4[9]),
        .O(sum[9]));
  FDCE \sum_reg[0] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[0]),
        .Q(\sum_reg_n_0_[0] ));
  FDCE \sum_reg[1] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[1]),
        .Q(\sum_reg_n_0_[1] ));
  FDCE \sum_reg[2] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[2]),
        .Q(\sum_reg_n_0_[2] ));
  FDCE \sum_reg[3] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[3]),
        .Q(\sum_reg_n_0_[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\sum_reg[3]_i_2_n_0 ,\sum_reg[3]_i_2_n_1 ,\sum_reg[3]_i_2_n_2 ,\sum_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[3] ,\sum_reg_n_0_[2] ,\sum_reg_n_0_[1] ,\sum_reg_n_0_[0] }),
        .O(in4[3:0]),
        .S({\sum[3]_i_3_n_0 ,\sum[3]_i_4_n_0 ,\sum[3]_i_5_n_0 ,\sum[3]_i_6_n_0 }));
  FDCE \sum_reg[4] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[4]),
        .Q(\sum_reg_n_0_[4] ));
  FDCE \sum_reg[5] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[5]),
        .Q(\sum_reg_n_0_[5] ));
  FDCE \sum_reg[6] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[6]),
        .Q(\sum_reg_n_0_[6] ));
  FDCE \sum_reg[7] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[7]),
        .Q(\sum_reg_n_0_[7] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[7]_i_2 
       (.CI(\sum_reg[3]_i_2_n_0 ),
        .CO({\sum_reg[7]_i_2_n_0 ,\sum_reg[7]_i_2_n_1 ,\sum_reg[7]_i_2_n_2 ,\sum_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg_n_0_[7] ,\sum_reg_n_0_[6] ,\sum_reg_n_0_[5] ,\sum_reg_n_0_[4] }),
        .O(in4[7:4]),
        .S({\sum[7]_i_3_n_0 ,\sum[7]_i_4_n_0 ,\sum[7]_i_5_n_0 ,\sum[7]_i_6_n_0 }));
  FDCE \sum_reg[8] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[8]),
        .Q(\sum_reg_n_0_[8] ));
  FDCE \sum_reg[9] 
       (.C(clk),
        .CE(sum_0),
        .CLR(\FSM_sequential_state[2]_i_3_n_0 ),
        .D(sum[9]),
        .Q(\sum_reg_n_0_[9] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \sum_reg[9]_i_3 
       (.CI(\sum_reg[7]_i_2_n_0 ),
        .CO({\NLW_sum_reg[9]_i_3_CO_UNCONNECTED [3:1],\sum_reg[9]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sum_reg[9]_i_3_O_UNCONNECTED [3:2],in4[9:8]}),
        .S({1'b0,1'b0,\sum_reg_n_0_[9] ,\sum_reg_n_0_[8] }));
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
