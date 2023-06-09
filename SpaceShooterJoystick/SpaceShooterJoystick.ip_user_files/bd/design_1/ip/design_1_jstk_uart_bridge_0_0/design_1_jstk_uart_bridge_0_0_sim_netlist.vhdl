-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed Apr 19 16:02:32 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/SpaceShooterJoystick/SpaceShooterJoystick.gen/sources_1/bd/design_1/ip/design_1_jstk_uart_bridge_0_0/design_1_jstk_uart_bridge_0_0_sim_netlist.vhdl}
-- Design      : design_1_jstk_uart_bridge_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_jstk_uart_bridge_0_0_jstk_uart_bridge is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 5 downto 0 );
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    jstk_y : in STD_LOGIC_VECTOR ( 2 downto 0 );
    jstk_x : in STD_LOGIC_VECTOR ( 2 downto 0 );
    btn_jstk : in STD_LOGIC;
    btn_trigger : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_jstk_uart_bridge_0_0_jstk_uart_bridge : entity is "jstk_uart_bridge";
end design_1_jstk_uart_bridge_0_0_jstk_uart_bridge;

architecture STRUCTURE of design_1_jstk_uart_bridge_0_0_jstk_uart_bridge is
  signal \FSM_sequential_rx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_tx_state[2]_i_2_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 26 downto 1 );
  signal delay_counter : STD_LOGIC_VECTOR ( 26 downto 0 );
  signal \delay_counter0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__3_n_0\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__3_n_1\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__3_n_2\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__3_n_3\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__4_n_0\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__4_n_1\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__4_n_2\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__4_n_3\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry__5_n_3\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \delay_counter0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \delay_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[25]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[26]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \delay_counter[9]_i_1_n_0\ : STD_LOGIC;
  signal led_b0 : STD_LOGIC;
  signal led_g0 : STD_LOGIC;
  signal led_r0 : STD_LOGIC;
  signal m_axis_tdata0 : STD_LOGIC;
  signal \m_axis_tdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[7]_i_9_n_0\ : STD_LOGIC;
  signal rx_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_delay_counter0_inferred__0/i__carry__5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_delay_counter0_inferred__0/i__carry__5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[0]\ : label is "get_led_r:01,get_led_g:10,get_header:00,get_led_b:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rx_state_reg[1]\ : label is "get_led_r:01,get_led_g:10,get_header:00,get_led_b:11";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_tx_state[1]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[0]\ : label is "delay:100,send_header:000,send_jstk_x:001,send_jstk_y:010,send_buttons:011,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[1]\ : label is "delay:100,send_header:000,send_jstk_x:001,send_jstk_y:010,send_buttons:011,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_tx_state_reg[2]\ : label is "delay:100,send_header:000,send_jstk_x:001,send_jstk_y:010,send_buttons:011,";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \delay_counter0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_inferred__0/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_inferred__0/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_inferred__0/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_inferred__0/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \delay_counter0_inferred__0/i__carry__5\ : label is 35;
  attribute SOFT_HLUTNM of \delay_counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \delay_counter[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \delay_counter[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \delay_counter[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \delay_counter[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \delay_counter[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \delay_counter[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \delay_counter[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \delay_counter[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \delay_counter[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \delay_counter[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \delay_counter[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \delay_counter[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \delay_counter[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \delay_counter[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \delay_counter[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \delay_counter[24]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \delay_counter[25]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \delay_counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \delay_counter[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \delay_counter[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \delay_counter[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \delay_counter[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \delay_counter[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \delay_counter[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \delay_counter[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of m_axis_tvalid_INST_0 : label is "soft_lutpair1";
begin
\FSM_sequential_rx_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22222232CCCCCCCC"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      I2 => \FSM_sequential_rx_state[0]_i_2_n_0\,
      I3 => s_axis_tdata(1),
      I4 => s_axis_tdata(0),
      I5 => s_axis_tvalid,
      O => \FSM_sequential_rx_state[0]_i_1_n_0\
    );
\FSM_sequential_rx_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => s_axis_tdata(4),
      I1 => s_axis_tdata(5),
      I2 => s_axis_tdata(2),
      I3 => s_axis_tdata(3),
      I4 => s_axis_tdata(7),
      I5 => s_axis_tdata(6),
      O => \FSM_sequential_rx_state[0]_i_2_n_0\
    );
\FSM_sequential_rx_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      I2 => s_axis_tvalid,
      O => \FSM_sequential_rx_state[1]_i_1_n_0\
    );
\FSM_sequential_rx_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \FSM_sequential_rx_state[0]_i_1_n_0\,
      Q => rx_state(0)
    );
\FSM_sequential_rx_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \FSM_sequential_rx_state[1]_i_1_n_0\,
      Q => rx_state(1)
    );
\FSM_sequential_tx_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \tx_state__0\(0),
      I1 => \tx_state__0\(2),
      I2 => m_axis_tready,
      O => \FSM_sequential_tx_state[0]_i_1_n_0\
    );
\FSM_sequential_tx_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => \tx_state__0\(1),
      I1 => \tx_state__0\(0),
      I2 => \tx_state__0\(2),
      I3 => m_axis_tready,
      O => \FSM_sequential_tx_state[1]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEF000FFFE0000"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_3_n_0\,
      I1 => delay_counter(0),
      I2 => \tx_state__0\(1),
      I3 => \tx_state__0\(0),
      I4 => \tx_state__0\(2),
      I5 => m_axis_tready,
      O => \FSM_sequential_tx_state[2]_i_1_n_0\
    );
\FSM_sequential_tx_state[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \FSM_sequential_tx_state[2]_i_2_n_0\
    );
\FSM_sequential_tx_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \FSM_sequential_tx_state[0]_i_1_n_0\,
      Q => \tx_state__0\(0)
    );
\FSM_sequential_tx_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \FSM_sequential_tx_state[1]_i_1_n_0\,
      Q => \tx_state__0\(1)
    );
\FSM_sequential_tx_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \FSM_sequential_tx_state[2]_i_1_n_0\,
      Q => \tx_state__0\(2)
    );
\delay_counter0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \delay_counter0_inferred__0/i__carry_n_0\,
      CO(2) => \delay_counter0_inferred__0/i__carry_n_1\,
      CO(1) => \delay_counter0_inferred__0/i__carry_n_2\,
      CO(0) => \delay_counter0_inferred__0/i__carry_n_3\,
      CYINIT => delay_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => delay_counter(4 downto 1)
    );
\delay_counter0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_inferred__0/i__carry_n_0\,
      CO(3) => \delay_counter0_inferred__0/i__carry__0_n_0\,
      CO(2) => \delay_counter0_inferred__0/i__carry__0_n_1\,
      CO(1) => \delay_counter0_inferred__0/i__carry__0_n_2\,
      CO(0) => \delay_counter0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => delay_counter(8 downto 5)
    );
\delay_counter0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_inferred__0/i__carry__0_n_0\,
      CO(3) => \delay_counter0_inferred__0/i__carry__1_n_0\,
      CO(2) => \delay_counter0_inferred__0/i__carry__1_n_1\,
      CO(1) => \delay_counter0_inferred__0/i__carry__1_n_2\,
      CO(0) => \delay_counter0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => delay_counter(12 downto 9)
    );
\delay_counter0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_inferred__0/i__carry__1_n_0\,
      CO(3) => \delay_counter0_inferred__0/i__carry__2_n_0\,
      CO(2) => \delay_counter0_inferred__0/i__carry__2_n_1\,
      CO(1) => \delay_counter0_inferred__0/i__carry__2_n_2\,
      CO(0) => \delay_counter0_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => delay_counter(16 downto 13)
    );
\delay_counter0_inferred__0/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_inferred__0/i__carry__2_n_0\,
      CO(3) => \delay_counter0_inferred__0/i__carry__3_n_0\,
      CO(2) => \delay_counter0_inferred__0/i__carry__3_n_1\,
      CO(1) => \delay_counter0_inferred__0/i__carry__3_n_2\,
      CO(0) => \delay_counter0_inferred__0/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => delay_counter(20 downto 17)
    );
\delay_counter0_inferred__0/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_inferred__0/i__carry__3_n_0\,
      CO(3) => \delay_counter0_inferred__0/i__carry__4_n_0\,
      CO(2) => \delay_counter0_inferred__0/i__carry__4_n_1\,
      CO(1) => \delay_counter0_inferred__0/i__carry__4_n_2\,
      CO(0) => \delay_counter0_inferred__0/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => delay_counter(24 downto 21)
    );
\delay_counter0_inferred__0/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \delay_counter0_inferred__0/i__carry__4_n_0\,
      CO(3 downto 1) => \NLW_delay_counter0_inferred__0/i__carry__5_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \delay_counter0_inferred__0/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_delay_counter0_inferred__0/i__carry__5_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => data0(26 downto 25),
      S(3 downto 2) => B"00",
      S(1 downto 0) => delay_counter(26 downto 25)
    );
\delay_counter[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_3_n_0\,
      I1 => delay_counter(0),
      O => \delay_counter[0]_i_1_n_0\
    );
\delay_counter[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(10),
      O => \delay_counter[10]_i_1_n_0\
    );
\delay_counter[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(11),
      O => \delay_counter[11]_i_1_n_0\
    );
\delay_counter[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(12),
      O => \delay_counter[12]_i_1_n_0\
    );
\delay_counter[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(13),
      O => \delay_counter[13]_i_1_n_0\
    );
\delay_counter[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(14),
      O => \delay_counter[14]_i_1_n_0\
    );
\delay_counter[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(15),
      O => \delay_counter[15]_i_1_n_0\
    );
\delay_counter[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(16),
      O => \delay_counter[16]_i_1_n_0\
    );
\delay_counter[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(17),
      O => \delay_counter[17]_i_1_n_0\
    );
\delay_counter[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(18),
      O => \delay_counter[18]_i_1_n_0\
    );
\delay_counter[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(19),
      O => \delay_counter[19]_i_1_n_0\
    );
\delay_counter[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(1),
      O => \delay_counter[1]_i_1_n_0\
    );
\delay_counter[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(20),
      O => \delay_counter[20]_i_1_n_0\
    );
\delay_counter[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(21),
      O => \delay_counter[21]_i_1_n_0\
    );
\delay_counter[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(22),
      O => \delay_counter[22]_i_1_n_0\
    );
\delay_counter[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(23),
      O => \delay_counter[23]_i_1_n_0\
    );
\delay_counter[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(24),
      O => \delay_counter[24]_i_1_n_0\
    );
\delay_counter[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(25),
      O => \delay_counter[25]_i_1_n_0\
    );
\delay_counter[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(26),
      O => \delay_counter[26]_i_1_n_0\
    );
\delay_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(2),
      O => \delay_counter[2]_i_1_n_0\
    );
\delay_counter[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(3),
      O => \delay_counter[3]_i_1_n_0\
    );
\delay_counter[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(4),
      O => \delay_counter[4]_i_1_n_0\
    );
\delay_counter[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(5),
      O => \delay_counter[5]_i_1_n_0\
    );
\delay_counter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(6),
      O => \delay_counter[6]_i_1_n_0\
    );
\delay_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(7),
      O => \delay_counter[7]_i_1_n_0\
    );
\delay_counter[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(8),
      O => \delay_counter[8]_i_1_n_0\
    );
\delay_counter[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => delay_counter(0),
      I1 => \m_axis_tdata[7]_i_3_n_0\,
      I2 => data0(9),
      O => \delay_counter[9]_i_1_n_0\
    );
\delay_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[0]_i_1_n_0\,
      Q => delay_counter(0)
    );
\delay_counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[10]_i_1_n_0\,
      Q => delay_counter(10)
    );
