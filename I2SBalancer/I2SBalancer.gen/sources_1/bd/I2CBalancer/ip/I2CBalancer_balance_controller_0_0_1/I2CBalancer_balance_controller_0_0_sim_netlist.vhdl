-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri May 26 01:28:31 2023
-- Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_balance_controller_0_0_1/I2CBalancer_balance_controller_0_0_sim_netlist.vhdl
-- Design      : I2CBalancer_balance_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_balance_controller_0_0_balance_controller is
  port (
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    balance : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2CBalancer_balance_controller_0_0_balance_controller : entity is "balance_controller";
end I2CBalancer_balance_controller_0_0_balance_controller;

architecture STRUCTURE of I2CBalancer_balance_controller_0_0_balance_controller is
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal balance_sign : STD_LOGIC;
  signal balance_sign_i_1_n_0 : STD_LOGIC;
  signal balance_value : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal balance_value0 : STD_LOGIC;
  signal \balance_value[2]_i_3_n_0\ : STD_LOGIC;
  signal \balance_value_reg_n_0_[0]\ : STD_LOGIC;
  signal \balance_value_reg_n_0_[1]\ : STD_LOGIC;
  signal \balance_value_reg_n_0_[2]\ : STD_LOGIC;
  signal m_axis_tlast0 : STD_LOGIC;
  signal \^m_axis_tvalid\ : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC;
  signal tlast : STD_LOGIC;
  signal tlast_i_1_n_0 : STD_LOGIC;
  signal value : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \value[0]_i_1_n_0\ : STD_LOGIC;
  signal \value[10]_i_1_n_0\ : STD_LOGIC;
  signal \value[11]_i_1_n_0\ : STD_LOGIC;
  signal \value[12]_i_1_n_0\ : STD_LOGIC;
  signal \value[13]_i_1_n_0\ : STD_LOGIC;
  signal \value[14]_i_1_n_0\ : STD_LOGIC;
  signal \value[15]_i_1_n_0\ : STD_LOGIC;
  signal \value[16]_i_1_n_0\ : STD_LOGIC;
  signal \value[17]_i_1_n_0\ : STD_LOGIC;
  signal \value[18]_i_1_n_0\ : STD_LOGIC;
  signal \value[19]_i_1_n_0\ : STD_LOGIC;
  signal \value[1]_i_1_n_0\ : STD_LOGIC;
  signal \value[20]_i_1_n_0\ : STD_LOGIC;
  signal \value[21]_i_1_n_0\ : STD_LOGIC;
  signal \value[22]_i_1_n_0\ : STD_LOGIC;
  signal \value[23]_i_1_n_0\ : STD_LOGIC;
  signal \value[2]_i_1_n_0\ : STD_LOGIC;
  signal \value[3]_i_1_n_0\ : STD_LOGIC;
  signal \value[4]_i_1_n_0\ : STD_LOGIC;
  signal \value[5]_i_1_n_0\ : STD_LOGIC;
  signal \value[6]_i_1_n_0\ : STD_LOGIC;
  signal \value[7]_i_1_n_0\ : STD_LOGIC;
  signal \value[8]_i_1_n_0\ : STD_LOGIC;
  signal \value[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_4\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "read:001,write:100,compute_decrease:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "read:001,write:100,compute_decrease:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "read:001,write:100,compute_decrease:010";
  attribute SOFT_HLUTNM of \balance_value[2]_i_3\ : label is "soft_lutpair0";
begin
  m_axis_tvalid <= \^m_axis_tvalid\;
  s_axis_tready <= \^s_axis_tready\;
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"82"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => balance_sign,
      I2 => tlast,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^m_axis_tvalid\,
      I1 => m_axis_tready,
      I2 => s_axis_tvalid,
      I3 => \^s_axis_tready\,
      I4 => \FSM_onehot_state[2]_i_4_n_0\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF28"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => tlast,
      I2 => balance_sign,
      I3 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_2_n_0\
    );
\FSM_onehot_state[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_onehot_state[2]_i_3_n_0\
    );
\FSM_onehot_state[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \balance_value_reg_n_0_[2]\,
      I2 => \balance_value_reg_n_0_[0]\,
      I3 => \balance_value_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_4_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      D => \^m_axis_tvalid\,
      PRE => \FSM_onehot_state[2]_i_3_n_0\,
      Q => \^s_axis_tready\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      CLR => \FSM_onehot_state[2]_i_3_n_0\,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \FSM_onehot_state[2]_i_1_n_0\,
      CLR => \FSM_onehot_state[2]_i_3_n_0\,
      D => \FSM_onehot_state[2]_i_2_n_0\,
      Q => \^m_axis_tvalid\
    );
balance_sign_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => balance(3),
      I1 => aresetn,
      I2 => \^s_axis_tready\,
      I3 => s_axis_tvalid,
      I4 => balance_sign,
      O => balance_sign_i_1_n_0
    );
