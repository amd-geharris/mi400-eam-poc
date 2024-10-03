//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Thu Oct  3 12:49:27 2024
//Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
//Command     : generate_target PcieBridge_wrapper.bd
//Design      : PcieBridge_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module PcieBridge_wrapper
   (AxiBusClock,
    McuAxiClock,
    PCIE_CLOCK_clk_n,
    PCIE_CLOCK_clk_p,
    aPCIE_rxn,
    aPCIE_rxp,
    aPCIE_txn,
    aPCIE_txp,
    mDebugMcu_AXI_araddr,
    mDebugMcu_AXI_arready,
    mDebugMcu_AXI_arvalid,
    mDebugMcu_AXI_awaddr,
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
    pPcieLinkUp,
    pPcieSysRst_n,
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
    xPcieToDfx_AXI_wvalid,
    xPcieToICAP_AXI_tdata,
    xPcieToICAP_AXI_tkeep,
    xPcieToICAP_AXI_tlast,
    xPcieToICAP_AXI_tready,
    xPcieToICAP_AXI_tvalid);
  output AxiBusClock;
  input McuAxiClock;
  input [0:0]PCIE_CLOCK_clk_n;
  input [0:0]PCIE_CLOCK_clk_p;
  input [0:0]aPCIE_rxn;
  input [0:0]aPCIE_rxp;
  output [0:0]aPCIE_txn;
  output [0:0]aPCIE_txp;
  input [3:0]mDebugMcu_AXI_araddr;
  output mDebugMcu_AXI_arready;
  input mDebugMcu_AXI_arvalid;
  input [3:0]mDebugMcu_AXI_awaddr;
  output mDebugMcu_AXI_awready;
  input mDebugMcu_AXI_awvalid;
  input mDebugMcu_AXI_bready;
  output [1:0]mDebugMcu_AXI_bresp;
  output mDebugMcu_AXI_bvalid;
  output [31:0]mDebugMcu_AXI_rdata;
  input mDebugMcu_AXI_rready;
  output [1:0]mDebugMcu_AXI_rresp;
  output mDebugMcu_AXI_rvalid;
  input [31:0]mDebugMcu_AXI_wdata;
  output mDebugMcu_AXI_wready;
  input [3:0]mDebugMcu_AXI_wstrb;
  input mDebugMcu_AXI_wvalid;
  output mDebugPort_capture;
  output mDebugPort_clk;
  output mDebugPort_disable;
  output [0:7]mDebugPort_reg_en;
  output mDebugPort_rst;
  output mDebugPort_shift;
  output mDebugPort_tdi;
  input mDebugPort_tdo;
  output mDebugPort_update;
  output mDebugSysRst;
  input mMcuAxiReset;
  output pPcieLinkUp;
  input pPcieSysRst_n;
  output xAxiBusReset_n;
  output [31:0]xPcieToDfx_AXI_araddr;
  output [2:0]xPcieToDfx_AXI_arprot;
  input xPcieToDfx_AXI_arready;
  output xPcieToDfx_AXI_arvalid;
  output [31:0]xPcieToDfx_AXI_awaddr;
  output [2:0]xPcieToDfx_AXI_awprot;
  input xPcieToDfx_AXI_awready;
  output xPcieToDfx_AXI_awvalid;
  output xPcieToDfx_AXI_bready;
  input [1:0]xPcieToDfx_AXI_bresp;
  input xPcieToDfx_AXI_bvalid;
  input [31:0]xPcieToDfx_AXI_rdata;
  output xPcieToDfx_AXI_rready;
  input [1:0]xPcieToDfx_AXI_rresp;
  input xPcieToDfx_AXI_rvalid;
  output [31:0]xPcieToDfx_AXI_wdata;
  input xPcieToDfx_AXI_wready;
  output [3:0]xPcieToDfx_AXI_wstrb;
  output xPcieToDfx_AXI_wvalid;
  output [31:0]xPcieToICAP_AXI_tdata;
  output [3:0]xPcieToICAP_AXI_tkeep;
  output xPcieToICAP_AXI_tlast;
  input xPcieToICAP_AXI_tready;
  output xPcieToICAP_AXI_tvalid;

  wire AxiBusClock;
  wire McuAxiClock;
  wire [0:0]PCIE_CLOCK_clk_n;
  wire [0:0]PCIE_CLOCK_clk_p;
  wire [0:0]aPCIE_rxn;
  wire [0:0]aPCIE_rxp;
  wire [0:0]aPCIE_txn;
  wire [0:0]aPCIE_txp;
  wire [3:0]mDebugMcu_AXI_araddr;
  wire mDebugMcu_AXI_arready;
  wire mDebugMcu_AXI_arvalid;
  wire [3:0]mDebugMcu_AXI_awaddr;
  wire mDebugMcu_AXI_awready;
  wire mDebugMcu_AXI_awvalid;
  wire mDebugMcu_AXI_bready;
  wire [1:0]mDebugMcu_AXI_bresp;
  wire mDebugMcu_AXI_bvalid;
  wire [31:0]mDebugMcu_AXI_rdata;
  wire mDebugMcu_AXI_rready;
  wire [1:0]mDebugMcu_AXI_rresp;
  wire mDebugMcu_AXI_rvalid;
  wire [31:0]mDebugMcu_AXI_wdata;
  wire mDebugMcu_AXI_wready;
  wire [3:0]mDebugMcu_AXI_wstrb;
  wire mDebugMcu_AXI_wvalid;
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
  wire mMcuAxiReset;
  wire pPcieLinkUp;
  wire pPcieSysRst_n;
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
  wire [31:0]xPcieToICAP_AXI_tdata;
  wire [3:0]xPcieToICAP_AXI_tkeep;
  wire xPcieToICAP_AXI_tlast;
  wire xPcieToICAP_AXI_tready;
  wire xPcieToICAP_AXI_tvalid;

  PcieBridge PcieBridge_i
       (.AxiBusClock(AxiBusClock),
        .McuAxiClock(McuAxiClock),
        .PCIE_CLOCK_clk_n(PCIE_CLOCK_clk_n),
        .PCIE_CLOCK_clk_p(PCIE_CLOCK_clk_p),
        .aPCIE_rxn(aPCIE_rxn),
        .aPCIE_rxp(aPCIE_rxp),
        .aPCIE_txn(aPCIE_txn),
        .aPCIE_txp(aPCIE_txp),
        .mDebugMcu_AXI_araddr(mDebugMcu_AXI_araddr),
        .mDebugMcu_AXI_arready(mDebugMcu_AXI_arready),
        .mDebugMcu_AXI_arvalid(mDebugMcu_AXI_arvalid),
        .mDebugMcu_AXI_awaddr(mDebugMcu_AXI_awaddr),
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
        .pPcieLinkUp(pPcieLinkUp),
        .pPcieSysRst_n(pPcieSysRst_n),
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
        .xPcieToDfx_AXI_wvalid(xPcieToDfx_AXI_wvalid),
        .xPcieToICAP_AXI_tdata(xPcieToICAP_AXI_tdata),
        .xPcieToICAP_AXI_tkeep(xPcieToICAP_AXI_tkeep),
        .xPcieToICAP_AXI_tlast(xPcieToICAP_AXI_tlast),
        .xPcieToICAP_AXI_tready(xPcieToICAP_AXI_tready),
        .xPcieToICAP_AXI_tvalid(xPcieToICAP_AXI_tvalid));
endmodule