\delay_counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[11]_i_1_n_0\,
      Q => delay_counter(11)
    );
\delay_counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[12]_i_1_n_0\,
      Q => delay_counter(12)
    );
\delay_counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[13]_i_1_n_0\,
      Q => delay_counter(13)
    );
\delay_counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[14]_i_1_n_0\,
      Q => delay_counter(14)
    );
\delay_counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[15]_i_1_n_0\,
      Q => delay_counter(15)
    );
\delay_counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[16]_i_1_n_0\,
      Q => delay_counter(16)
    );
\delay_counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[17]_i_1_n_0\,
      Q => delay_counter(17)
    );
\delay_counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[18]_i_1_n_0\,
      Q => delay_counter(18)
    );
\delay_counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[19]_i_1_n_0\,
      Q => delay_counter(19)
    );
\delay_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[1]_i_1_n_0\,
      Q => delay_counter(1)
    );
\delay_counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[20]_i_1_n_0\,
      Q => delay_counter(20)
    );
\delay_counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[21]_i_1_n_0\,
      Q => delay_counter(21)
    );
\delay_counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[22]_i_1_n_0\,
      Q => delay_counter(22)
    );
\delay_counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[23]_i_1_n_0\,
      Q => delay_counter(23)
    );
