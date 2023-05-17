--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
--Date        : Wed May 17 18:22:55 2023
--Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
--Command     : generate_target I2CBalancer.bd
--Design      : I2CBalancer
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity I2CBalancer is
  port (
    reset : in STD_LOGIC;
    rx_lrck_0 : out STD_LOGIC;
    rx_mclk_0 : out STD_LOGIC;
    rx_sclk_0 : out STD_LOGIC;
    rx_sdin_0 : in STD_LOGIC;
    sys_clock : in STD_LOGIC;
    tx_lrck_0 : out STD_LOGIC;
    tx_mclk_0 : out STD_LOGIC;
    tx_sclk_0 : out STD_LOGIC;
    tx_sdout_0 : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of I2CBalancer : entity is "I2CBalancer,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=I2CBalancer,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=4,numReposBlks=4,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of I2CBalancer : entity is "I2CBalancer.hwdef";
end I2CBalancer;

architecture STRUCTURE of I2CBalancer is
  component I2CBalancer_axis_dual_i2s_0_0 is
  port (
    i2s_clk : in STD_LOGIC;
    i2s_resetn : in STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    tx_mclk : out STD_LOGIC;
    tx_lrck : out STD_LOGIC;
    tx_sclk : out STD_LOGIC;
    tx_sdout : out STD_LOGIC;
    rx_mclk : out STD_LOGIC;
    rx_lrck : out STD_LOGIC;
    rx_sclk : out STD_LOGIC;
    rx_sdin : in STD_LOGIC
  );
  end component I2CBalancer_axis_dual_i2s_0_0;
  component I2CBalancer_clk_wiz_0_0 is
  port (
    reset : in STD_LOGIC;
    clk_in1 : in STD_LOGIC;
    clk_out1 : out STD_LOGIC;
    locked : out STD_LOGIC;
    clk_out2 : out STD_LOGIC
  );
  end component I2CBalancer_clk_wiz_0_0;
  component I2CBalancer_proc_sys_reset_0_0 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component I2CBalancer_proc_sys_reset_0_0;
  component I2CBalancer_proc_sys_reset_0_1 is
  port (
    slowest_sync_clk : in STD_LOGIC;
    ext_reset_in : in STD_LOGIC;
    aux_reset_in : in STD_LOGIC;
    mb_debug_sys_rst : in STD_LOGIC;
    dcm_locked : in STD_LOGIC;
    mb_reset : out STD_LOGIC;
    bus_struct_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_reset : out STD_LOGIC_VECTOR ( 0 to 0 );
    interconnect_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 );
    peripheral_aresetn : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component I2CBalancer_proc_sys_reset_0_1;
  signal axis_dual_i2s_0_m_axis_TDATA : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal axis_dual_i2s_0_m_axis_TLAST : STD_LOGIC;
  signal axis_dual_i2s_0_m_axis_TREADY : STD_LOGIC;
  signal axis_dual_i2s_0_m_axis_TVALID : STD_LOGIC;
  signal axis_dual_i2s_0_rx_lrck : STD_LOGIC;
  signal axis_dual_i2s_0_rx_mclk : STD_LOGIC;
  signal axis_dual_i2s_0_rx_sclk : STD_LOGIC;
  signal axis_dual_i2s_0_tx_lrck : STD_LOGIC;
  signal axis_dual_i2s_0_tx_mclk : STD_LOGIC;
  signal axis_dual_i2s_0_tx_sclk : STD_LOGIC;
  signal axis_dual_i2s_0_tx_sdout : STD_LOGIC;
  signal clk_in1_0_1 : STD_LOGIC;
  signal clk_wiz_0_clk_out1 : STD_LOGIC;
  signal clk_wiz_0_clk_out2 : STD_LOGIC;
  signal clk_wiz_0_locked : STD_LOGIC;
  signal proc_sys_reset_0_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal proc_sys_reset_1_peripheral_aresetn : STD_LOGIC_VECTOR ( 0 to 0 );
  signal reset_0_1 : STD_LOGIC;
  signal rx_sdin_0_1 : STD_LOGIC;
  signal NLW_proc_sys_reset_0_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_mb_reset_UNCONNECTED : STD_LOGIC;
  signal NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 RST.RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH";
  attribute X_INTERFACE_INFO of sys_clock : signal is "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK";
  attribute X_INTERFACE_PARAMETER of sys_clock : signal is "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN I2CBalancer_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000";
begin
  clk_in1_0_1 <= sys_clock;
  reset_0_1 <= reset;
  rx_lrck_0 <= axis_dual_i2s_0_rx_lrck;
  rx_mclk_0 <= axis_dual_i2s_0_rx_mclk;
  rx_sclk_0 <= axis_dual_i2s_0_rx_sclk;
  rx_sdin_0_1 <= rx_sdin_0;
  tx_lrck_0 <= axis_dual_i2s_0_tx_lrck;
  tx_mclk_0 <= axis_dual_i2s_0_tx_mclk;
  tx_sclk_0 <= axis_dual_i2s_0_tx_sclk;
  tx_sdout_0 <= axis_dual_i2s_0_tx_sdout;
axis_dual_i2s_0: component I2CBalancer_axis_dual_i2s_0_0
     port map (
      aclk => clk_wiz_0_clk_out1,
      aresetn => proc_sys_reset_0_peripheral_aresetn(0),
      i2s_clk => clk_wiz_0_clk_out2,
      i2s_resetn => proc_sys_reset_1_peripheral_aresetn(0),
      m_axis_tdata(23 downto 0) => axis_dual_i2s_0_m_axis_TDATA(23 downto 0),
      m_axis_tlast => axis_dual_i2s_0_m_axis_TLAST,
      m_axis_tready => axis_dual_i2s_0_m_axis_TREADY,
      m_axis_tvalid => axis_dual_i2s_0_m_axis_TVALID,
      rx_lrck => axis_dual_i2s_0_rx_lrck,
      rx_mclk => axis_dual_i2s_0_rx_mclk,
      rx_sclk => axis_dual_i2s_0_rx_sclk,
      rx_sdin => rx_sdin_0_1,
      s_axis_tdata(23 downto 0) => axis_dual_i2s_0_m_axis_TDATA(23 downto 0),
      s_axis_tlast => axis_dual_i2s_0_m_axis_TLAST,
      s_axis_tready => axis_dual_i2s_0_m_axis_TREADY,
      s_axis_tvalid => axis_dual_i2s_0_m_axis_TVALID,
      tx_lrck => axis_dual_i2s_0_tx_lrck,
      tx_mclk => axis_dual_i2s_0_tx_mclk,
      tx_sclk => axis_dual_i2s_0_tx_sclk,
      tx_sdout => axis_dual_i2s_0_tx_sdout
    );
clk_wiz_0: component I2CBalancer_clk_wiz_0_0
     port map (
      clk_in1 => clk_in1_0_1,
      clk_out1 => clk_wiz_0_clk_out1,
      clk_out2 => clk_wiz_0_clk_out2,
      locked => clk_wiz_0_locked,
      reset => reset_0_1
    );
proc_sys_reset_0: component I2CBalancer_proc_sys_reset_0_0
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_0_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_0_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_0_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out1
    );
proc_sys_reset_1: component I2CBalancer_proc_sys_reset_0_1
     port map (
      aux_reset_in => '1',
      bus_struct_reset(0) => NLW_proc_sys_reset_1_bus_struct_reset_UNCONNECTED(0),
      dcm_locked => clk_wiz_0_locked,
      ext_reset_in => reset_0_1,
      interconnect_aresetn(0) => NLW_proc_sys_reset_1_interconnect_aresetn_UNCONNECTED(0),
      mb_debug_sys_rst => '0',
      mb_reset => NLW_proc_sys_reset_1_mb_reset_UNCONNECTED,
      peripheral_aresetn(0) => proc_sys_reset_1_peripheral_aresetn(0),
      peripheral_reset(0) => NLW_proc_sys_reset_1_peripheral_reset_UNCONNECTED(0),
      slowest_sync_clk => clk_wiz_0_clk_out2
    );
end STRUCTURE;
