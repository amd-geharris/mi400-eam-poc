//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Tue Sep 10 14:38:12 2024
//Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
//Command     : generate_target MicroBlazeCore_wrapper.bd
//Design      : MicroBlazeCore_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MicroBlazeCore_wrapper
   (aMICROBLAZE_UART_rxd,
    aMICROBLAZE_UART_txd,
    diff_MicroBlazeClock_clk_n,
    diff_MicroBlazeClock_clk_p,
    sMcuInputControl,
    sMcuOutputControl,
    uMicroBlazeRst_n);
  input aMICROBLAZE_UART_rxd;
  output aMICROBLAZE_UART_txd;
  input diff_MicroBlazeClock_clk_n;
  input diff_MicroBlazeClock_clk_p;
  output [31:0]sMcuInputControl;
  input sMcuOutputControl;
  input uMicroBlazeRst_n;

  wire aMICROBLAZE_UART_rxd;
  wire aMICROBLAZE_UART_txd;
  wire diff_MicroBlazeClock_clk_n;
  wire diff_MicroBlazeClock_clk_p;
  wire [31:0]sMcuInputControl;
  wire sMcuOutputControl;
  wire uMicroBlazeRst_n;

  MicroBlazeCore MicroBlazeCore_i
       (.aMICROBLAZE_UART_rxd(aMICROBLAZE_UART_rxd),
        .aMICROBLAZE_UART_txd(aMICROBLAZE_UART_txd),
        .diff_MicroBlazeClock_clk_n(diff_MicroBlazeClock_clk_n),
        .diff_MicroBlazeClock_clk_p(diff_MicroBlazeClock_clk_p),
        .sMcuInputControl(sMcuInputControl),
        .sMcuOutputControl(sMcuOutputControl),
        .uMicroBlazeRst_n(uMicroBlazeRst_n));
endmodule
