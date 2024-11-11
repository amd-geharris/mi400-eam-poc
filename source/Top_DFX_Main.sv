    //=============================================================================
// AMD 2024
// All rights reserved
//
//  File Name: Top_DFX_Main.sv
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
    // Micro Blaze Core
    //############################################################
    MicroBlazeCore MicroBlazeCore_i (
        .McuAxiClock(McuAxiClock),
        .PcieAxiClock(PcieAxiClock),
        .aPllLocked(aPllLocked),
        .aUART_rxd(aUART_rxd),
        .aUART_txd(aUART_txd),
        .mDebugMcu_AXI_araddr(mDebugMcu_AXI_araddr),
        .mDebugMcu_AXI_arprot(mDebugMcu_AXI_arprot),
        .mDebugMcu_AXI_arready(mDebugMcu_AXI_arready),
        .mDebugMcu_AXI_arvalid(mDebugMcu_AXI_arvalid),
        .mDebugMcu_AXI_awaddr(mDebugMcu_AXI_awaddr),
        .mDebugMcu_AXI_awprot(mDebugMcu_AXI_awprot),
        .mDebugMcu_AXI_awready(mDebugMcu_AXI_awready),
        .mDebugMcu_AXI_awvalid(mDebugMcu_AXI_awvalid),
        .mDebugMcu_AXI_bready(mDebugMcu_AXI_bready),
        .mDebugMcu_AXI_bresp(mDebugMcu_AXI_bresp),
        .mDebugMcu_AXI_bvalid(mDebugMcu_AXI_bvalid),
        .mDebugMcu_AXI_rdata(mDebugMcu_AXI_rdata),
        .mDebugMcu_AXI_rready(mDebugMcu_AXI_rready),
        .mDebugMcu_AXI_rresp(mDebugMcu_AXI_rresp),
        .mDebugMcu_AXI_rvalid(mDebugMcu_AXI_rvalid),
        .mDebugMcu_AXI_wdata(mDebugMcu_AXI_wdata),
        .mDebugMcu_AXI_wready(mDebugMcu_AXI_wready),
        .mDebugMcu_AXI_wstrb(mDebugMcu_AXI_wstrb),
        .mDebugMcu_AXI_wvalid(mDebugMcu_AXI_wvalid),
        .mDebugPort_capture(mDebugPort_capture),
        .mDebugPort_clk(mDebugPort_clk),
        .mDebugPort_disable(mDebugPort_disable),
        .mDebugPort_reg_en(mDebugPort_reg_en),
        .mDebugPort_rst(mDebugPort_rst),
        .mDebugPort_shift(mDebugPort_shift),
        .mDebugPort_tdi(mDebugPort_tdi),
        .mDebugPort_tdo(mDebugPort_tdo),
        .mDebugPort_update(mDebugPort_update),
        .mDebugSysRst(mDebugSysRst),
        .mDfxReset(mDfxReset),
        .mMcuAxiReset_n(mMcuAxiReset_n),
        .pPcieAxiReset_n(pPcieAxiReset_n),
        .pPcieToDfx_AXI_araddr(pPcieToDfx_AXI_araddr),
        .pPcieToDfx_AXI_arprot(pPcieToDfx_AXI_arprot),
        .pPcieToDfx_AXI_arready(pPcieToDfx_AXI_arready),
        .pPcieToDfx_AXI_arvalid(pPcieToDfx_AXI_arvalid),
        .pPcieToDfx_AXI_awaddr(pPcieToDfx_AXI_awaddr),
        .pPcieToDfx_AXI_awprot(pPcieToDfx_AXI_awprot),
        .pPcieToDfx_AXI_awready(pPcieToDfx_AXI_awready),
        .pPcieToDfx_AXI_awvalid(pPcieToDfx_AXI_awvalid),
        .pPcieToDfx_AXI_bready(pPcieToDfx_AXI_bready),
        .pPcieToDfx_AXI_bresp(pPcieToDfx_AXI_bresp),
        .pPcieToDfx_AXI_bvalid(pPcieToDfx_AXI_bvalid),
        .pPcieToDfx_AXI_rdata(pPcieToDfx_AXI_rdata),
        .pPcieToDfx_AXI_rready(pPcieToDfx_AXI_rready),
        .pPcieToDfx_AXI_rresp(pPcieToDfx_AXI_rresp),
        .pPcieToDfx_AXI_rvalid(pPcieToDfx_AXI_rvalid),
        .pPcieToDfx_AXI_wdata(pPcieToDfx_AXI_wdata),
        .pPcieToDfx_AXI_wready(pPcieToDfx_AXI_wready),
        .pPcieToDfx_AXI_wstrb(pPcieToDfx_AXI_wstrb),
        .pPcieToDfx_AXI_wvalid(pPcieToDfx_AXI_wvalid),
        .sMcuInputControl(sMcuInputControl),
        .sMcuOutputControl(sMcuOutputControl)
    );

//=====================================================================================================================
endmodule