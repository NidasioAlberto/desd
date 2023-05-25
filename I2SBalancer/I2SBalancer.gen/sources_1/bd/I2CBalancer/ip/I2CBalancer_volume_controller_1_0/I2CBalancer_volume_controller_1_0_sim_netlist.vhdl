-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri May 26 01:07:35 2023
-- Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_volume_controller_1_0/I2CBalancer_volume_controller_1_0_sim_netlist.vhdl
-- Design      : I2CBalancer_volume_controller_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_volume_controller_1_0_volume_controller is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tready : in STD_LOGIC;
    volume : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tlast : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of I2CBalancer_volume_controller_1_0_volume_controller : entity is "volume_controller";
end I2CBalancer_volume_controller_1_0_volume_controller;

architecture STRUCTURE of I2CBalancer_volume_controller_1_0_volume_controller is
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal m_axis_tlast0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal tlast : STD_LOGIC;
  signal tlast_i_1_n_0 : STD_LOGIC;
  signal value : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal \value[10]_i_2_n_0\ : STD_LOGIC;
  signal \value[11]_i_2_n_0\ : STD_LOGIC;
  signal \value[12]_i_2_n_0\ : STD_LOGIC;
  signal \value[13]_i_2_n_0\ : STD_LOGIC;
  signal \value[14]_i_2_n_0\ : STD_LOGIC;
  signal \value[15]_i_2_n_0\ : STD_LOGIC;
  signal \value[16]_i_2_n_0\ : STD_LOGIC;
  signal \value[17]_i_2_n_0\ : STD_LOGIC;
  signal \value[18]_i_2_n_0\ : STD_LOGIC;
  signal \value[19]_i_2_n_0\ : STD_LOGIC;
  signal \value[1]_i_2_n_0\ : STD_LOGIC;
  signal \value[20]_i_2_n_0\ : STD_LOGIC;
  signal \value[22]_i_1_n_0\ : STD_LOGIC;
  signal \value[23]_i_1_n_0\ : STD_LOGIC;
  signal \value[23]_i_2_n_0\ : STD_LOGIC;
  signal \value[2]_i_2_n_0\ : STD_LOGIC;
  signal \value[3]_i_2_n_0\ : STD_LOGIC;
  signal \value[4]_i_2_n_0\ : STD_LOGIC;
  signal \value[5]_i_2_n_0\ : STD_LOGIC;
  signal \value[6]_i_2_n_0\ : STD_LOGIC;
  signal \value[7]_i_2_n_0\ : STD_LOGIC;
  signal \value[8]_i_2_n_0\ : STD_LOGIC;
  signal \value[9]_i_2_n_0\ : STD_LOGIC;
  signal \value_reg_n_0_[0]\ : STD_LOGIC;
  signal \value_reg_n_0_[10]\ : STD_LOGIC;
  signal \value_reg_n_0_[11]\ : STD_LOGIC;
  signal \value_reg_n_0_[12]\ : STD_LOGIC;
  signal \value_reg_n_0_[13]\ : STD_LOGIC;
  signal \value_reg_n_0_[14]\ : STD_LOGIC;
  signal \value_reg_n_0_[15]\ : STD_LOGIC;
  signal \value_reg_n_0_[16]\ : STD_LOGIC;
  signal \value_reg_n_0_[17]\ : STD_LOGIC;
  signal \value_reg_n_0_[18]\ : STD_LOGIC;
  signal \value_reg_n_0_[19]\ : STD_LOGIC;
  signal \value_reg_n_0_[1]\ : STD_LOGIC;
  signal \value_reg_n_0_[20]\ : STD_LOGIC;
  signal \value_reg_n_0_[21]\ : STD_LOGIC;
  signal \value_reg_n_0_[2]\ : STD_LOGIC;
  signal \value_reg_n_0_[3]\ : STD_LOGIC;
  signal \value_reg_n_0_[4]\ : STD_LOGIC;
  signal \value_reg_n_0_[5]\ : STD_LOGIC;
  signal \value_reg_n_0_[6]\ : STD_LOGIC;
  signal \value_reg_n_0_[7]\ : STD_LOGIC;
  signal \value_reg_n_0_[8]\ : STD_LOGIC;
  signal \value_reg_n_0_[9]\ : STD_LOGIC;
  signal volume_sign : STD_LOGIC;
  signal volume_sign_i_1_n_0 : STD_LOGIC;
  signal volume_value : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \volume_value[0]_i_1_n_0\ : STD_LOGIC;
  signal \volume_value[1]_i_1_n_0\ : STD_LOGIC;
  signal \volume_value[2]_i_1_n_0\ : STD_LOGIC;
  signal \volume_value[2]_i_2_n_0\ : STD_LOGIC;
  signal \volume_value[2]_i_3_n_0\ : STD_LOGIC;
  signal \volume_value[2]_i_4_n_0\ : STD_LOGIC;
  signal \volume_value_reg_n_0_[0]\ : STD_LOGIC;
  signal \volume_value_reg_n_0_[1]\ : STD_LOGIC;
  signal \volume_value_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_5\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "read:00,write:11,compute_decrease:10,compute_increase:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "read:00,write:11,compute_decrease:10,compute_increase:01";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \value[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \value[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \value[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \value[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \value[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \value[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \value[16]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \value[17]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \value[18]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \value[19]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \value[20]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \value[20]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \value[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \value[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \value[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \value[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \value[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \value[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \value[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \value[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \volume_value[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \volume_value[2]_i_2\ : label is "soft_lutpair2";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => volume_sign,
      I1 => state(1),
      I2 => state(0),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F05500CCF0FFFFCC"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_4_n_0\,
      I1 => s_axis_tvalid,
      I2 => m_axis_tready,
      I3 => state(1),
      I4 => state(0),
      I5 => \FSM_sequential_state[1]_i_5_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3D"
    )
        port map (
      I0 => volume_sign,
      I1 => state(1),
      I2 => state(0),
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => p_0_in,
      I1 => p_1_in,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \volume_value_reg_n_0_[1]\,
      I1 => \volume_value_reg_n_0_[0]\,
      I2 => \volume_value_reg_n_0_[2]\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      CLR => \FSM_sequential_state[1]_i_3_n_0\,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      CLR => \FSM_sequential_state[1]_i_3_n_0\,
      D => \state__0\(1),
      Q => state(1)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[0]\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[10]\,
      Q => m_axis_tdata(10),
      R => '0'
    );
