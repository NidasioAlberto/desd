-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Mon Apr  3 15:13:19 2023
-- Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/alberton/Desktop/desd/ColorToGrayscale/ColorToGrayscale.gen/sources_1/bd/design_1/ip/design_1_axi4stream_divisor_0_0/design_1_axi4stream_divisor_0_0_sim_netlist.vhdl
-- Design      : design_1_axi4stream_divisor_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4stream_divisor_0_0_axi4stream_divisor is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    clk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    resetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_axi4stream_divisor_0_0_axi4stream_divisor : entity is "axi4stream_divisor";
end design_1_axi4stream_divisor_0_0_axi4stream_divisor;

architecture STRUCTURE of design_1_axi4stream_divisor_0_0_axi4stream_divisor is
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal in4 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal m_axis_tdata0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sum : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \sum[3]_i_3_n_0\ : STD_LOGIC;
  signal \sum[3]_i_4_n_0\ : STD_LOGIC;
  signal \sum[3]_i_5_n_0\ : STD_LOGIC;
  signal \sum[3]_i_6_n_0\ : STD_LOGIC;
  signal \sum[7]_i_3_n_0\ : STD_LOGIC;
  signal \sum[7]_i_4_n_0\ : STD_LOGIC;
  signal \sum[7]_i_5_n_0\ : STD_LOGIC;
  signal \sum[7]_i_6_n_0\ : STD_LOGIC;
  signal sum_0 : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \sum_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \sum_reg[9]_i_3_n_3\ : STD_LOGIC;
  signal \sum_reg_n_0_[0]\ : STD_LOGIC;
  signal \sum_reg_n_0_[1]\ : STD_LOGIC;
  signal \sum_reg_n_0_[2]\ : STD_LOGIC;
  signal \sum_reg_n_0_[3]\ : STD_LOGIC;
  signal \sum_reg_n_0_[4]\ : STD_LOGIC;
  signal \sum_reg_n_0_[5]\ : STD_LOGIC;
  signal \sum_reg_n_0_[6]\ : STD_LOGIC;
  signal \sum_reg_n_0_[7]\ : STD_LOGIC;
  signal \sum_reg_n_0_[8]\ : STD_LOGIC;
  signal \sum_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_sum_reg[9]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sum_reg[9]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "idle:000,receive_byte_1:001,receive_byte_2:010,receive_byte_3:011,compute:100,transmit:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "idle:000,receive_byte_1:001,receive_byte_2:010,receive_byte_3:011,compute:100,transmit:101,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "idle:000,receive_byte_1:001,receive_byte_2:010,receive_byte_3:011,compute:100,transmit:101,";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_axis_tready_INST_0 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sum[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sum[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sum[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sum[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \sum[5]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sum[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \sum[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sum[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \sum[9]_i_2\ : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \sum_reg[3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[7]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \sum_reg[9]_i_3\ : label is 35;
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => \state__0\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(2),
      O => \state__0\(1)
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5C0C5D5D"
    )
        port map (
      I0 => state(1),
      I1 => s_axis_tvalid,
      I2 => state(2),
      I3 => m_axis_tready,
      I4 => state(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \state__0\(0),
      Q => state(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \state__0\(1),
      Q => state(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => \state__0\(2),
      Q => state(2)
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2BC833E833EC2BC"
    )
        port map (
      I0 => \sum_reg_n_0_[0]\,
      I1 => \sum_reg_n_0_[2]\,
      I2 => p_0_in(2),
      I3 => \sum_reg_n_0_[1]\,
      I4 => \sum_reg_n_0_[3]\,
      I5 => p_0_in(3),
      O => p_0_in(0)
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2BC833E833EC2BC"
    )
        port map (
      I0 => \sum_reg_n_0_[1]\,
      I1 => \sum_reg_n_0_[3]\,
      I2 => p_0_in(3),
      I3 => \sum_reg_n_0_[2]\,
      I4 => \sum_reg_n_0_[4]\,
      I5 => p_0_in(4),
      O => p_0_in(1)
    );
\m_axis_tdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C2BC833E833EC2BC"
    )
        port map (
      I0 => \sum_reg_n_0_[2]\,
      I1 => \sum_reg_n_0_[4]\,
      I2 => p_0_in(4),
      I3 => \sum_reg_n_0_[3]\,
      I4 => \sum_reg_n_0_[5]\,
      I5 => p_0_in(5),
      O => p_0_in(2)
    );
\m_axis_tdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C3BE823C"
    )
        port map (
      I0 => \sum_reg_n_0_[3]\,
      I1 => \sum_reg_n_0_[5]\,
      I2 => p_0_in(5),
      I3 => \sum_reg_n_0_[4]\,
      I4 => p_0_in(4),
      O => p_0_in(3)
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B22CCBB22CCBB22C"
    )
        port map (
      I0 => \sum_reg_n_0_[4]\,
      I1 => \sum_reg_n_0_[6]\,
      I2 => \sum_reg_n_0_[7]\,
      I3 => \sum_reg_n_0_[9]\,
      I4 => \sum_reg_n_0_[8]\,
      I5 => \sum_reg_n_0_[5]\,
      O => p_0_in(4)
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2CB2CB2C"
    )
        port map (
      I0 => \sum_reg_n_0_[5]\,
      I1 => \sum_reg_n_0_[7]\,
      I2 => \sum_reg_n_0_[8]\,
      I3 => \sum_reg_n_0_[9]\,
      I4 => \sum_reg_n_0_[6]\,
      O => p_0_in(5)
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"83E8"
    )
        port map (
      I0 => \sum_reg_n_0_[6]\,
      I1 => \sum_reg_n_0_[7]\,
      I2 => \sum_reg_n_0_[9]\,
      I3 => \sum_reg_n_0_[8]\,
      O => p_0_in(6)
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => state(0),
      I1 => resetn,
      I2 => state(1),
      I3 => state(2),
      O => m_axis_tdata0
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"64"
    )
        port map (
      I0 => \sum_reg_n_0_[8]\,
      I1 => \sum_reg_n_0_[9]\,
      I2 => \sum_reg_n_0_[7]\,
      O => p_0_in(7)
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => p_0_in(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => p_0_in(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => p_0_in(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => p_0_in(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => p_0_in(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => p_0_in(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => p_0_in(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => m_axis_tdata0,
      D => p_0_in(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      O => m_axis_tvalid
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => s_axis_tready
    );
\sum[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in4(0),
      I1 => s_axis_tdata(0),
      I2 => state(1),
      O => sum(0)
    );
\sum[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in4(1),
      I1 => s_axis_tdata(1),
      I2 => state(1),
      O => sum(1)
    );
\sum[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in4(2),
      I1 => s_axis_tdata(2),
      I2 => state(1),
      O => sum(2)
    );
\sum[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in4(3),
      I1 => s_axis_tdata(3),
      I2 => state(1),
      O => sum(3)
    );
\sum[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[3]\,
      I1 => s_axis_tdata(3),
      O => \sum[3]_i_3_n_0\
    );
\sum[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[2]\,
      I1 => s_axis_tdata(2),
      O => \sum[3]_i_4_n_0\
    );
\sum[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[1]\,
      I1 => s_axis_tdata(1),
      O => \sum[3]_i_5_n_0\
    );
\sum[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[0]\,
      I1 => s_axis_tdata(0),
      O => \sum[3]_i_6_n_0\
    );
\sum[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in4(4),
      I1 => s_axis_tdata(4),
      I2 => state(1),
      O => sum(4)
    );
\sum[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in4(5),
      I1 => s_axis_tdata(5),
      I2 => state(1),
      O => sum(5)
    );
\sum[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in4(6),
      I1 => s_axis_tdata(6),
      I2 => state(1),
      O => sum(6)
    );
\sum[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => in4(7),
      I1 => s_axis_tdata(7),
      I2 => state(1),
      O => sum(7)
    );
\sum[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[7]\,
      I1 => s_axis_tdata(7),
      O => \sum[7]_i_3_n_0\
    );
\sum[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[6]\,
      I1 => s_axis_tdata(6),
      O => \sum[7]_i_4_n_0\
    );
\sum[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[5]\,
      I1 => s_axis_tdata(5),
      O => \sum[7]_i_5_n_0\
    );
\sum[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sum_reg_n_0_[4]\,
      I1 => s_axis_tdata(4),
      O => \sum[7]_i_6_n_0\
    );
\sum[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => in4(8),
      O => sum(8)
    );
\sum[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3200"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      I3 => s_axis_tvalid,
      O => sum_0
    );
\sum[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state(1),
      I1 => in4(9),
      O => sum(9)
    );
\sum_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(0),
      Q => \sum_reg_n_0_[0]\
    );
\sum_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(1),
      Q => \sum_reg_n_0_[1]\
    );
\sum_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(2),
      Q => \sum_reg_n_0_[2]\
    );
\sum_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(3),
      Q => \sum_reg_n_0_[3]\
    );
\sum_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \sum_reg[3]_i_2_n_0\,
      CO(2) => \sum_reg[3]_i_2_n_1\,
      CO(1) => \sum_reg[3]_i_2_n_2\,
      CO(0) => \sum_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[3]\,
      DI(2) => \sum_reg_n_0_[2]\,
      DI(1) => \sum_reg_n_0_[1]\,
      DI(0) => \sum_reg_n_0_[0]\,
      O(3 downto 0) => in4(3 downto 0),
      S(3) => \sum[3]_i_3_n_0\,
      S(2) => \sum[3]_i_4_n_0\,
      S(1) => \sum[3]_i_5_n_0\,
      S(0) => \sum[3]_i_6_n_0\
    );
\sum_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(4),
      Q => \sum_reg_n_0_[4]\
    );
\sum_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(5),
      Q => \sum_reg_n_0_[5]\
    );
\sum_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(6),
      Q => \sum_reg_n_0_[6]\
    );
\sum_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(7),
      Q => \sum_reg_n_0_[7]\
    );
\sum_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[3]_i_2_n_0\,
      CO(3) => \sum_reg[7]_i_2_n_0\,
      CO(2) => \sum_reg[7]_i_2_n_1\,
      CO(1) => \sum_reg[7]_i_2_n_2\,
      CO(0) => \sum_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => \sum_reg_n_0_[7]\,
      DI(2) => \sum_reg_n_0_[6]\,
      DI(1) => \sum_reg_n_0_[5]\,
      DI(0) => \sum_reg_n_0_[4]\,
      O(3 downto 0) => in4(7 downto 4),
      S(3) => \sum[7]_i_3_n_0\,
      S(2) => \sum[7]_i_4_n_0\,
      S(1) => \sum[7]_i_5_n_0\,
      S(0) => \sum[7]_i_6_n_0\
    );
\sum_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(8),
      Q => \sum_reg_n_0_[8]\
    );
\sum_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => sum_0,
      CLR => \FSM_sequential_state[2]_i_3_n_0\,
      D => sum(9),
      Q => \sum_reg_n_0_[9]\
    );
\sum_reg[9]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sum_reg[7]_i_2_n_0\,
      CO(3 downto 1) => \NLW_sum_reg[9]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \sum_reg[9]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_sum_reg[9]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in4(9 downto 8),
      S(3 downto 2) => B"00",
      S(1) => \sum_reg_n_0_[9]\,
      S(0) => \sum_reg_n_0_[8]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_axi4stream_divisor_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_axi4stream_divisor_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_axi4stream_divisor_0_0 : entity is "design_1_axi4stream_divisor_0_0,axi4stream_divisor,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_axi4stream_divisor_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_axi4stream_divisor_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_axi4stream_divisor_0_0 : entity is "axi4stream_divisor,Vivado 2020.2";
end design_1_axi4stream_divisor_0_0;

architecture STRUCTURE of design_1_axi4stream_divisor_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
inst: entity work.design_1_axi4stream_divisor_0_0_axi4stream_divisor
     port map (
      clk => clk,
      m_axis_tdata(7 downto 0) => m_axis_tdata(7 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      resetn => resetn,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
