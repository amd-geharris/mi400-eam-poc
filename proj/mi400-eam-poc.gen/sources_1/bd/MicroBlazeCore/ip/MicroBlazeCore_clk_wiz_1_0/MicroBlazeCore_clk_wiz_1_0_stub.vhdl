-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Fri Sep  6 10:12:43 2024
-- Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               s:/projects/mi400-eam-poc/proj/mi400-eam-poc.gen/sources_1/bd/MicroBlazeCore/ip/MicroBlazeCore_clk_wiz_1_0/MicroBlazeCore_clk_wiz_1_0_stub.vhdl
-- Design      : MicroBlazeCore_clk_wiz_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau25p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MicroBlazeCore_clk_wiz_1_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end MicroBlazeCore_clk_wiz_1_0;

architecture stub of MicroBlazeCore_clk_wiz_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1_p,clk_in1_n";
begin
end;