\delay_counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[24]_i_1_n_0\,
      Q => delay_counter(24)
    );
\delay_counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[25]_i_1_n_0\,
      Q => delay_counter(25)
    );
\delay_counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[26]_i_1_n_0\,
      Q => delay_counter(26)
    );
\delay_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[2]_i_1_n_0\,
      Q => delay_counter(2)
    );
\delay_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[3]_i_1_n_0\,
      Q => delay_counter(3)
    );
\delay_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[4]_i_1_n_0\,
      Q => delay_counter(4)
    );
\delay_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[5]_i_1_n_0\,
      Q => delay_counter(5)
    );
\delay_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[6]_i_1_n_0\,
      Q => delay_counter(6)
    );
\delay_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[7]_i_1_n_0\,
      Q => delay_counter(7)
    );
\delay_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[8]_i_1_n_0\,
      Q => delay_counter(8)
    );
\delay_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => aclk,
      CE => \m_axis_tdata[7]_i_2_n_0\,
      CLR => \FSM_sequential_tx_state[2]_i_2_n_0\,
      D => \delay_counter[9]_i_1_n_0\,
      Q => delay_counter(9)
    );
\led_b[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => aresetn,
      I1 => rx_state(0),
      I2 => s_axis_tvalid,
      I3 => rx_state(1),
      O => led_b0
    );