\m_axis_tdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[11]\,
      Q => m_axis_tdata(11),
      R => '0'
    );
\m_axis_tdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[12]\,
      Q => m_axis_tdata(12),
      R => '0'
    );
\m_axis_tdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[13]\,
      Q => m_axis_tdata(13),
      R => '0'
    );
\m_axis_tdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[14]\,
      Q => m_axis_tdata(14),
      R => '0'
    );
\m_axis_tdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[15]\,
      Q => m_axis_tdata(15),
      R => '0'
    );
\m_axis_tdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[16]\,
      Q => m_axis_tdata(16),
      R => '0'
    );
\m_axis_tdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[17]\,
      Q => m_axis_tdata(17),
      R => '0'
    );
\m_axis_tdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[18]\,
      Q => m_axis_tdata(18),
      R => '0'
    );
\m_axis_tdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[19]\,
      Q => m_axis_tdata(19),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[1]\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[20]\,
      Q => m_axis_tdata(20),
      R => '0'
    );
\m_axis_tdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[21]\,
      Q => m_axis_tdata(21),
      R => '0'
    );
\m_axis_tdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => p_0_in,
      Q => m_axis_tdata(22),
      R => '0'
    );
\m_axis_tdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => p_1_in,
      Q => m_axis_tdata(23),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[2]\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[3]\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[4]\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[5]\,
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[6]\,
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[7]\,
      Q => m_axis_tdata(7),
      R => '0'
    );
\m_axis_tdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[8]\,
      Q => m_axis_tdata(8),
      R => '0'
    );
\m_axis_tdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tlast0,
      D => \value_reg_n_0_[9]\,
      Q => m_axis_tdata(9),
      R => '0'
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => aresetn,
      I1 => m_axis_tready,
      I2 => state(0),
      I3 => state(1),
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
m_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => s_axis_tready
    );
tlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => s_axis_tlast,
      I1 => aresetn,
      I2 => state(1),
      I3 => state(0),
      I4 => s_axis_tvalid,
      I5 => tlast,
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
\value[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B88BBBB8B888888"
    )
        port map (
      I0 => \value_reg_n_0_[1]\,
      I1 => state(1),
      I2 => p_1_in,
      I3 => p_0_in,
      I4 => state(0),
      I5 => s_axis_tdata(0),
      O => value(0)
    );
\value[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[11]\,
      I1 => state(1),
      I2 => \value[10]_i_2_n_0\,
      O => value(10)
    );
\value[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[9]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(10),
      O => \value[10]_i_2_n_0\
    );
\value[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[12]\,
      I1 => state(1),
      I2 => \value[11]_i_2_n_0\,
      O => value(11)
    );
\value[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[10]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(11),
      O => \value[11]_i_2_n_0\
    );
\value[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[13]\,
      I1 => state(1),
      I2 => \value[12]_i_2_n_0\,
      O => value(12)
    );
\value[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[11]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(12),
      O => \value[12]_i_2_n_0\
    );
\value[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[14]\,
      I1 => state(1),
      I2 => \value[13]_i_2_n_0\,
      O => value(13)
    );
\value[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[12]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(13),
      O => \value[13]_i_2_n_0\
    );
\value[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[15]\,
      I1 => state(1),
      I2 => \value[14]_i_2_n_0\,
      O => value(14)
    );
\value[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[13]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(14),
      O => \value[14]_i_2_n_0\
    );
\value[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[16]\,
      I1 => state(1),
      I2 => \value[15]_i_2_n_0\,
      O => value(15)
    );
\value[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[14]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(15),
      O => \value[15]_i_2_n_0\
    );
\value[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[17]\,
      I1 => state(1),
      I2 => \value[16]_i_2_n_0\,
      O => value(16)
    );
\value[16]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[15]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(16),
      O => \value[16]_i_2_n_0\
    );
\value[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[18]\,
      I1 => state(1),
      I2 => \value[17]_i_2_n_0\,
      O => value(17)
    );
\value[17]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[16]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(17),
      O => \value[17]_i_2_n_0\
    );
\value[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[19]\,
      I1 => state(1),
      I2 => \value[18]_i_2_n_0\,
      O => value(18)
    );
\value[18]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[17]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(18),
      O => \value[18]_i_2_n_0\
    );
\value[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[20]\,
      I1 => state(1),
      I2 => \value[19]_i_2_n_0\,
      O => value(19)
    );
\value[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[18]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(19),
      O => \value[19]_i_2_n_0\
    );
\value[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[2]\,
      I1 => state(1),
      I2 => \value[1]_i_2_n_0\,
      O => value(1)
    );
\value[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[0]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(1),
      O => \value[1]_i_2_n_0\
    );
\value[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[21]\,
      I1 => state(1),
      I2 => \value[20]_i_2_n_0\,
      O => value(20)
    );
\value[20]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[19]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(20),
      O => \value[20]_i_2_n_0\
    );
\value[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0F4F5F5E0F4A0A0"
    )
        port map (
      I0 => state(1),
      I1 => \value_reg_n_0_[20]\,
      I2 => p_0_in,
      I3 => p_1_in,
      I4 => state(0),
      I5 => s_axis_tdata(21),
      O => value(21)
    );
\value[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30E20000"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => state(1),
      I2 => \FSM_sequential_state[1]_i_5_n_0\,
      I3 => state(0),
      I4 => aresetn,
      O => \value[22]_i_1_n_0\
    );
\value[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA54FF55EA54AA00"
    )
        port map (
      I0 => state(1),
      I1 => \value_reg_n_0_[21]\,
      I2 => p_0_in,
      I3 => p_1_in,
      I4 => state(0),
      I5 => s_axis_tdata(22),
      O => value(22)
    );
\value[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => state(0),
      I1 => s_axis_tdata(23),
      I2 => \value[23]_i_2_n_0\,
      I3 => aresetn,
      I4 => p_1_in,
      O => \value[23]_i_1_n_0\
    );
\value[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEEEEEE2"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => state(0),
      I2 => \volume_value_reg_n_0_[2]\,
      I3 => \volume_value_reg_n_0_[0]\,
      I4 => \volume_value_reg_n_0_[1]\,
      I5 => state(1),
      O => \value[23]_i_2_n_0\
    );
