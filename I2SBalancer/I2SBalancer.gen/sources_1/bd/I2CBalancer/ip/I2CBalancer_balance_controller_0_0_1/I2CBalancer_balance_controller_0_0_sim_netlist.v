// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Fri May 26 01:28:31 2023
// Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_balance_controller_0_0_1/I2CBalancer_balance_controller_0_0_sim_netlist.v
// Design      : I2CBalancer_balance_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "I2CBalancer_balance_controller_0_0,balance_controller,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "balance_controller,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module I2CBalancer_balance_controller_0_0
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
    balance);
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
  input [9:0]balance;

  wire aclk;
  wire aresetn;
  wire [9:0]balance;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;

  I2CBalancer_balance_controller_0_0_balance_controller U0
       (.aclk(aclk),
        .aresetn(aresetn),
        .balance(balance[9:6]),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "balance_controller" *) 
module I2CBalancer_balance_controller_0_0_balance_controller
   (m_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    aclk,
    s_axis_tdata,
    aresetn,
    s_axis_tvalid,
    balance,
    m_axis_tready,
    s_axis_tlast);
  output m_axis_tvalid;
  output s_axis_tready;
  output [23:0]m_axis_tdata;
  output m_axis_tlast;
  input aclk;
  input [23:0]s_axis_tdata;
  input aresetn;
  input s_axis_tvalid;
  input [3:0]balance;
  input m_axis_tready;
  input s_axis_tlast;

  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state[2]_i_4_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire aclk;
  wire aresetn;
  wire [3:0]balance;
  wire balance_sign;
  wire balance_sign_i_1_n_0;
  wire [2:0]balance_value;
  wire balance_value0;
  wire \balance_value[2]_i_3_n_0 ;
  wire \balance_value_reg_n_0_[0] ;
  wire \balance_value_reg_n_0_[1] ;
  wire \balance_value_reg_n_0_[2] ;
  wire [23:0]m_axis_tdata;
  wire m_axis_tlast;
  wire m_axis_tlast0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [23:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire tlast;
  wire tlast_i_1_n_0;
  wire [23:0]value;
  wire \value[0]_i_1_n_0 ;
  wire \value[10]_i_1_n_0 ;
  wire \value[11]_i_1_n_0 ;
  wire \value[12]_i_1_n_0 ;
  wire \value[13]_i_1_n_0 ;
  wire \value[14]_i_1_n_0 ;
  wire \value[15]_i_1_n_0 ;
  wire \value[16]_i_1_n_0 ;
  wire \value[17]_i_1_n_0 ;
  wire \value[18]_i_1_n_0 ;
  wire \value[19]_i_1_n_0 ;
  wire \value[1]_i_1_n_0 ;
  wire \value[20]_i_1_n_0 ;
  wire \value[21]_i_1_n_0 ;
  wire \value[22]_i_1_n_0 ;
  wire \value[23]_i_1_n_0 ;
  wire \value[2]_i_1_n_0 ;
  wire \value[3]_i_1_n_0 ;
  wire \value[4]_i_1_n_0 ;
  wire \value[5]_i_1_n_0 ;
  wire \value[6]_i_1_n_0 ;
  wire \value[7]_i_1_n_0 ;
  wire \value[8]_i_1_n_0 ;
  wire \value[9]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h82)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(s_axis_tready),
        .I1(balance_sign),
        .I2(tlast),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(m_axis_tvalid),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(s_axis_tready),
        .I4(\FSM_onehot_state[2]_i_4_n_0 ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF28)) 
    \FSM_onehot_state[2]_i_2 
       (.I0(s_axis_tready),
        .I1(tlast),
        .I2(balance_sign),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[2]_i_3 
       (.I0(aresetn),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[2]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\balance_value_reg_n_0_[2] ),
        .I2(\balance_value_reg_n_0_[0] ),
        .I3(\balance_value_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "read:001,write:100,compute_decrease:010" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .D(m_axis_tvalid),
        .PRE(\FSM_onehot_state[2]_i_3_n_0 ),
        .Q(s_axis_tready));
  (* FSM_ENCODED_STATES = "read:001,write:100,compute_decrease:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(\FSM_onehot_state[2]_i_3_n_0 ),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "read:001,write:100,compute_decrease:010" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(\FSM_onehot_state[2]_i_1_n_0 ),
        .CLR(\FSM_onehot_state[2]_i_3_n_0 ),
        .D(\FSM_onehot_state[2]_i_2_n_0 ),
        .Q(m_axis_tvalid));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    balance_sign_i_1
       (.I0(balance[3]),
        .I1(aresetn),
        .I2(s_axis_tready),
        .I3(s_axis_tvalid),
        .I4(balance_sign),
        .O(balance_sign_i_1_n_0));
  FDRE balance_sign_reg
       (.C(aclk),
        .CE(1'b1),
        .D(balance_sign_i_1_n_0),
        .Q(balance_sign),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF22F2222)) 
    \balance_value[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\balance_value_reg_n_0_[0] ),
        .I2(balance[0]),
        .I3(balance[3]),
        .I4(s_axis_tready),
        .O(balance_value[0]));
  LUT6 #(
    .INIT(64'hFF8282FF82828282)) 
    \balance_value[1]_i_1 
       (.I0(s_axis_tready),
        .I1(balance[3]),
        .I2(balance[1]),
        .I3(\balance_value_reg_n_0_[0] ),
        .I4(\balance_value_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(balance_value[1]));
  LUT6 #(
    .INIT(64'hFFE0E0E000000000)) 
    \balance_value[2]_i_1 
       (.I0(\balance_value_reg_n_0_[2] ),
        .I1(\balance_value[2]_i_3_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(s_axis_tvalid),
        .I4(s_axis_tready),
        .I5(aresetn),
        .O(balance_value0));
  LUT6 #(
    .INIT(64'hFF8282FF82828282)) 
    \balance_value[2]_i_2 
       (.I0(s_axis_tready),
        .I1(balance[3]),
        .I2(balance[2]),
        .I3(\balance_value[2]_i_3_n_0 ),
        .I4(\balance_value_reg_n_0_[2] ),
        .I5(\FSM_onehot_state_reg_n_0_[1] ),
        .O(balance_value[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \balance_value[2]_i_3 
       (.I0(\balance_value_reg_n_0_[0] ),
        .I1(\balance_value_reg_n_0_[1] ),
        .O(\balance_value[2]_i_3_n_0 ));
  FDRE \balance_value_reg[0] 
       (.C(aclk),
        .CE(balance_value0),
        .D(balance_value[0]),
        .Q(\balance_value_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \balance_value_reg[1] 
       (.C(aclk),
        .CE(balance_value0),
        .D(balance_value[1]),
        .Q(\balance_value_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \balance_value_reg[2] 
       (.C(aclk),
        .CE(balance_value0),
        .D(balance_value[2]),
        .Q(\balance_value_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[0]),
        .Q(m_axis_tdata[0]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[10]),
        .Q(m_axis_tdata[10]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[11]),
        .Q(m_axis_tdata[11]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[12]),
        .Q(m_axis_tdata[12]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[13]),
        .Q(m_axis_tdata[13]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[14]),
        .Q(m_axis_tdata[14]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[15]),
        .Q(m_axis_tdata[15]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[16]),
        .Q(m_axis_tdata[16]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[17]),
        .Q(m_axis_tdata[17]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[18]),
        .Q(m_axis_tdata[18]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[19]),
        .Q(m_axis_tdata[19]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[1]),
        .Q(m_axis_tdata[1]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[20]),
        .Q(m_axis_tdata[20]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[21]),
        .Q(m_axis_tdata[21]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[22]),
        .Q(m_axis_tdata[22]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[23]),
        .Q(m_axis_tdata[23]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[2]),
        .Q(m_axis_tdata[2]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[3]),
        .Q(m_axis_tdata[3]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[4]),
        .Q(m_axis_tdata[4]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[5]),
        .Q(m_axis_tdata[5]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[6]),
        .Q(m_axis_tdata[6]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[7]),
        .Q(m_axis_tdata[7]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[8]),
        .Q(m_axis_tdata[8]),
        .R(1'b0));
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(value[9]),
        .Q(m_axis_tdata[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    m_axis_tlast_i_1
       (.I0(aresetn),
        .I1(m_axis_tready),
        .I2(m_axis_tvalid),
        .O(m_axis_tlast0));
  FDRE m_axis_tlast_reg
       (.C(aclk),
        .CE(m_axis_tlast0),
        .D(tlast),
        .Q(m_axis_tlast),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    tlast_i_1
       (.I0(s_axis_tlast),
        .I1(aresetn),
        .I2(s_axis_tready),
        .I3(s_axis_tvalid),
        .I4(tlast),
        .O(tlast_i_1_n_0));
  FDRE tlast_reg
       (.C(aclk),
        .CE(1'b1),
        .D(tlast_i_1_n_0),
        .Q(tlast),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[0]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[0]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[1]),
        .O(\value[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[10]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[10]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[11]),
        .O(\value[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[11]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[11]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[12]),
        .O(\value[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[12]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[12]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[13]),
        .O(\value[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[13]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[13]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[14]),
        .O(\value[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[14]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[14]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[15]),
        .O(\value[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[15]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[15]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[16]),
        .O(\value[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[16]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[16]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[17]),
        .O(\value[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[17]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[17]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[18]),
        .O(\value[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[18]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[18]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[19]),
        .O(\value[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[19]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[19]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[20]),
        .O(\value[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[1]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[1]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[2]),
        .O(\value[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[20]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[20]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[21]),
        .O(\value[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[21]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[21]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[22]),
        .O(\value[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[22]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[22]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[23]),
        .O(\value[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFA0000000)) 
    \value[23]_i_1 
       (.I0(s_axis_tdata[23]),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(aresetn),
        .I3(s_axis_tready),
        .I4(s_axis_tvalid),
        .I5(value[23]),
        .O(\value[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[2]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[2]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[3]),
        .O(\value[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[3]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[3]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[4]),
        .O(\value[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[4]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[4]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[5]),
        .O(\value[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[5]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[5]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[6]),
        .O(\value[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[6]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[6]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[7]),
        .O(\value[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[7]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[7]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[8]),
        .O(\value[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[8]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[8]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[9]),
        .O(\value[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \value[9]_i_1 
       (.I0(s_axis_tready),
        .I1(s_axis_tdata[9]),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(value[10]),
        .O(\value[9]_i_1_n_0 ));
  FDRE \value_reg[0] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[0]_i_1_n_0 ),
        .Q(value[0]),
        .R(1'b0));
  FDRE \value_reg[10] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[10]_i_1_n_0 ),
        .Q(value[10]),
        .R(1'b0));
  FDRE \value_reg[11] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[11]_i_1_n_0 ),
        .Q(value[11]),
        .R(1'b0));
  FDRE \value_reg[12] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[12]_i_1_n_0 ),
        .Q(value[12]),
        .R(1'b0));
  FDRE \value_reg[13] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[13]_i_1_n_0 ),
        .Q(value[13]),
        .R(1'b0));
  FDRE \value_reg[14] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[14]_i_1_n_0 ),
        .Q(value[14]),
        .R(1'b0));
  FDRE \value_reg[15] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[15]_i_1_n_0 ),
        .Q(value[15]),
        .R(1'b0));
  FDRE \value_reg[16] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[16]_i_1_n_0 ),
        .Q(value[16]),
        .R(1'b0));
  FDRE \value_reg[17] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[17]_i_1_n_0 ),
        .Q(value[17]),
        .R(1'b0));
  FDRE \value_reg[18] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[18]_i_1_n_0 ),
        .Q(value[18]),
        .R(1'b0));
  FDRE \value_reg[19] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[19]_i_1_n_0 ),
        .Q(value[19]),
        .R(1'b0));
  FDRE \value_reg[1] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[1]_i_1_n_0 ),
        .Q(value[1]),
        .R(1'b0));
  FDRE \value_reg[20] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[20]_i_1_n_0 ),
        .Q(value[20]),
        .R(1'b0));
  FDRE \value_reg[21] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[21]_i_1_n_0 ),
        .Q(value[21]),
        .R(1'b0));
  FDRE \value_reg[22] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[22]_i_1_n_0 ),
        .Q(value[22]),
        .R(1'b0));
  FDRE \value_reg[23] 
       (.C(aclk),
        .CE(1'b1),
        .D(\value[23]_i_1_n_0 ),
        .Q(value[23]),
        .R(1'b0));
  FDRE \value_reg[2] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[2]_i_1_n_0 ),
        .Q(value[2]),
        .R(1'b0));
  FDRE \value_reg[3] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[3]_i_1_n_0 ),
        .Q(value[3]),
        .R(1'b0));
  FDRE \value_reg[4] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[4]_i_1_n_0 ),
        .Q(value[4]),
        .R(1'b0));
  FDRE \value_reg[5] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[5]_i_1_n_0 ),
        .Q(value[5]),
        .R(1'b0));
  FDRE \value_reg[6] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[6]_i_1_n_0 ),
        .Q(value[6]),
        .R(1'b0));
  FDRE \value_reg[7] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[7]_i_1_n_0 ),
        .Q(value[7]),
        .R(1'b0));
  FDRE \value_reg[8] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[8]_i_1_n_0 ),
        .Q(value[8]),
        .R(1'b0));
  FDRE \value_reg[9] 
       (.C(aclk),
        .CE(balance_value0),
        .D(\value[9]_i_1_n_0 ),
        .Q(value[9]),
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