\led_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b0,
      D => s_axis_tdata(0),
      Q => led_b(0),
      R => '0'
    );
\led_b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b0,
      D => s_axis_tdata(1),
      Q => led_b(1),
      R => '0'
    );
\led_b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b0,
      D => s_axis_tdata(2),
      Q => led_b(2),
      R => '0'
    );
\led_b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b0,
      D => s_axis_tdata(3),
      Q => led_b(3),
      R => '0'
    );
\led_b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b0,
      D => s_axis_tdata(4),
      Q => led_b(4),
      R => '0'
    );
\led_b_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b0,
      D => s_axis_tdata(5),
      Q => led_b(5),
      R => '0'
    );
\led_b_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b0,
      D => s_axis_tdata(6),
      Q => led_b(6),
      R => '0'
    );
\led_b_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_b0,
      D => s_axis_tdata(7),
      Q => led_b(7),
      R => '0'
    );
\led_g[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => rx_state(0),
      I1 => aresetn,
      I2 => s_axis_tvalid,
      I3 => rx_state(1),
      O => led_g0
    );
\led_g_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g0,
      D => s_axis_tdata(0),
      Q => led_g(0),
      R => '0'
    );
\led_g_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g0,
      D => s_axis_tdata(1),
      Q => led_g(1),
      R => '0'
    );
\led_g_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g0,
      D => s_axis_tdata(2),
      Q => led_g(2),
      R => '0'
    );
\led_g_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g0,
      D => s_axis_tdata(3),
      Q => led_g(3),
      R => '0'
    );
\led_g_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g0,
      D => s_axis_tdata(4),
      Q => led_g(4),
      R => '0'
    );
\led_g_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g0,
      D => s_axis_tdata(5),
      Q => led_g(5),
      R => '0'
    );
\led_g_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g0,
      D => s_axis_tdata(6),
      Q => led_g(6),
      R => '0'
    );
