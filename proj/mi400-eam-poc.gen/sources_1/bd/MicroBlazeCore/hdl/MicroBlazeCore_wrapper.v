//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Oct  3 16:34:57 2024
//Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
//Command     : generate_target MicroBlazeCore_wrapper.bd
//Design      : MicroBlazeCore_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MicroBlazeCore_wrapper
   (AxiBusClock,
    McuAxiClock,
    McuClock,
    aUART_rxd,
    aUART_txd,
    dReset_n,
    mDebugMcu_AXI_araddr,
    mDebugMcu_AXI_arprot,
    mDebugMcu_AXI_arready,
    mDebugMcu_AXI_arvalid,
    mDebugMcu_AXI_awaddr,
    mDebugMcu_AXI_awprot,
    mDebugMcu_AXI_awready,
    mDebugMcu_AXI_awvalid,
    mDebugMcu_AXI_bready,
    mDebugMcu_AXI_bresp,
    mDebugMcu_AXI_bvalid,
    mDebugMcu_AXI_rdata,
    mDebugMcu_AXI_rready,
    mDebugMcu_AXI_rresp,
    mDebugMcu_AXI_rvalid,
    mDebugMcu_AXI_wdata,
    mDebugMcu_AXI_wready,
    mDebugMcu_AXI_wstrb,
    mDebugMcu_AXI_wvalid,
    mDebugPort_capture,
    mDebugPort_clk,
    mDebugPort_disable,
    mDebugPort_reg_en,
    mDebugPort_rst,
    mDebugPort_shift,
    mDebugPort_tdi,
    mDebugPort_tdo,
    mDebugPort_update,
    mDebugSysRst,
    mMcuAxiReset,
    mPllLocked,
    sMcuInputControl,
    sMcuOutputControl,
    xAxiBusReset_n,
    xPcieToDfx_AXI_araddr,
    xPcieToDfx_AXI_arprot,
    xPcieToDfx_AXI_arready,
    xPcieToDfx_AXI_arvalid,
    xPcieToDfx_AXI_awaddr,
    xPcieToDfx_AXI_awprot,
    xPcieToDfx_AXI_awready,
    xPcieToDfx_AXI_awvalid,
    xPcieToDfx_AXI_bready,
    xPcieToDfx_AXI_bresp,
    xPcieToDfx_AXI_bvalid,
    xPcieToDfx_AXI_rdata,
    xPcieToDfx_AXI_rready,
    xPcieToDfx_AXI_rresp,
    xPcieToDfx_AXI_rvalid,
    xPcieToDfx_AXI_wdata,
    xPcieToDfx_AXI_wready,
    xPcieToDfx_AXI_wstrb,
    xPcieToDfx_AXI_wvalid);
  input AxiBusClock;
  output McuAxiClock;
  input McuClock;
  input aUART_rxd;
  output aUART_txd;
  input dReset_n;
  output [31:0]mDebugMcu_AXI_araddr;
  output [2:0]mDebugMcu_AXI_arprot;
  input [0:0]mDebugMcu_AXI_arready;
  output [0:0]mDebugMcu_AXI_arvalid;
  output [31:0]mDebugMcu_AXI_awaddr;
  output [2:0]mDebugMcu_AXI_awprot;
  input [0:0]mDebugMcu_AXI_awready;
  output [0:0]mDebugMcu_AXI_awvalid;
  output [0:0]mDebugMcu_AXI_bready;
  input [1:0]mDebugMcu_AXI_bresp;
  input [0:0]mDebugMcu_AXI_bvalid;
  input [31:0]mDebugMcu_AXI_rdata;
  output [0:0]mDebugMcu_AXI_rready;
  input [1:0]mDebugMcu_AXI_rresp;
  input [0:0]mDebugMcu_AXI_rvalid;
  output [31:0]mDebugMcu_AXI_wdata;
  input [0:0]mDebugMcu_AXI_wready;
  output [3:0]mDebugMcu_AXI_wstrb;
  output [0:0]mDebugMcu_AXI_wvalid;
  input mDebugPort_capture;
  input mDebugPort_clk;
  input mDebugPort_disable;
  input [0:7]mDebugPort_reg_en;
  input mDebugPort_rst;
  input mDebugPort_shift;
  input mDebugPort_tdi;
  output mDebugPort_tdo;
  input mDebugPort_update;
  input mDebugSysRst;
  output [0:0]mMcuAxiReset;
  input mPllLocked;
  output [31:0]sMcuInputControl;
  input [31:0]sMcuOutputControl;
  input xAxiBusReset_n;
  input [31:0]xPcieToDfx_AXI_araddr;
  input [2:0]xPcieToDfx_AXI_arprot;
  output xPcieToDfx_AXI_arready;
  input xPcieToDfx_AXI_arvalid;
  input [31:0]xPcieToDfx_AXI_awaddr;
  input [2:0]xPcieToDfx_AXI_awprot;
  output xPcieToDfx_AXI_awready;
  input xPcieToDfx_AXI_awvalid;
  input xPcieToDfx_AXI_bready;
  output [1:0]xPcieToDfx_AXI_bresp;
  output xPcieToDfx_AXI_bvalid;
  output [31:0]xPcieToDfx_AXI_rdata;
  input xPcieToDfx_AXI_rready;
  output [1:0]xPcieToDfx_AXI_rresp;
  output xPcieToDfx_AXI_rvalid;
  input [31:0]xPcieToDfx_AXI_wdata;
  output xPcieToDfx_AXI_wready;
  input [3:0]xPcieToDfx_AXI_wstrb;
  input xPcieToDfx_AXI_wvalid;

  wire AxiBusClock;
  wire McuAxiClock;
  wire McuClock;
  wire aUART_rxd;
  wire aUART_txd;
  wire dReset_n;
  wire [31:0]mDebugMcu_AXI_araddr;
  wire [2:0]mDebugMcu_AXI_arprot;
  wire [0:0]mDebugMcu_AXI_arready;
  wire [0:0]mDebugMcu_AXI_arvalid;
  wire [31:0]mDebugMcu_AXI_awaddr;
  wire [2:0]mDebugMcu_AXI_awprot;
  wire [0:0]mDebugMcu_AXI_awready;
  wire [0:0]mDebugMcu_AXI_awvalid;
  wire [0:0]mDebugMcu_AXI_bready;
  wire [1:0]mDebugMcu_AXI_bresp;
  wire [0:0]mDebugMcu_AXI_bvalid;
  wire [31:0]mDebugMcu_AXI_rdata;
  wire [0:0]mDebugMcu_AXI_rready;
  wire [1:0]mDebugMcu_AXI_rresp;
  wire [0:0]mDebugMcu_AXI_rvalid;
  wire [31:0]mDebugMcu_AXI_wdata;
  wire [0:0]mDebugMcu_AXI_wready;
  wire [3:0]mDebugMcu_AXI_wstrb;
  wire [0:0]mDebugMcu_AXI_wvalid;
  wire mDebugPort_capture;
  wire mDebugPort_clk;
  wire mDebugPort_disable;
  wire [0:7]mDebugPort_reg_en;
  wire mDebugPort_rst;
  wire mDebugPort_shift;
  wire mDebugPort_tdi;
  wire mDebugPort_tdo;
  wire mDebugPort_update;
  wire mDebugSysRst;
  wire [0:0]mMcuAxiReset;
  wire mPllLocked;
  wire [31:0]sMcuInputControl;
  wire [31:0]sMcuOutputControl;
  wire xAxiBusReset_n;
  wire [31:0]xPcieToDfx_AXI_araddr;
  wire [2:0]xPcieToDfx_AXI_arprot;
  wire xPcieToDfx_AXI_arready;
  wire xPcieToDfx_AXI_arvalid;
  wire [31:0]xPcieToDfx_AXI_awaddr;
  wire [2:0]xPcieToDfx_AXI_awprot;
  wire xPcieToDfx_AXI_awready;
  wire xPcieToDfx_AXI_awvalid;
  wire xPcieToDfx_AXI_bready;
  wire [1:0]xPcieToDfx_AXI_bresp;
  wire xPcieToDfx_AXI_bvalid;
  wire [31:0]xPcieToDfx_AXI_rdata;
  wire xPcieToDfx_AXI_rready;
  wire [1:0]xPcieToDfx_AXI_rresp;
  wire xPcieToDfx_AXI_rvalid;
  wire [31:0]xPcieToDfx_AXI_wdata;
  wire xPcieToDfx_AXI_wready;
  wire [3:0]xPcieToDfx_AXI_wstrb;
  wire xPcieToDfx_AXI_wvalid;

  MicroBlazeCore MicroBlazeCore_i
       (.AxiBusClock(AxiBusClock),
        .McuAxiClock(McuAxiClock),
        .McuClock(McuClock),
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
        .mPllLocked(mPllLocked),
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
        .xPcieToDfx_AXI_wvalid(xPcieToDfx_AXI_wvalid));
endmodule