\value[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[3]\,
      I1 => state(1),
      I2 => \value[2]_i_2_n_0\,
      O => value(2)
    );
\value[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[1]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(2),
      O => \value[2]_i_2_n_0\
    );
\value[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[4]\,
      I1 => state(1),
      I2 => \value[3]_i_2_n_0\,
      O => value(3)
    );
\value[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[2]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(3),
      O => \value[3]_i_2_n_0\
    );
\value[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[5]\,
      I1 => state(1),
      I2 => \value[4]_i_2_n_0\,
      O => value(4)
    );
\value[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[3]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(4),
      O => \value[4]_i_2_n_0\
    );
\value[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[6]\,
      I1 => state(1),
      I2 => \value[5]_i_2_n_0\,
      O => value(5)
    );
\value[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[4]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(5),
      O => \value[5]_i_2_n_0\
    );
\value[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[7]\,
      I1 => state(1),
      I2 => \value[6]_i_2_n_0\,
      O => value(6)
    );
\value[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[5]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(6),
      O => \value[6]_i_2_n_0\
    );
\value[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[8]\,
      I1 => state(1),
      I2 => \value[7]_i_2_n_0\,
      O => value(7)
    );
\value[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[6]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(7),
      O => \value[7]_i_2_n_0\
    );
\value[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[9]\,
      I1 => state(1),
      I2 => \value[8]_i_2_n_0\,
      O => value(8)
    );
\value[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[7]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(8),
      O => \value[8]_i_2_n_0\
    );
\value[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \value_reg_n_0_[10]\,
      I1 => state(1),
      I2 => \value[9]_i_2_n_0\,
      O => value(9)
    );
\value[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EFF8E00"
    )
        port map (
      I0 => \value_reg_n_0_[8]\,
      I1 => p_0_in,
      I2 => p_1_in,
      I3 => state(0),
      I4 => s_axis_tdata(9),
      O => \value[9]_i_2_n_0\
    );
\value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(0),
      Q => \value_reg_n_0_[0]\,
      R => '0'
    );
\value_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(10),
      Q => \value_reg_n_0_[10]\,
      R => '0'
    );
\value_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(11),
      Q => \value_reg_n_0_[11]\,
      R => '0'
    );
\value_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(12),
      Q => \value_reg_n_0_[12]\,
      R => '0'
    );
\value_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(13),
      Q => \value_reg_n_0_[13]\,
      R => '0'
    );
\value_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(14),
      Q => \value_reg_n_0_[14]\,
      R => '0'
    );
\value_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(15),
      Q => \value_reg_n_0_[15]\,
      R => '0'
    );
\value_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(16),
      Q => \value_reg_n_0_[16]\,
      R => '0'
    );
\value_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(17),
      Q => \value_reg_n_0_[17]\,
      R => '0'
    );
\value_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(18),
      Q => \value_reg_n_0_[18]\,
      R => '0'
    );
\value_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(19),
      Q => \value_reg_n_0_[19]\,
      R => '0'
    );
\value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(1),
      Q => \value_reg_n_0_[1]\,
      R => '0'
    );
\value_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(20),
      Q => \value_reg_n_0_[20]\,
      R => '0'
    );
\value_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(21),
      Q => \value_reg_n_0_[21]\,
      R => '0'
    );
\value_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(22),
      Q => p_0_in,
      R => '0'
    );
\value_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \value[23]_i_1_n_0\,
      Q => p_1_in,
      R => '0'
    );
\value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(2),
      Q => \value_reg_n_0_[2]\,
      R => '0'
    );
\value_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(3),
      Q => \value_reg_n_0_[3]\,
      R => '0'
    );
\value_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(4),
      Q => \value_reg_n_0_[4]\,
      R => '0'
    );
\value_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(5),
      Q => \value_reg_n_0_[5]\,
      R => '0'
    );
\value_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(6),
      Q => \value_reg_n_0_[6]\,
      R => '0'
    );
\value_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(7),
      Q => \value_reg_n_0_[7]\,
      R => '0'
    );
\value_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(8),
      Q => \value_reg_n_0_[8]\,
      R => '0'
    );