\led_g_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_g0,
      D => s_axis_tdata(7),
      Q => led_g(7),
      R => '0'
    );
\led_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => rx_state(1),
      I1 => rx_state(0),
      I2 => aresetn,
      I3 => s_axis_tvalid,
      O => led_r0
    );
\led_r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r0,
      D => s_axis_tdata(0),
      Q => led_r(0),
      R => '0'
    );
\led_r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r0,
      D => s_axis_tdata(1),
      Q => led_r(1),
      R => '0'
    );
\led_r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r0,
      D => s_axis_tdata(2),
      Q => led_r(2),
      R => '0'
    );
\led_r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r0,
      D => s_axis_tdata(3),
      Q => led_r(3),
      R => '0'
    );
\led_r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r0,
      D => s_axis_tdata(4),
      Q => led_r(4),
      R => '0'
    );
\led_r_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r0,
      D => s_axis_tdata(5),
      Q => led_r(5),
      R => '0'
    );
\led_r_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r0,
      D => s_axis_tdata(6),
      Q => led_r(6),
      R => '0'
    );
\led_r_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => led_r0,
      D => s_axis_tdata(7),
      Q => led_r(7),
      R => '0'
    );
\m_axis_tdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \tx_state__0\(2),
      I1 => \tx_state__0\(1),
      I2 => btn_jstk,
      O => \m_axis_tdata[0]_i_1_n_0\
    );
\m_axis_tdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \tx_state__0\(2),
      I1 => \tx_state__0\(1),
      I2 => btn_trigger,
      O => \m_axis_tdata[1]_i_1_n_0\
    );
\m_axis_tdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => jstk_y(0),
      I1 => \tx_state__0\(0),
      I2 => \tx_state__0\(1),
      I3 => jstk_x(0),
      I4 => \tx_state__0\(2),
      O => \m_axis_tdata[4]_i_1_n_0\
    );
\m_axis_tdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => jstk_y(1),
      I1 => \tx_state__0\(0),
      I2 => \tx_state__0\(1),
      I3 => jstk_x(1),
      I4 => \tx_state__0\(2),
      O => \m_axis_tdata[5]_i_1_n_0\
    );
\m_axis_tdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000F0C0A"
    )
        port map (
      I0 => jstk_x(2),
      I1 => jstk_y(2),
      I2 => \tx_state__0\(1),
      I3 => \tx_state__0\(0),
      I4 => \tx_state__0\(2),
      O => \m_axis_tdata[6]_i_1_n_0\
    );
\m_axis_tdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF1000"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_3_n_0\,
      I1 => delay_counter(0),
      I2 => \m_axis_tdata[7]_i_2_n_0\,
      I3 => aresetn,
      I4 => \m_axis_tdata[7]_i_4_n_0\,
      O => m_axis_tdata0
    );
\m_axis_tdata[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => delay_counter(25),
      I1 => delay_counter(26),
      I2 => delay_counter(23),
      I3 => delay_counter(24),
      I4 => delay_counter(2),
      I5 => delay_counter(1),
      O => \m_axis_tdata[7]_i_10_n_0\
    );
\m_axis_tdata[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \tx_state__0\(1),
      I1 => \tx_state__0\(0),
      I2 => \tx_state__0\(2),
      O => \m_axis_tdata[7]_i_2_n_0\
    );
\m_axis_tdata[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[7]_i_5_n_0\,
      I1 => \m_axis_tdata[7]_i_6_n_0\,
      I2 => \m_axis_tdata[7]_i_7_n_0\,
      I3 => \m_axis_tdata[7]_i_8_n_0\,
      I4 => \m_axis_tdata[7]_i_9_n_0\,
      I5 => \m_axis_tdata[7]_i_10_n_0\,
      O => \m_axis_tdata[7]_i_3_n_0\
    );
\m_axis_tdata[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080808"
    )
        port map (
      I0 => aresetn,
      I1 => m_axis_tready,
      I2 => \tx_state__0\(2),
      I3 => \tx_state__0\(1),
      I4 => \tx_state__0\(0),
      O => \m_axis_tdata[7]_i_4_n_0\
    );
