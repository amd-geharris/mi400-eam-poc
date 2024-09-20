// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Thu Sep 19 14:30:08 2024
// Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               s:/projects/mi400-eam-poc/proj/mi400-eam-poc.gen/sources_1/bd/MicroBlazeCore/ip/MicroBlazeCore_clk_wiz_1_1/MicroBlazeCore_clk_wiz_1_1_stub.v
// Design      : MicroBlazeCore_clk_wiz_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xcau25p-ffvb676-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module MicroBlazeCore_clk_wiz_1_1(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,clk_in1" */
/* synthesis syn_force_seq_prim="clk_out1" */;
  output clk_out1 /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input clk_in1;
endmodule
