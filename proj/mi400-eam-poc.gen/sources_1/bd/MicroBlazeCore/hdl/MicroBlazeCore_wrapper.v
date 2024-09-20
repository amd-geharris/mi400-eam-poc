//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Fri Sep 20 11:59:36 2024
//Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
//Command     : generate_target MicroBlazeCore_wrapper.bd
//Design      : MicroBlazeCore_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MicroBlazeCore_wrapper
   (AxiBusClock,
    Clock,
    aUART_rxd,
    aUART_txd,
    dReset_n,
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
  input Clock;
  input aUART_rxd;
  output aUART_txd;
  input dReset_n;
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
  wire Clock;
  wire aUART_rxd;
  wire aUART_txd;
  wire dReset_n;
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
        .Clock(Clock),
        .aUART_rxd(aUART_rxd),
        .aUART_txd(aUART_txd),
        .dReset_n(dReset_n),
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