\m_axis_tdata[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => delay_counter(16),
      I1 => delay_counter(15),
      I2 => delay_counter(18),
      I3 => delay_counter(17),
      O => \m_axis_tdata[7]_i_5_n_0\
    );
\m_axis_tdata[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => delay_counter(19),
      I1 => delay_counter(20),
      I2 => delay_counter(22),
      I3 => delay_counter(21),
      O => \m_axis_tdata[7]_i_6_n_0\
    );
\m_axis_tdata[7]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => delay_counter(8),
      I1 => delay_counter(7),
      I2 => delay_counter(9),
      I3 => delay_counter(10),
      O => \m_axis_tdata[7]_i_7_n_0\
    );
\m_axis_tdata[7]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => delay_counter(12),
      I1 => delay_counter(11),
      I2 => delay_counter(14),
      I3 => delay_counter(13),
      O => \m_axis_tdata[7]_i_8_n_0\
    );
\m_axis_tdata[7]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => delay_counter(4),
      I1 => delay_counter(3),
      I2 => delay_counter(6),
      I3 => delay_counter(5),
      O => \m_axis_tdata[7]_i_9_n_0\
    );
\m_axis_tdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[0]_i_1_n_0\,
      Q => m_axis_tdata(0),
      R => '0'
    );
\m_axis_tdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[1]_i_1_n_0\,
      Q => m_axis_tdata(1),
      R => '0'
    );
\m_axis_tdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[4]_i_1_n_0\,
      Q => m_axis_tdata(2),
      R => '0'
    );
\m_axis_tdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[5]_i_1_n_0\,
      Q => m_axis_tdata(3),
      R => '0'
    );
\m_axis_tdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[6]_i_1_n_0\,
      Q => m_axis_tdata(4),
      R => '0'
    );
\m_axis_tdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => m_axis_tdata0,
      D => \m_axis_tdata[7]_i_2_n_0\,
      Q => m_axis_tdata(5),
      R => '0'
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \tx_state__0\(2),
      O => m_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_jstk_uart_bridge_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tready : out STD_LOGIC;
    jstk_x : in STD_LOGIC_VECTOR ( 9 downto 0 );
    jstk_y : in STD_LOGIC_VECTOR ( 9 downto 0 );
    btn_jstk : in STD_LOGIC;
    btn_trigger : in STD_LOGIC;
    led_r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led_b : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_jstk_uart_bridge_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_jstk_uart_bridge_0_0 : entity is "design_1_jstk_uart_bridge_0_0,jstk_uart_bridge,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_jstk_uart_bridge_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of design_1_jstk_uart_bridge_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of design_1_jstk_uart_bridge_0_0 : entity is "jstk_uart_bridge,Vivado 2020.2";
end design_1_jstk_uart_bridge_0_0;

architecture STRUCTURE of design_1_jstk_uart_bridge_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute x_interface_info of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute x_interface_parameter of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute x_interface_info of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute x_interface_parameter of m_axis_tvalid : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute x_interface_info of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute x_interface_parameter of s_axis_tvalid : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute x_interface_info of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  m_axis_tdata(7 downto 4) <= \^m_axis_tdata\(7 downto 4);
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1 downto 0) <= \^m_axis_tdata\(1 downto 0);
  s_axis_tready <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_jstk_uart_bridge_0_0_jstk_uart_bridge
     port map (
      aclk => aclk,
      aresetn => aresetn,
      btn_jstk => btn_jstk,
      btn_trigger => btn_trigger,
      jstk_x(2 downto 0) => jstk_x(9 downto 7),
      jstk_y(2 downto 0) => jstk_y(9 downto 7),
      led_b(7 downto 0) => led_b(7 downto 0),
      led_g(7 downto 0) => led_g(7 downto 0),
      led_r(7 downto 0) => led_r(7 downto 0),
      m_axis_tdata(5 downto 2) => \^m_axis_tdata\(7 downto 4),
      m_axis_tdata(1 downto 0) => \^m_axis_tdata\(1 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(7 downto 0) => s_axis_tdata(7 downto 0),
      s_axis_tvalid => s_axis_tvalid
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;
