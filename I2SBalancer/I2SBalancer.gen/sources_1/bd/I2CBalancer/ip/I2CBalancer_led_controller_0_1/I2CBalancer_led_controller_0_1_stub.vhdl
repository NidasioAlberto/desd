-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Fri May 26 01:07:35 2023
-- Host        : pop-os running 64-bit Pop!_OS 22.04 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/alberton/Desktop/desd_new/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_led_controller_0_1/I2CBalancer_led_controller_0_1_stub.vhdl
-- Design      : I2CBalancer_led_controller_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2CBalancer_led_controller_0_1 is
  Port ( 
    mute_enable : in STD_LOGIC;
    filter_enable : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end I2CBalancer_led_controller_0_1;

architecture stub of I2CBalancer_led_controller_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "mute_enable,filter_enable,r[7:0],g[7:0],b[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "led_controller,Vivado 2020.2";
begin
end;
