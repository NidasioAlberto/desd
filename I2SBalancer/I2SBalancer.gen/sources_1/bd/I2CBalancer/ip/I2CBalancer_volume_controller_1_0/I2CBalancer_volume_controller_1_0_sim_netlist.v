// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri May 26 01:07:35 2023
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_volume_controller_1_0/I2CBalancer_volume_controller_1_0_sim_netlist.v
// Design      : I2CBalancer_volume_controller_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2CBalancer_volume_controller_1_0,volume_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "volume_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module I2CBalancer_volume_controller_1_0
   (m_axis_tvalid,
    m_axis_tlast,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_tlast,
    s_axis_tdata,
    s_axis_tready,
    aclk,
    aresetn,
    volume);
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 180000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [23:0]m_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 180000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [23:0]s_axis_tdata;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 180000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* x_interface_parameter = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input [9:0]volume;

  wire aclk;
  wire aresetn;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [9:0]volume;

  I2CBalancer_volume_controller_1_0_volume_controller U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .volume(volume[9:6]));
endmodule

(* ORIG_REF_NAME = "volume_controller" *) 
module I2CBalancer_volume_controller_1_0_volume_controller
   (m_axis_tdata,
    m_axis_tvalid,
    s_axis_tready,
    m_axis_tlast,
    s_axis_tvalid,
    aresetn,
    aclk,
    s_axis_tdata,
    m_axis_tready,
    volume,
    s_axis_tlast);
  output [23:0]m_axis_tdata;
  output m_axis_tvalid;
  output s_axis_tready;
  output m_axis_tlast;
  input s_axis_tvalid;
  input aresetn;
  input aclk;
  input [23:0]s_axis_tdata;
  input m_axis_tready;
  input [3:0]volume;
  input s_axis_tlast;

  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire aclk;
  wire aresetn;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tlast0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire p_0_in;
  wire p_1_in;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [1:0]state;
  wire [1:0]state__0;
  wire tlast;
  wire tlast_i_1_n_0;
  wire [22:0]value;
  wire \value[10]_i_2_n_0 ;
  wire \value[11]_i_2_n_0 ;
  wire \value[12]_i_2_n_0 ;
  wire \value[13]_i_2_n_0 ;
  wire \value[14]_i_2_n_0 ;
  wire \value[15]_i_2_n_0 ;
  wire \value[16]_i_2_n_0 ;
  wire \value[17]_i_2_n_0 ;
  wire \value[18]_i_2_n_0 ;
  wire \value[19]_i_2_n_0 ;
  wire \value[1]_i_2_n_0 ;
  wire \value[20]_i_2_n_0 ;
  wire \value[22]_i_1_n_0 ;
  wire \value[23]_i_1_n_0 ;
  wire \value[23]_i_2_n_0 ;
  wire \value[2]_i_2_n_0 ;
  wire \value[3]_i_2_n_0 ;
  wire \value[4]_i_2_n_0 ;
  wire \value[5]_i_2_n_0 ;
  wire \value[6]_i_2_n_0 ;
  wire \value[7]_i_2_n_0 ;
  wire \value[8]_i_2_n_0 ;
  wire \value[9]_i_2_n_0 ;
  wire \value_reg_n_0_[0] ;
  wire \value_reg_n_0_[10] ;
  wire \value_reg_n_0_[11] ;
  wire \value_reg_n_0_[12] ;
  wire \value_reg_n_0_[13] ;
  wire \value_reg_n_0_[14] ;
  wire \value_reg_n_0_[15] ;
  wire \value_reg_n_0_[16] ;
  wire \value_reg_n_0_[17] ;
  wire \value_reg_n_0_[18] ;
  wire \value_reg_n_0_[19] ;
  wire \value_reg_n_0_[1] ;
  wire \value_reg_n_0_[20] ;
  wire \value_reg_n_0_[21] ;
  wire \value_reg_n_0_[2] ;
  wire \value_reg_n_0_[3] ;
  wire \value_reg_n_0_[4] ;
  wire \value_reg_n_0_[5] ;
  wire \value_reg_n_0_[6] ;
  wire \value_reg_n_0_[7] ;
  wire \value_reg_n_0_[8] ;
  wire \value_reg_n_0_[9] ;
  wire [3:0]volume;
  wire volume_sign;
  wire volume_sign_i_1_n_0;
  wire [1:0]volume_value;
  wire \volume_value[0]_i_1_n_0 ;
  wire \volume_value[1]_i_1_n_0 ;
  wire \volume_value[2]_i_1_n_0 ;
  wire \volume_value[2]_i_2_n_0 ;
  wire \volume_value[2]_i_3_n_0 ;
  wire \volume_value[2]_i_4_n_0 ;
  wire \volume_value_reg_n_0_[0] ;
  wire \volume_value_reg_n_0_[1] ;
  wire \volume_value_reg_n_0_[2] ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h3E)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(volume_sign),
        .I1(state[1]),
        .I2(state[0]),
        .O(state__0[0]));
  LUT6 #(
    .INIT(64'hF05500CCF0FFFFCC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_4_n_0 ),
        .I1(s_axis_tvalid),
        .I2(m_axis_tready),
        .I3(state[1]),
        .I4(state[0]),
        .I5(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h3D)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(volume_sign),
        .I1(state[1]),
        .I2(state[0]),
        .O(state__0[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(aresetn),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\volume_value_reg_n_0_[1] ),
        .I1(\volume_value_reg_n_0_[0] ),
        .I2(\volume_value_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "read:00,write:11,compute_decrease:10,compute_increase:01" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[1]_i_3_n_0 ),
        .D(state__0[0]),
        .Q(state[0]));
  (* FSM_ENCODED_STATES = "read:00,write:11,compute_decrease:10,compute_increase:01" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_sequential_state[1]_i_1_n_0 ),
        .CLR(\FSM_sequential_state[1]_i_3_n_0 ),
        .D(state__0[1]),
        .Q(state[1]));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[0] ),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[10] ),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[11] ),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[12] ),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[13] ),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[14] ),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[15] ),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[16] ),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[17] ),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[18] ),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[19] ),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[1] ),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[20] ),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[21] ),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(p_0_in),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(p_1_in),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[2] ),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[3] ),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[4] ),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[5] ),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[6] ),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[7] ),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[8] ),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(\value_reg_n_0_[9] ),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    m_axis_tlast_i_1
       (.I0(aresetn),
        .I1(m_axis_tready),
        .I2(state[0]),
        .I3(state[1]),
        .O(m_axis_tlast0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(tlast),
        .Q(m_axis_tlast),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    m_axis_tvalid_INST_0
       (.I0(state[0]),
        .I1(state[1]),
        .O(m_axis_tvalid));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h1)) 
    s_axis_tready_INST_0
       (.I0(state[0]),
        .I1(state[1]),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    tlast_i_1
       (.I0(s_axis_tlast),
        .I1(aresetn),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axis_tvalid),
        .I5(tlast),
        .O(tlast_i_1_n_0));
  FDRE tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tlast_i_1_n_0),
        .Q(tlast),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \value[0]_i_1 
       (.I0(\value_reg_n_0_[1] ),
        .I1(state[1]),
        .I2(p_1_in),
        .I3(p_0_in),
        .I4(state[0]),
        .I5(s_axis_tdata[0]),
        .O(value[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[10]_i_1 
       (.I0(\value_reg_n_0_[11] ),
        .I1(state[1]),
        .I2(\value[10]_i_2_n_0 ),
        .O(value[10]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[10]_i_2 
       (.I0(\value_reg_n_0_[9] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[10]),
        .O(\value[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[11]_i_1 
       (.I0(\value_reg_n_0_[12] ),
        .I1(state[1]),
        .I2(\value[11]_i_2_n_0 ),
        .O(value[11]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[11]_i_2 
       (.I0(\value_reg_n_0_[10] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[11]),
        .O(\value[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[12]_i_1 
       (.I0(\value_reg_n_0_[13] ),
        .I1(state[1]),
        .I2(\value[12]_i_2_n_0 ),
        .O(value[12]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[12]_i_2 
       (.I0(\value_reg_n_0_[11] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[12]),
        .O(\value[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[13]_i_1 
       (.I0(\value_reg_n_0_[14] ),
        .I1(state[1]),
        .I2(\value[13]_i_2_n_0 ),
        .O(value[13]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[13]_i_2 
       (.I0(\value_reg_n_0_[12] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[13]),
        .O(\value[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[14]_i_1 
       (.I0(\value_reg_n_0_[15] ),
        .I1(state[1]),
        .I2(\value[14]_i_2_n_0 ),
        .O(value[14]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[14]_i_2 
       (.I0(\value_reg_n_0_[13] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[14]),
        .O(\value[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[15]_i_1 
       (.I0(\value_reg_n_0_[16] ),
        .I1(state[1]),
        .I2(\value[15]_i_2_n_0 ),
        .O(value[15]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[15]_i_2 
       (.I0(\value_reg_n_0_[14] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[15]),
        .O(\value[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[16]_i_1 
       (.I0(\value_reg_n_0_[17] ),
        .I1(state[1]),
        .I2(\value[16]_i_2_n_0 ),
        .O(value[16]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[16]_i_2 
       (.I0(\value_reg_n_0_[15] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[16]),
        .O(\value[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[17]_i_1 
       (.I0(\value_reg_n_0_[18] ),
        .I1(state[1]),
        .I2(\value[17]_i_2_n_0 ),
        .O(value[17]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[17]_i_2 
       (.I0(\value_reg_n_0_[16] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[17]),
        .O(\value[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[18]_i_1 
       (.I0(\value_reg_n_0_[19] ),
        .I1(state[1]),
        .I2(\value[18]_i_2_n_0 ),
        .O(value[18]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[18]_i_2 
       (.I0(\value_reg_n_0_[17] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[18]),
        .O(\value[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[19]_i_1 
       (.I0(\value_reg_n_0_[20] ),
        .I1(state[1]),
        .I2(\value[19]_i_2_n_0 ),
        .O(value[19]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[19]_i_2 
       (.I0(\value_reg_n_0_[18] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[19]),
        .O(\value[19]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \value[1]_i_1 
       (.I0(\value_reg_n_0_[2] ),
        .I1(state[1]),
        .I2(\value[1]_i_2_n_0 ),
        .O(value[1]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[1]_i_2 
       (.I0(\value_reg_n_0_[0] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[1]),
        .O(\value[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[20]_i_1 
       (.I0(\value_reg_n_0_[21] ),
        .I1(state[1]),
        .I2(\value[20]_i_2_n_0 ),
        .O(value[20]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[20]_i_2 
       (.I0(\value_reg_n_0_[19] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[20]),
        .O(\value[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0F4F5F5E0F4A0A0)) 
    \value[21]_i_1 
       (.I0(state[1]),
        .I1(\value_reg_n_0_[20] ),
        .I2(p_0_in),
        .I3(p_1_in),
        .I4(state[0]),
        .I5(s_axis_tdata[21]),
        .O(value[21]));
  LUT5 #(
    .INIT(32'h30E20000)) 
    \value[22]_i_1 
       (.I0(s_axis_tvalid),
        .I1(state[1]),
        .I2(\FSM_sequential_state[1]_i_5_n_0 ),
        .I3(state[0]),
        .I4(aresetn),
        .O(\value[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA54FF55EA54AA00)) 
    \value[22]_i_2 
       (.I0(state[1]),
        .I1(\value_reg_n_0_[21] ),
        .I2(p_0_in),
        .I3(p_1_in),
        .I4(state[0]),
        .I5(s_axis_tdata[22]),
        .O(value[22]));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \value[23]_i_1 
       (.I0(state[0]),
        .I1(s_axis_tdata[23]),
        .I2(\value[23]_i_2_n_0 ),
        .I3(aresetn),
        .I4(p_1_in),
        .O(\value[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEEEE2)) 
    \value[23]_i_2 
       (.I0(s_axis_tvalid),
        .I1(state[0]),
        .I2(\volume_value_reg_n_0_[2] ),
        .I3(\volume_value_reg_n_0_[0] ),
        .I4(\volume_value_reg_n_0_[1] ),
        .I5(state[1]),
        .O(\value[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[2]_i_1 
       (.I0(\value_reg_n_0_[3] ),
        .I1(state[1]),
        .I2(\value[2]_i_2_n_0 ),
        .O(value[2]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[2]_i_2 
       (.I0(\value_reg_n_0_[1] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[2]),
        .O(\value[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[3]_i_1 
       (.I0(\value_reg_n_0_[4] ),
        .I1(state[1]),
        .I2(\value[3]_i_2_n_0 ),
        .O(value[3]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[3]_i_2 
       (.I0(\value_reg_n_0_[2] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[3]),
        .O(\value[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[4]_i_1 
       (.I0(\value_reg_n_0_[5] ),
        .I1(state[1]),
        .I2(\value[4]_i_2_n_0 ),
        .O(value[4]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[4]_i_2 
       (.I0(\value_reg_n_0_[3] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[4]),
        .O(\value[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[5]_i_1 
       (.I0(\value_reg_n_0_[6] ),
        .I1(state[1]),
        .I2(\value[5]_i_2_n_0 ),
        .O(value[5]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[5]_i_2 
       (.I0(\value_reg_n_0_[4] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[5]),
        .O(\value[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[6]_i_1 
       (.I0(\value_reg_n_0_[7] ),
        .I1(state[1]),
        .I2(\value[6]_i_2_n_0 ),
        .O(value[6]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[6]_i_2 
       (.I0(\value_reg_n_0_[5] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[6]),
        .O(\value[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[7]_i_1 
       (.I0(\value_reg_n_0_[8] ),
        .I1(state[1]),
        .I2(\value[7]_i_2_n_0 ),
        .O(value[7]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[7]_i_2 
       (.I0(\value_reg_n_0_[6] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[7]),
        .O(\value[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[8]_i_1 
       (.I0(\value_reg_n_0_[9] ),
        .I1(state[1]),
        .I2(\value[8]_i_2_n_0 ),
        .O(value[8]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[8]_i_2 
       (.I0(\value_reg_n_0_[7] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[8]),
        .O(\value[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \value[9]_i_1 
       (.I0(\value_reg_n_0_[10] ),
        .I1(state[1]),
        .I2(\value[9]_i_2_n_0 ),
        .O(value[9]));
  LUT5 #(
    .INIT(32'h8EFF8E00)) 
    \value[9]_i_2 
       (.I0(\value_reg_n_0_[8] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(state[0]),
        .I4(s_axis_tdata[9]),
        .O(\value[9]_i_2_n_0 ));
  FDRE \value_reg[0] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[0]),
        .Q(\value_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \value_reg[10] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[10]),
        .Q(\value_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \value_reg[11] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[11]),
        .Q(\value_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \value_reg[12] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[12]),
        .Q(\value_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \value_reg[13] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[13]),
        .Q(\value_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[14]),
        .Q(\value_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \value_reg[15] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[15]),
        .Q(\value_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \value_reg[16] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[16]),
        .Q(\value_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \value_reg[17] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[17]),
        .Q(\value_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \value_reg[18] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[18]),
        .Q(\value_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \value_reg[19] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[19]),
        .Q(\value_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \value_reg[1] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[1]),
        .Q(\value_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \value_reg[20] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[20]),
        .Q(\value_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \value_reg[21] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[21]),
        .Q(\value_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \value_reg[22] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[22]),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \value_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\value[23]_i_1_n_0 ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE \value_reg[2] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[2]),
        .Q(\value_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \value_reg[3] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[3]),
        .Q(\value_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \value_reg[4] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[4]),
        .Q(\value_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \value_reg[5] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[5]),
        .Q(\value_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \value_reg[6] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[6]),
        .Q(\value_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \value_reg[7] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[7]),
        .Q(\value_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \value_reg[8] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[8]),
        .Q(\value_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \value_reg[9] 
       (.C(aclk),
        .CE(\value[22]_i_1_n_0 ),
        .D(value[9]),
        .Q(\value_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFBFFFF00080000)) 
    volume_sign_i_1
       (.I0(volume[3]),
        .I1(aresetn),
        .I2(state[1]),
        .I3(state[0]),
        .I4(s_axis_tvalid),
        .I5(volume_sign),
        .O(volume_sign_i_1_n_0));
  FDRE volume_sign_reg
       (.C(aclk),
        .CE(1'b1),
        .D(volume_sign_i_1_n_0),
        .Q(volume_sign),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \volume_value[0]_i_1 
       (.I0(volume_value[0]),
        .I1(aresetn),
        .I2(\volume_value[2]_i_4_n_0 ),
        .I3(\volume_value_reg_n_0_[0] ),
        .O(\volume_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h37323237)) 
    \volume_value[0]_i_2 
       (.I0(state[1]),
        .I1(\volume_value_reg_n_0_[0] ),
        .I2(state[0]),
        .I3(volume[3]),
        .I4(volume[0]),
        .O(volume_value[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \volume_value[1]_i_1 
       (.I0(volume_value[1]),
        .I1(aresetn),
        .I2(\volume_value[2]_i_4_n_0 ),
        .I3(\volume_value_reg_n_0_[1] ),
        .O(\volume_value[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hC3D7C382C382C3D7)) 
    \volume_value[1]_i_2 
       (.I0(state[1]),
        .I1(\volume_value_reg_n_0_[0] ),
        .I2(\volume_value_reg_n_0_[1] ),
        .I3(state[0]),
        .I4(volume[3]),
        .I5(volume[1]),
        .O(volume_value[1]));
  LUT6 #(
    .INIT(64'hB8FFFFFFB8000000)) 
    \volume_value[2]_i_1 
       (.I0(\volume_value[2]_i_2_n_0 ),
        .I1(state[1]),
        .I2(\volume_value[2]_i_3_n_0 ),
        .I3(aresetn),
        .I4(\volume_value[2]_i_4_n_0 ),
        .I5(\volume_value_reg_n_0_[2] ),
        .O(\volume_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \volume_value[2]_i_2 
       (.I0(\volume_value_reg_n_0_[1] ),
        .I1(\volume_value_reg_n_0_[0] ),
        .I2(\volume_value_reg_n_0_[2] ),
        .O(\volume_value[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE1FFE100E100E1FF)) 
    \volume_value[2]_i_3 
       (.I0(\volume_value_reg_n_0_[1] ),
        .I1(\volume_value_reg_n_0_[0] ),
        .I2(\volume_value_reg_n_0_[2] ),
        .I3(state[0]),
        .I4(volume[3]),
        .I5(volume[2]),
        .O(\volume_value[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5554FFFD5554AAA8)) 
    \volume_value[2]_i_4 
       (.I0(state[0]),
        .I1(\volume_value_reg_n_0_[1] ),
        .I2(\volume_value_reg_n_0_[0] ),
        .I3(\volume_value_reg_n_0_[2] ),
        .I4(state[1]),
        .I5(s_axis_tvalid),
        .O(\volume_value[2]_i_4_n_0 ));
  FDRE \volume_value_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume_value[0]_i_1_n_0 ),
        .Q(\volume_value_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \volume_value_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume_value[1]_i_1_n_0 ),
        .Q(\volume_value_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \volume_value_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\volume_value[2]_i_1_n_0 ),
        .Q(\volume_value_reg_n_0_[2] ),
        .R(1'b0));
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
