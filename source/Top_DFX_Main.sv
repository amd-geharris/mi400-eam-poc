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
    input AxiBusClock,
    input fixed_fabric_100mhz_clk_p,
    input fixed_fabric_100mhz_clk_n,
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
//=====================================================================================================================
//                                      X.X -- Section
//=====================================================================================================================
    //############################################################
    // Micro Blaze Core
    //############################################################
    MicroBlazeCore_wrapper  MicroBlazeCore_wrapper_inst (
        .AxiBusClock(AxiBusClock),
        .fixed_fabric_100mhz_clk_p(fixed_fabric_100mhz_clk_p),
        .fixed_fabric_100mhz_clk_n(fixed_fabric_100mhz_clk_n),
        .McuAxiClock(McuAxiClock),
        .aUART_rxd(aUART_rxd),
        .aUART_txd(aUART_txd),
        .dReset_n(dReset_n),
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
        .mMcuAxiReset(mMcuAxiReset),
        .sMcuInputControl(sMcuInputControl),
        .sMcuOutputControl(sMcuOutputControl),
        .xAxiBusReset_n(xAxiBusReset_n),
        .xPcieToDfx_AXI_araddr(xPcieToDfx_AXI_araddr),
        .xPcieToDfx_AXI_arprot(xPcieToDfx_AXI_arprot),
        .xPcieToDfx_AXI_arready(xPcieToDfx_AXI_arready),
        .xPcieToDfx_AXI_arvalid(xPcieToDfx_AXI_arvalid),
        .xPcieToDfx_AXI_awaddr(xPcieToDfx_AXI_awaddr),
        .xPcieToDfx_AXI_awprot(xPcieToDfx_AXI_awprot),
        .xPcieToDfx_AXI_awready(xPcieToDfx_AXI_awready),
        .xPcieToDfx_AXI_awvalid(xPcieToDfx_AXI_awvalid),
        .xPcieToDfx_AXI_bready(xPcieToDfx_AXI_bready),
        .xPcieToDfx_AXI_bresp(xPcieToDfx_AXI_bresp),
        .xPcieToDfx_AXI_bvalid(xPcieToDfx_AXI_bvalid),
        .xPcieToDfx_AXI_rdata(xPcieToDfx_AXI_rdata),
        .xPcieToDfx_AXI_rready(xPcieToDfx_AXI_rready),
        .xPcieToDfx_AXI_rresp(xPcieToDfx_AXI_rresp),
        .xPcieToDfx_AXI_rvalid(xPcieToDfx_AXI_rvalid),
        .xPcieToDfx_AXI_wdata(xPcieToDfx_AXI_wdata),
        .xPcieToDfx_AXI_wready(xPcieToDfx_AXI_wready),
        .xPcieToDfx_AXI_wstrb(xPcieToDfx_AXI_wstrb),
        .xPcieToDfx_AXI_wvalid(xPcieToDfx_AXI_wvalid)
    );




//=====================================================================================================================
endmodule