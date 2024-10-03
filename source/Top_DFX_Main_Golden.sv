//=============================================================================
// AMD 2024
// All rights reserved
//
//  File Name: Top_DFX_Main_Golden.sv
//  Created By: 
//  Creation Date: September-13-2024
// 
//  Module Description:
// 
//=============================================================================    
`timescale 1 ns / 1 ns
module Top_DFX_Main #(
    //############################################################
    // Global Parameters
    //############################################################
)
(
    input AxiBusClock,
    input Clock_DiffOut,
    output McuAxiClock,
    input aUART_rxd,
    output aUART_txd,
    input dReset_n,
    output [31:0]mDebugMcu_AXI_araddr,
    output [2:0]mDebugMcu_AXI_arprot,
    input [0:0]mDebugMcu_AXI_arready,
    output [0:0]mDebugMcu_AXI_arvalid,
    output [31:0]mDebugMcu_AXI_awaddr,
    output [2:0]mDebugMcu_AXI_awprot,
    input [0:0]mDebugMcu_AXI_awready,
    output [0:0]mDebugMcu_AXI_awvalid,
    output [0:0]mDebugMcu_AXI_bready,
    input [1:0]mDebugMcu_AXI_bresp,
    input [0:0]mDebugMcu_AXI_bvalid,
    input [31:0]mDebugMcu_AXI_rdata,
    output [0:0]mDebugMcu_AXI_rready,
    input [1:0]mDebugMcu_AXI_rresp,
    input [0:0]mDebugMcu_AXI_rvalid,
    output [31:0]mDebugMcu_AXI_wdata,
    input [0:0]mDebugMcu_AXI_wready,
    output [3:0]mDebugMcu_AXI_wstrb,
    output [0:0]mDebugMcu_AXI_wvalid,
    input mDebugPort_capture,
    input mDebugPort_clk,
    input mDebugPort_disable,
    input [0:7]mDebugPort_reg_en,
    input mDebugPort_rst,
    input mDebugPort_shift,
    input mDebugPort_tdi,
    output mDebugPort_tdo,
    input mDebugPort_update,
    input mDebugSysRst,
    output [0:0]mMcuAxiReset,
    output [31:0]sMcuInputControl,
    input [31:0]sMcuOutputControl,
    input xAxiBusReset_n,
    input [31:0]xPcieToDfx_AXI_araddr,
    input [2:0]xPcieToDfx_AXI_arprot,
    output xPcieToDfx_AXI_arready,
    input xPcieToDfx_AXI_arvalid,
    input [31:0]xPcieToDfx_AXI_awaddr,
    input [2:0]xPcieToDfx_AXI_awprot,
    output xPcieToDfx_AXI_awready,
    input xPcieToDfx_AXI_awvalid,
    input xPcieToDfx_AXI_bready,
    output [1:0]xPcieToDfx_AXI_bresp,
    output xPcieToDfx_AXI_bvalid,
    output [31:0]xPcieToDfx_AXI_rdata,
    input xPcieToDfx_AXI_rready,
    output [1:0]xPcieToDfx_AXI_rresp,
    output xPcieToDfx_AXI_rvalid,
    input [31:0]xPcieToDfx_AXI_wdata,
    output xPcieToDfx_AXI_wready,
    input [3:0]xPcieToDfx_AXI_wstrb,
    input xPcieToDfx_AXI_wvalid
);
//=====================================================================================================================
//                                      X.X -- Local Variables
//=====================================================================================================================
    //############################################################
    // Local Variables
    //############################################################
    wire    McuClock;
    wire    mPllLocked;
    wire    clkfbout;
    wire    McuClock_unbuffed;
//=====================================================================================================================
//                                      X.X -- Section
//=====================================================================================================================
    //############################################################
    // Default - Micro Blaze Core
    //############################################################
    assign aUART_txd = 1'b0;
    assign sMcuInputControl = 32'h0;
    assign xPcieToDfx_AXI_arready = 1'b0;
    assign xPcieToDfx_AXI_awready = 1'b0;
    assign xPcieToDfx_AXI_bresp = 2'b00;
    assign xPcieToDfx_AXI_bvalid = 1'b0;
    assign xPcieToDfx_AXI_rdata = 32'h0;
    assign xPcieToDfx_AXI_rresp = 2'b00;
    assign xPcieToDfx_AXI_rvalid = 1'b0;
    assign xPcieToDfx_AXI_wready = 1'b0;
    assign mMcuAxiReset = 1'b0;
    assign mDebugMcu_AXI_araddr = 32'h0;
    assign mDebugMcu_AXI_arprot = 3'b000;
    assign mDebugMcu_AXI_arvalid = 1'b0;
    assign mDebugMcu_AXI_awaddr = 32'h0;
    assign mDebugMcu_AXI_awprot = 3'b000;
    assign mDebugMcu_AXI_awvalid = 1'b0;
    assign mDebugMcu_AXI_bready = 1'b0;
    assign mDebugMcu_AXI_wdata = 32'h0;
    assign mDebugMcu_AXI_wstrb = 4'b0000;
    assign mDebugMcu_AXI_wvalid = 1'b0;
    assign mDebugMcu_AXI_rready = 1'b0;
    assign mDebugMcu_AXI_rvalid = 1'b0;
    assign McuAxiClock = 1'b0;
    //############################################################
    // Default MMCM
    //############################################################
    MMCME4_ADV #(
        .BANDWIDTH           ("OPTIMIZED"),
        .CLKOUT4_CASCADE     ("FALSE"),
        .COMPENSATION        ("AUTO"),
        .STARTUP_WAIT        ("FALSE"),
        .DIVCLK_DIVIDE       (1),
        .CLKFBOUT_MULT_F     (12.000),
        .CLKFBOUT_PHASE      (0.000),
        .CLKFBOUT_USE_FINE_PS("FALSE"),
        .CLKOUT0_DIVIDE_F    (12.000),
        .CLKOUT0_PHASE       (0.000),
        .CLKOUT0_DUTY_CYCLE  (0.500),
        .CLKOUT0_USE_FINE_PS ("FALSE"),
        .CLKIN1_PERIOD       (10.000)
    ) mmcme4_adv_inst
    // Output clocks
    (
        .CLKFBOUT    (clkfbout),
        .CLKFBOUTB   (),
        .CLKOUT0     (McuClock_unbuffed),
        .CLKOUT0B    (),
        .CLKOUT1     (),
        .CLKOUT1B    (),
        .CLKOUT2B    (),
        .CLKOUT2     (),
        .CLKOUT3     (),
        .CLKOUT3B    (),
        .CLKOUT4     (),
        .CLKOUT5     (),
        .CLKOUT6     (),
        // Input clock control
        .CLKFBIN     (clkfbout),
        .CLKIN1      (Clock_DiffOut),
        .CLKIN2      (1'b0),
        // Tied to always select the primary input clock
        .CLKINSEL    (1'b1),
        // Ports for dynamic reconfiguration
        .DADDR       (7'h0),
        .DCLK        (1'b0),
        .DEN         (1'b0),
        .DI          (16'h0),
        .DO          (),
        .DRDY        (),
        .DWE         (1'b0),
        .CDDCDONE    (),
        .CDDCREQ     (1'b0),
        // Ports for dynamic phase shift
        .PSCLK       (1'b0),
        .PSEN        (1'b0),
        .PSINCDEC    (1'b0),
        .PSDONE      (),
        // Other control and status signals
        .LOCKED      (mPllLocked),
        .CLKINSTOPPED(),
        .CLKFBSTOPPED(),
        .PWRDWN      (1'b0),
        .RST         (1'b0)
    );
  
    BUFG CORE_BUFG (.I(McuClock_unbuffed), .O(McuClock));



//=====================================================================================================================
endmodule