-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Wed May 17 23:35:34 2023
-- Host        : DESKTOP-F4BLQ3F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/emili/OneDrive - Politecnico di
--               Milano/Documenti/desd/I2SBalancer/I2SBalancer.gen/sources_1/bd/I2CBalancer/ip/I2CBalancer_stub_0_0/I2CBalancer_stub_0_0_stub.vhdl}
-- Design      : I2CBalancer_stub_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity I2CBalancer_stub_0_0 is
  Port ( 
    en : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 7 downto 0 );
    g : out STD_LOGIC_VECTOR ( 7 downto 0 );
    b : out STD_LOGIC_VECTOR ( 7 downto 0 );
    mute_enable : out STD_LOGIC
  );

end I2CBalancer_stub_0_0;

architecture stub of I2CBalancer_stub_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "en,r[7:0],g[7:0],b[7:0],mute_enable";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "stub,Vivado 2020.2";
begin
end;
