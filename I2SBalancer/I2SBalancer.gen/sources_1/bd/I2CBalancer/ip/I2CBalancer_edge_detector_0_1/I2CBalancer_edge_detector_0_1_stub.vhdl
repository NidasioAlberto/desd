-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon May 22 16:59:38 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_edge_detector_0_1/I2CBalancer_edge_detector_0_1_stub.vhdl}
-- Design      : I2CBalancer_edge_detector_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2CBalancer_edge_detector_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    reset : in STD_LOGIC;
    output_signal : out STD_LOGIC
  );

end I2CBalancer_edge_detector_0_1;

architecture stub of I2CBalancer_edge_detector_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,input_signal,reset,output_signal";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "edge_detector,Vivado 2020.2";
begin
end;
