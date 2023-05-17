set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

# Clock
set_property PACKAGE_PIN W5 [get_ports sys_clock]
set_property IOSTANDARD LVCMOS33 [get_ports sys_clock]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports sys_clock]

# Reset pin
set_property PACKAGE_PIN U18 [get_ports reset]
set_property IOSTANDARD LVCMOS33 [get_ports reset]


# SPI connected to JA, top row
set_property PACKAGE_PIN J1 [get_ports SPI_M_0_ss_io]
set_property PACKAGE_PIN L2 [get_ports SPI_M_0_io0_io]
set_property PACKAGE_PIN J2 [get_ports SPI_M_0_io1_io]
set_property PACKAGE_PIN G2 [get_ports SPI_M_0_sck_io]

set_property IOSTANDARD LVCMOS33 [get_ports SPI_M_0_ss_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_M_0_io0_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_M_0_io1_io]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_M_0_sck_io]

set_property OFFCHIP_TERM NONE [get_ports SPI_M_0_ss_io]
set_property OFFCHIP_TERM NONE [get_ports SPI_M_0_io0_io]
set_property OFFCHIP_TERM NONE [get_ports SPI_M_0_io1_io]
set_property OFFCHIP_TERM NONE [get_ports SPI_M_0_sck_io]

# pmod I2S2 connected to JB 
set_property IOSTANDARD LVCMOS33 [get_ports rx_lrck_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx_mclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx_sclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx_sdin_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx_lrck_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx_mclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx_sclk_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx_sdout_0]

set_property PACKAGE_PIN A14 [get_ports tx_mclk_0]
set_property PACKAGE_PIN A16 [get_ports tx_lrck_0]
set_property PACKAGE_PIN B15 [get_ports tx_sclk_0]
set_property PACKAGE_PIN B16 [get_ports tx_sdout_0]
set_property PACKAGE_PIN A15 [get_ports rx_mclk_0]
set_property PACKAGE_PIN A17 [get_ports rx_lrck_0]
set_property PACKAGE_PIN C15 [get_ports rx_sclk_0]
set_property PACKAGE_PIN C16 [get_ports rx_sdin_0]
