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
    input McuAxiClock,
    input PcieAxiClock,
    input aPllLocked,
    input aUART_rxd,
    output aUART_txd,
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
    input mDfxReset,
    output [0:0]mMcuAxiReset_n,
    input pPcieAxiReset_n,
    input [31:0]pPcieToDfx_AXI_araddr,
    input [2:0]pPcieToDfx_AXI_arprot,
    output pPcieToDfx_AXI_arready,
    input pPcieToDfx_AXI_arvalid,
    input [31:0]pPcieToDfx_AXI_awaddr,
    input [2:0]pPcieToDfx_AXI_awprot,
    output pPcieToDfx_AXI_awready,
    input pPcieToDfx_AXI_awvalid,
    input pPcieToDfx_AXI_bready,
    output [1:0]pPcieToDfx_AXI_bresp,
    output pPcieToDfx_AXI_bvalid,
    output [31:0]pPcieToDfx_AXI_rdata,
    input pPcieToDfx_AXI_rready,
    output [1:0]pPcieToDfx_AXI_rresp,
    output pPcieToDfx_AXI_rvalid,
    input [31:0]pPcieToDfx_AXI_wdata,
    output pPcieToDfx_AXI_wready,
    input [3:0]pPcieToDfx_AXI_wstrb,
    input pPcieToDfx_AXI_wvalid,
    output [31:0]sMcuInputControl,
    input [31:0]sMcuOutputControl,


    // ILA Required Signals
    input   S_BSCAN_drck,
    input   S_BSCAN_shift,
    input   S_BSCAN_tdi,
    input   S_BSCAN_update,
    input   S_BSCAN_sel,
    output  S_BSCAN_tdo,
    input   S_BSCAN_tms,
    input   S_BSCAN_tck,
    input   S_BSCAN_runtest,
    input   S_BSCAN_reset,
    input   S_BSCAN_capture,
    input   S_BSCAN_bscanid_en
);
//=====================================================================================================================
//                                      X.X -- Local Variables
//=====================================================================================================================
    //############################################################
    // Local Variables
    //############################################################
    
//=====================================================================================================================
//                                      X.X -- Section
//=====================================================================================================================
    //############################################################
    // Default - Micro Blaze Core
    //############################################################
    assign aUART_txd = 1'b0;
    assign sMcuInputControl = 32'h0;
    assign pPcieToDfx_AXI_arready = 1'b0;
    assign pPcieToDfx_AXI_awready = 1'b0;
    assign pPcieToDfx_AXI_bresp = 2'b00;
    assign pPcieToDfx_AXI_bvalid = 1'b0;
    assign pPcieToDfx_AXI_rdata = 32'h0;
    assign pPcieToDfx_AXI_rresp = 2'b00;
    assign pPcieToDfx_AXI_rvalid = 1'b0;
    assign pPcieToDfx_AXI_wready = 1'b0;
    assign mMcuAxiReset = 1'b1;
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
    assign mMcuAxiReset_n = 1'b0;
    //############################################################
    // Default MMCM
    //############################################################
//=====================================================================================================================
endmodule