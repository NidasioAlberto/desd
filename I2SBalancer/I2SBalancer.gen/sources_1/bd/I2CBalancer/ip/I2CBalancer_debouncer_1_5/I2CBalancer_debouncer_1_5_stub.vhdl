-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu May 25 22:43:29 2023
-- Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/alberton/Desktop/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_debouncer_1_5/I2CBalancer_debouncer_1_5_stub.vhdl
-- Design      : I2CBalancer_debouncer_1_5
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2CBalancer_debouncer_1_5 is
  Port ( 
    clk : in STD_LOGIC;
    input_signal : in STD_LOGIC;
    reset : in STD_LOGIC;
    debounced : out STD_LOGIC
  );

end I2CBalancer_debouncer_1_5;

architecture stub of I2CBalancer_debouncer_1_5 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,input_signal,reset,debounced";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "debouncer,Vivado 2020.2";
begin
end;