\value_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \value[22]_i_1_n_0\,
      D => value(9),
      Q => \value_reg_n_0_[9]\,
      R => '0'
    );
volume_sign_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => volume(3),
      I1 => aresetn,
      I2 => state(1),
      I3 => state(0),
      I4 => s_axis_tvalid,
      I5 => volume_sign,
      O => volume_sign_i_1_n_0
    );
volume_sign_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => volume_sign_i_1_n_0,
      Q => volume_sign,
      R => '0'
    );
\volume_value[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => volume_value(0),
      I1 => aresetn,
      I2 => \volume_value[2]_i_4_n_0\,
      I3 => \volume_value_reg_n_0_[0]\,
      O => \volume_value[0]_i_1_n_0\
    );
\volume_value[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"37323237"
    )
        port map (
      I0 => state(1),
      I1 => \volume_value_reg_n_0_[0]\,
      I2 => state(0),
      I3 => volume(3),
      I4 => volume(0),
      O => volume_value(0)
    );
\volume_value[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => volume_value(1),
      I1 => aresetn,
      I2 => \volume_value[2]_i_4_n_0\,
      I3 => \volume_value_reg_n_0_[1]\,
      O => \volume_value[1]_i_1_n_0\
    );
\volume_value[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C3D7C382C382C3D7"
    )
        port map (
      I0 => state(1),
      I1 => \volume_value_reg_n_0_[0]\,
      I2 => \volume_value_reg_n_0_[1]\,
      I3 => state(0),
      I4 => volume(3),
      I5 => volume(1),
      O => volume_value(1)
    );
\volume_value[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFFFFFB8000000"
    )
        port map (
      I0 => \volume_value[2]_i_2_n_0\,
      I1 => state(1),
      I2 => \volume_value[2]_i_3_n_0\,
      I3 => aresetn,
      I4 => \volume_value[2]_i_4_n_0\,
      I5 => \volume_value_reg_n_0_[2]\,
      O => \volume_value[2]_i_1_n_0\
    );
\volume_value[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \volume_value_reg_n_0_[1]\,
      I1 => \volume_value_reg_n_0_[0]\,
      I2 => \volume_value_reg_n_0_[2]\,
      O => \volume_value[2]_i_2_n_0\
    );
\volume_value[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1FFE100E100E1FF"
    )
        port map (
      I0 => \volume_value_reg_n_0_[1]\,
      I1 => \volume_value_reg_n_0_[0]\,
      I2 => \volume_value_reg_n_0_[2]\,
      I3 => state(0),
      I4 => volume(3),
      I5 => volume(2),
      O => \volume_value[2]_i_3_n_0\
    );
\volume_value[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5554FFFD5554AAA8"
    )
        port map (
      I0 => state(0),
      I1 => \volume_value_reg_n_0_[1]\,
      I2 => \volume_value_reg_n_0_[0]\,
      I3 => \volume_value_reg_n_0_[2]\,
      I4 => state(1),
      I5 => s_axis_tvalid,
      O => \volume_value[2]_i_4_n_0\
    );
\volume_value_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \volume_value[0]_i_1_n_0\,
      Q => \volume_value_reg_n_0_[0]\,
      R => '0'
    );
\volume_value_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \volume_value[1]_i_1_n_0\,
      Q => \volume_value_reg_n_0_[1]\,
      R => '0'
    );
\volume_value_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \volume_value[2]_i_1_n_0\,
      Q => \volume_value_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer_volume_controller_1_0 is
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
    volume : in STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of I2CBalancer_volume_controller_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of I2CBalancer_volume_controller_1_0 : entity is "I2CBalancer_volume_controller_1_0,volume_controller,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of I2CBalancer_volume_controller_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of I2CBalancer_volume_controller_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of I2CBalancer_volume_controller_1_0 : entity is "volume_controller,Vivado 2020.2";
end I2CBalancer_volume_controller_1_0;

architecture STRUCTURE of I2CBalancer_volume_controller_1_0 is
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
U0: entity work.I2CBalancer_volume_controller_1_0_volume_controller
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      volume(3 downto 0) => volume(9 downto 6)
    );
end STRUCTURE;
