-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
-- Date        : Mon Sep 23 11:03:30 2024
-- Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top PcieBridge_util_ds_buf_0 -prefix
--               PcieBridge_util_ds_buf_0_ PcieBridge_util_ds_buf_0_stub.vhdl
-- Design      : PcieBridge_util_ds_buf_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcau25p-ffvb676-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PcieBridge_util_ds_buf_0 is
  Port ( 
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 0 to 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end PcieBridge_util_ds_buf_0;

architecture stub of PcieBridge_util_ds_buf_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IBUF_DS_P[0:0],IBUF_DS_N[0:0],IBUF_OUT[0:0],IBUF_DS_ODIV2[0:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2024.1";
begin
end;