balance_sign_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => balance_sign_i_1_n_0,
      Q => balance_sign,
      R => '0'
    );
\balance_value[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F22F2222"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[1]\,
      I1 => \balance_value_reg_n_0_[0]\,
      I2 => balance(0),
      I3 => balance(3),
      I4 => \^s_axis_tready\,
      O => balance_value(0)
    );
\balance_value[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8282FF82828282"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => balance(3),
      I2 => balance(1),
      I3 => \balance_value_reg_n_0_[0]\,
      I4 => \balance_value_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => balance_value(1)
    );
\balance_value[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0E0E000000000"
    )
        port map (
      I0 => \balance_value_reg_n_0_[2]\,
      I1 => \balance_value[2]_i_3_n_0\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => s_axis_tvalid,
      I4 => \^s_axis_tready\,
      I5 => aresetn,
      O => balance_value0
    );
\balance_value[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8282FF82828282"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => balance(3),
      I2 => balance(2),
      I3 => \balance_value[2]_i_3_n_0\,
      I4 => \balance_value_reg_n_0_[2]\,
      I5 => \FSM_onehot_state_reg_n_0_[1]\,
      O => balance_value(2)
    );
\balance_value[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \balance_value_reg_n_0_[0]\,
      I1 => \balance_value_reg_n_0_[1]\,
      O => \balance_value[2]_i_3_n_0\
    );
\balance_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => balance_value(0),
      Q => \balance_value_reg_n_0_[0]\,
      R => '0'
    );
\balance_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => balance_value(1),
      Q => \balance_value_reg_n_0_[1]\,
      R => '0'
    );
\balance_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => balance_value(2),
      Q => \balance_value_reg_n_0_[2]\,
      R => '0'
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => value(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => aresetn,
      I1 => m_axis_tready,
      I2 => \^m_axis_tvalid\,
      O => m_axis_tlast0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => tlast,
      Q => m_axis_tlast,
      R => '0'
    );
tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => aresetn,
      I2 => \^s_axis_tready\,
      I3 => s_axis_tvalid,
      I4 => tlast,
      O => tlast_i_1_n_0
    );
tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tlast_i_1_n_0,
      Q => tlast,
      R => '0'
    );
\value[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(0),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(1),
      O => \value[0]_i_1_n_0\
    );
\value[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(10),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(11),
      O => \value[10]_i_1_n_0\
    );
\value[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(11),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(12),
      O => \value[11]_i_1_n_0\
    );
\value[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(12),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(13),
      O => \value[12]_i_1_n_0\
    );
\value[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(13),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(14),
      O => \value[13]_i_1_n_0\
    );
\value[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(14),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(15),
      O => \value[14]_i_1_n_0\
    );
\value[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(15),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(16),
      O => \value[15]_i_1_n_0\
    );
\value[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(16),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(17),
      O => \value[16]_i_1_n_0\
    );
\value[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(17),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(18),
      O => \value[17]_i_1_n_0\
    );
\value[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(18),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(19),
      O => \value[18]_i_1_n_0\
    );
\value[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(19),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(20),
      O => \value[19]_i_1_n_0\
    );
\value[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(1),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(2),
      O => \value[1]_i_1_n_0\
    );
\value[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(20),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(21),
      O => \value[20]_i_1_n_0\
    );
\value[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(21),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(22),
      O => \value[21]_i_1_n_0\
    );
\value[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(22),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(23),
      O => \value[22]_i_1_n_0\
    );
\value[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFA0000000"
    )
        port map (
      I0 => s_axis_tdata(23),
      I1 => \FSM_onehot_state_reg_n_0_[1]\,
      I2 => aresetn,
      I3 => \^s_axis_tready\,
      I4 => s_axis_tvalid,
      I5 => value(23),
      O => \value[23]_i_1_n_0\
    );
\value[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(2),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(3),
      O => \value[2]_i_1_n_0\
    );
\value[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(3),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(4),
      O => \value[3]_i_1_n_0\
    );
\value[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(4),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(5),
      O => \value[4]_i_1_n_0\
    );
\value[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(5),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(6),
      O => \value[5]_i_1_n_0\
    );
\value[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(6),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(7),
      O => \value[6]_i_1_n_0\
    );
\value[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(7),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(8),
      O => \value[7]_i_1_n_0\
    );
\value[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(8),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(9),
      O => \value[8]_i_1_n_0\
    );
\value[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^s_axis_tready\,
      I1 => s_axis_tdata(9),
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      I3 => value(10),
      O => \value[9]_i_1_n_0\
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[0]_i_1_n_0\,
      Q => value(0),
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[10]_i_1_n_0\,
      Q => value(10),
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[11]_i_1_n_0\,
      Q => value(11),
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[12]_i_1_n_0\,
      Q => value(12),
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[13]_i_1_n_0\,
      Q => value(13),
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[14]_i_1_n_0\,
      Q => value(14),
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[15]_i_1_n_0\,
      Q => value(15),
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[16]_i_1_n_0\,
      Q => value(16),
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[17]_i_1_n_0\,
      Q => value(17),
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[18]_i_1_n_0\,
      Q => value(18),
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[19]_i_1_n_0\,
      Q => value(19),
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[1]_i_1_n_0\,
      Q => value(1),
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[20]_i_1_n_0\,
      Q => value(20),
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[21]_i_1_n_0\,
      Q => value(21),
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[22]_i_1_n_0\,
      Q => value(22),
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \value[23]_i_1_n_0\,
      Q => value(23),
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[2]_i_1_n_0\,
      Q => value(2),
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[3]_i_1_n_0\,
      Q => value(3),
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[4]_i_1_n_0\,
      Q => value(4),
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[5]_i_1_n_0\,
      Q => value(5),
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[6]_i_1_n_0\,
      Q => value(6),
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[7]_i_1_n_0\,
      Q => value(7),
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[8]_i_1_n_0\,
      Q => value(8),
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => balance_value0,
      D => \value[9]_i_1_n_0\,
      Q => value(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_balance_controller_0_0 is
  port (
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    balance : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2CBalancer_balance_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_balance_controller_0_0 : entity is "I2CBalancer_balance_controller_0_0,balance_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_balance_controller_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_balance_controller_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_balance_controller_0_0 : entity is "balance_controller,Vivado 2020.2";
end I2CBalancer_balance_controller_0_0;

architecture STRUCTURE of I2CBalancer_balance_controller_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 180000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 180000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 s_axis TLAST";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 180000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
U0: entity work.I2CBalancer_balance_controller_0_0_balance_controller
     port map (
      aclk => aclk,
      aresetn => aresetn,
      balance(3 downto 0) => balance(9 downto 6),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
