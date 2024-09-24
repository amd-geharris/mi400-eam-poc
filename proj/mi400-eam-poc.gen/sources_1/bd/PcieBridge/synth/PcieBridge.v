//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Mon Sep 23 11:00:47 2024
//Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
//Command     : generate_target PcieBridge.bd
//Design      : PcieBridge
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "PcieBridge,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PcieBridge,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=5,da_clkrst_cnt=2,da_xdma_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "PcieBridge.hwdef" *) 
module PcieBridge
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AXIBUSCLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AXIBUSCLOCK, ASSOCIATED_BUSIF xPcieToDfx_AXI:xPcieToICAP_AXI, CLK_DOMAIN PcieBridge_xdma_0_0_axi_aclk, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output AxiBusClock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MCUAXICLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MCUAXICLOCK, ASSOCIATED_BUSIF mDebugMcu_AXI, ASSOCIATED_RESET mMcuAxiReset, CLK_DOMAIN PcieBridge_McuAxiClock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input McuAxiClock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIE_CLOCK " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME PCIE_CLOCK, CAN_DEBUG false, FREQ_HZ 100000000" *) input [0:0]PCIE_CLOCK_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 PCIE_CLOCK " *) input [0:0]PCIE_CLOCK_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 aPCIE rxn" *) input [0:0]aPCIE_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 aPCIE rxp" *) input [0:0]aPCIE_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 aPCIE txn" *) output [0:0]aPCIE_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 aPCIE txp" *) output [0:0]aPCIE_txp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mDebugMcu_AXI, ADDR_WIDTH 16, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PcieBridge_McuAxiClock, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 0, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [3:0]mDebugMcu_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI ARREADY" *) output mDebugMcu_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI ARVALID" *) input mDebugMcu_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI AWADDR" *) input [3:0]mDebugMcu_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI AWREADY" *) output mDebugMcu_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI AWVALID" *) input mDebugMcu_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI BREADY" *) input mDebugMcu_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI BRESP" *) output [1:0]mDebugMcu_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI BVALID" *) output mDebugMcu_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI RDATA" *) output [31:0]mDebugMcu_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI RREADY" *) input mDebugMcu_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI RRESP" *) output [1:0]mDebugMcu_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI RVALID" *) output mDebugMcu_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI WDATA" *) input [31:0]mDebugMcu_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI WREADY" *) output mDebugMcu_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI WSTRB" *) input [3:0]mDebugMcu_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 mDebugMcu_AXI WVALID" *) input mDebugMcu_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mDebugPort CAPTURE" *) output mDebugPort_capture;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mDebugPort CLK" *) output mDebugPort_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mDebugPort DISABLE" *) output mDebugPort_disable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mDebugPort REG_EN" *) output [0:7]mDebugPort_reg_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mDebugPort RST" *) output mDebugPort_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mDebugPort SHIFT" *) output mDebugPort_shift;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mDebugPort TDI" *) output mDebugPort_tdi;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mDebugPort TDO" *) input mDebugPort_tdo;
  (* X_INTERFACE_INFO = "xilinx.com:interface:mbdebug:3.0 mDebugPort UPDATE" *) output mDebugPort_update;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MDEBUGSYSRST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MDEBUGSYSRST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) output mDebugSysRst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MMCUAXIRESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MMCUAXIRESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input mMcuAxiReset;
  output pPcieLinkUp;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PPCIESYSRST_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PPCIESYSRST_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pPcieSysRst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.XAXIBUSRESET_N RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.XAXIBUSRESET_N, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output xAxiBusReset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME xPcieToDfx_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN PcieBridge_xdma_0_0_axi_aclk, DATA_WIDTH 32, FREQ_HZ 250000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]xPcieToDfx_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI ARPROT" *) output [2:0]xPcieToDfx_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI ARREADY" *) input xPcieToDfx_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI ARVALID" *) output xPcieToDfx_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI AWADDR" *) output [31:0]xPcieToDfx_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI AWPROT" *) output [2:0]xPcieToDfx_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI AWREADY" *) input xPcieToDfx_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI AWVALID" *) output xPcieToDfx_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI BREADY" *) output xPcieToDfx_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI BRESP" *) input [1:0]xPcieToDfx_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI BVALID" *) input xPcieToDfx_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI RDATA" *) input [31:0]xPcieToDfx_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI RREADY" *) output xPcieToDfx_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI RRESP" *) input [1:0]xPcieToDfx_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI RVALID" *) input xPcieToDfx_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI WDATA" *) output [31:0]xPcieToDfx_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI WREADY" *) input xPcieToDfx_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI WSTRB" *) output [3:0]xPcieToDfx_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 xPcieToDfx_AXI WVALID" *) output xPcieToDfx_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 xPcieToICAP_AXI TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME xPcieToICAP_AXI, CLK_DOMAIN PcieBridge_xdma_0_0_axi_aclk, FREQ_HZ 250000000, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]xPcieToICAP_AXI_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 xPcieToICAP_AXI TKEEP" *) output [3:0]xPcieToICAP_AXI_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 xPcieToICAP_AXI TLAST" *) output xPcieToICAP_AXI_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 xPcieToICAP_AXI TREADY" *) input xPcieToICAP_AXI_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 xPcieToICAP_AXI TVALID" *) output xPcieToICAP_AXI_tvalid;

  wire AxiBusClock;
  wire McuAxiClock_1;
  wire [0:0]PCIE_CLOCK_CLK_N;
  wire [0:0]PCIE_CLOCK_CLK_P;
  wire [31:0]axis_dwidth_converter_0_M_AXIS_TDATA;
  wire [3:0]axis_dwidth_converter_0_M_AXIS_TKEEP;
  wire axis_dwidth_converter_0_M_AXIS_TLAST;
  wire axis_dwidth_converter_0_M_AXIS_TREADY;
  wire axis_dwidth_converter_0_M_AXIS_TVALID;
  wire [3:0]mDebugMcu_AXI_1_ARADDR;
  wire mDebugMcu_AXI_1_ARREADY;
  wire mDebugMcu_AXI_1_ARVALID;
  wire [3:0]mDebugMcu_AXI_1_AWADDR;
  wire mDebugMcu_AXI_1_AWREADY;
  wire mDebugMcu_AXI_1_AWVALID;
  wire mDebugMcu_AXI_1_BREADY;
  wire [1:0]mDebugMcu_AXI_1_BRESP;
  wire mDebugMcu_AXI_1_BVALID;
  wire [31:0]mDebugMcu_AXI_1_RDATA;
  wire mDebugMcu_AXI_1_RREADY;
  wire [1:0]mDebugMcu_AXI_1_RRESP;
  wire mDebugMcu_AXI_1_RVALID;
  wire [31:0]mDebugMcu_AXI_1_WDATA;
  wire mDebugMcu_AXI_1_WREADY;
  wire [3:0]mDebugMcu_AXI_1_WSTRB;
  wire mDebugMcu_AXI_1_WVALID;
  wire mMcuAxiReset_1;
  wire mdm_0_Debug_SYS_Rst;
  wire mdm_0_MBDEBUG_0_CAPTURE;
  wire mdm_0_MBDEBUG_0_CLK;
  wire mdm_0_MBDEBUG_0_DISABLE;
  wire [0:7]mdm_0_MBDEBUG_0_REG_EN;
  wire mdm_0_MBDEBUG_0_RST;
  wire mdm_0_MBDEBUG_0_SHIFT;
  wire mdm_0_MBDEBUG_0_TDI;
  wire mdm_0_MBDEBUG_0_TDO;
  wire mdm_0_MBDEBUG_0_UPDATE;
  wire pPcieLinkUp;
  wire pPcieSysRst_n;
  wire [0:0]util_ds_buf_IBUF_DS_ODIV2;
  wire [0:0]util_ds_buf_IBUF_OUT;
  wire xAxiBusReset_n;
  wire [63:0]xdma_0_M_AXIS_H2C_0_TDATA;
  wire [7:0]xdma_0_M_AXIS_H2C_0_TKEEP;
  wire xdma_0_M_AXIS_H2C_0_TLAST;
  wire xdma_0_M_AXIS_H2C_0_TREADY;
  wire xdma_0_M_AXIS_H2C_0_TVALID;
  wire [31:0]xdma_0_M_AXI_LITE_ARADDR;
  wire [2:0]xdma_0_M_AXI_LITE_ARPROT;
  wire xdma_0_M_AXI_LITE_ARREADY;
  wire xdma_0_M_AXI_LITE_ARVALID;
  wire [31:0]xdma_0_M_AXI_LITE_AWADDR;
  wire [2:0]xdma_0_M_AXI_LITE_AWPROT;
  wire xdma_0_M_AXI_LITE_AWREADY;
  wire xdma_0_M_AXI_LITE_AWVALID;
  wire xdma_0_M_AXI_LITE_BREADY;
  wire [1:0]xdma_0_M_AXI_LITE_BRESP;
  wire xdma_0_M_AXI_LITE_BVALID;
  wire [31:0]xdma_0_M_AXI_LITE_RDATA;
  wire xdma_0_M_AXI_LITE_RREADY;
  wire [1:0]xdma_0_M_AXI_LITE_RRESP;
  wire xdma_0_M_AXI_LITE_RVALID;
  wire [31:0]xdma_0_M_AXI_LITE_WDATA;
  wire xdma_0_M_AXI_LITE_WREADY;
  wire [3:0]xdma_0_M_AXI_LITE_WSTRB;
  wire xdma_0_M_AXI_LITE_WVALID;
  wire [0:0]xdma_0_pcie_mgt_rxn;
  wire [0:0]xdma_0_pcie_mgt_rxp;
  wire [0:0]xdma_0_pcie_mgt_txn;
  wire [0:0]xdma_0_pcie_mgt_txp;

  assign McuAxiClock_1 = McuAxiClock;
  assign PCIE_CLOCK_CLK_N = PCIE_CLOCK_clk_n[0];
  assign PCIE_CLOCK_CLK_P = PCIE_CLOCK_clk_p[0];
  assign aPCIE_txn[0] = xdma_0_pcie_mgt_txn;
  assign aPCIE_txp[0] = xdma_0_pcie_mgt_txp;
  assign axis_dwidth_converter_0_M_AXIS_TREADY = xPcieToICAP_AXI_tready;
  assign mDebugMcu_AXI_1_ARADDR = mDebugMcu_AXI_araddr[3:0];
  assign mDebugMcu_AXI_1_ARVALID = mDebugMcu_AXI_arvalid;
  assign mDebugMcu_AXI_1_AWADDR = mDebugMcu_AXI_awaddr[3:0];
  assign mDebugMcu_AXI_1_AWVALID = mDebugMcu_AXI_awvalid;
  assign mDebugMcu_AXI_1_BREADY = mDebugMcu_AXI_bready;
  assign mDebugMcu_AXI_1_RREADY = mDebugMcu_AXI_rready;
  assign mDebugMcu_AXI_1_WDATA = mDebugMcu_AXI_wdata[31:0];
  assign mDebugMcu_AXI_1_WSTRB = mDebugMcu_AXI_wstrb[3:0];
  assign mDebugMcu_AXI_1_WVALID = mDebugMcu_AXI_wvalid;
  assign mDebugMcu_AXI_arready = mDebugMcu_AXI_1_ARREADY;
  assign mDebugMcu_AXI_awready = mDebugMcu_AXI_1_AWREADY;
  assign mDebugMcu_AXI_bresp[1:0] = mDebugMcu_AXI_1_BRESP;
  assign mDebugMcu_AXI_bvalid = mDebugMcu_AXI_1_BVALID;
  assign mDebugMcu_AXI_rdata[31:0] = mDebugMcu_AXI_1_RDATA;
  assign mDebugMcu_AXI_rresp[1:0] = mDebugMcu_AXI_1_RRESP;
  assign mDebugMcu_AXI_rvalid = mDebugMcu_AXI_1_RVALID;
  assign mDebugMcu_AXI_wready = mDebugMcu_AXI_1_WREADY;
  assign mDebugPort_capture = mdm_0_MBDEBUG_0_CAPTURE;
  assign mDebugPort_clk = mdm_0_MBDEBUG_0_CLK;
  assign mDebugPort_disable = mdm_0_MBDEBUG_0_DISABLE;
  assign mDebugPort_reg_en[0:7] = mdm_0_MBDEBUG_0_REG_EN;
  assign mDebugPort_rst = mdm_0_MBDEBUG_0_RST;
  assign mDebugPort_shift = mdm_0_MBDEBUG_0_SHIFT;
  assign mDebugPort_tdi = mdm_0_MBDEBUG_0_TDI;
  assign mDebugPort_update = mdm_0_MBDEBUG_0_UPDATE;
  assign mDebugSysRst = mdm_0_Debug_SYS_Rst;
  assign mMcuAxiReset_1 = mMcuAxiReset;
  assign mdm_0_MBDEBUG_0_TDO = mDebugPort_tdo;
  assign xPcieToDfx_AXI_araddr[31:0] = xdma_0_M_AXI_LITE_ARADDR;
  assign xPcieToDfx_AXI_arprot[2:0] = xdma_0_M_AXI_LITE_ARPROT;
  assign xPcieToDfx_AXI_arvalid = xdma_0_M_AXI_LITE_ARVALID;
  assign xPcieToDfx_AXI_awaddr[31:0] = xdma_0_M_AXI_LITE_AWADDR;
  assign xPcieToDfx_AXI_awprot[2:0] = xdma_0_M_AXI_LITE_AWPROT;
  assign xPcieToDfx_AXI_awvalid = xdma_0_M_AXI_LITE_AWVALID;
  assign xPcieToDfx_AXI_bready = xdma_0_M_AXI_LITE_BREADY;
  assign xPcieToDfx_AXI_rready = xdma_0_M_AXI_LITE_RREADY;
  assign xPcieToDfx_AXI_wdata[31:0] = xdma_0_M_AXI_LITE_WDATA;
  assign xPcieToDfx_AXI_wstrb[3:0] = xdma_0_M_AXI_LITE_WSTRB;
  assign xPcieToDfx_AXI_wvalid = xdma_0_M_AXI_LITE_WVALID;
  assign xPcieToICAP_AXI_tdata[31:0] = axis_dwidth_converter_0_M_AXIS_TDATA;
  assign xPcieToICAP_AXI_tkeep[3:0] = axis_dwidth_converter_0_M_AXIS_TKEEP;
  assign xPcieToICAP_AXI_tlast = axis_dwidth_converter_0_M_AXIS_TLAST;
  assign xPcieToICAP_AXI_tvalid = axis_dwidth_converter_0_M_AXIS_TVALID;
  assign xdma_0_M_AXI_LITE_ARREADY = xPcieToDfx_AXI_arready;
  assign xdma_0_M_AXI_LITE_AWREADY = xPcieToDfx_AXI_awready;
  assign xdma_0_M_AXI_LITE_BRESP = xPcieToDfx_AXI_bresp[1:0];
  assign xdma_0_M_AXI_LITE_BVALID = xPcieToDfx_AXI_bvalid;
  assign xdma_0_M_AXI_LITE_RDATA = xPcieToDfx_AXI_rdata[31:0];
  assign xdma_0_M_AXI_LITE_RRESP = xPcieToDfx_AXI_rresp[1:0];
  assign xdma_0_M_AXI_LITE_RVALID = xPcieToDfx_AXI_rvalid;
  assign xdma_0_M_AXI_LITE_WREADY = xPcieToDfx_AXI_wready;
  assign xdma_0_pcie_mgt_rxn = aPCIE_rxn[0];
  assign xdma_0_pcie_mgt_rxp = aPCIE_rxp[0];
  PcieBridge_axis_dwidth_converter_0_0 axis_dwidth_converter_0
       (.aclk(AxiBusClock),
        .aresetn(xAxiBusReset_n),
        .m_axis_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .m_axis_tkeep(axis_dwidth_converter_0_M_AXIS_TKEEP),
        .m_axis_tlast(axis_dwidth_converter_0_M_AXIS_TLAST),
        .m_axis_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(xdma_0_M_AXIS_H2C_0_TDATA),
        .s_axis_tkeep(xdma_0_M_AXIS_H2C_0_TKEEP),
        .s_axis_tlast(xdma_0_M_AXIS_H2C_0_TLAST),
        .s_axis_tready(xdma_0_M_AXIS_H2C_0_TREADY),
        .s_axis_tvalid(xdma_0_M_AXIS_H2C_0_TVALID));
  PcieBridge_mdm_0_0 mdm_0
       (.Dbg_Capture_0(mdm_0_MBDEBUG_0_CAPTURE),
        .Dbg_Clk_0(mdm_0_MBDEBUG_0_CLK),
        .Dbg_Disable_0(mdm_0_MBDEBUG_0_DISABLE),
        .Dbg_Reg_En_0(mdm_0_MBDEBUG_0_REG_EN),
        .Dbg_Rst_0(mdm_0_MBDEBUG_0_RST),
        .Dbg_Shift_0(mdm_0_MBDEBUG_0_SHIFT),
        .Dbg_TDI_0(mdm_0_MBDEBUG_0_TDI),
        .Dbg_TDO_0(mdm_0_MBDEBUG_0_TDO),
        .Dbg_Update_0(mdm_0_MBDEBUG_0_UPDATE),
        .Debug_SYS_Rst(mdm_0_Debug_SYS_Rst),
        .S_AXI_ACLK(McuAxiClock_1),
        .S_AXI_ARADDR(mDebugMcu_AXI_1_ARADDR),
        .S_AXI_ARESETN(mMcuAxiReset_1),
        .S_AXI_ARREADY(mDebugMcu_AXI_1_ARREADY),
        .S_AXI_ARVALID(mDebugMcu_AXI_1_ARVALID),
        .S_AXI_AWADDR(mDebugMcu_AXI_1_AWADDR),
        .S_AXI_AWREADY(mDebugMcu_AXI_1_AWREADY),
        .S_AXI_AWVALID(mDebugMcu_AXI_1_AWVALID),
        .S_AXI_BREADY(mDebugMcu_AXI_1_BREADY),
        .S_AXI_BRESP(mDebugMcu_AXI_1_BRESP),
        .S_AXI_BVALID(mDebugMcu_AXI_1_BVALID),
        .S_AXI_RDATA(mDebugMcu_AXI_1_RDATA),
        .S_AXI_RREADY(mDebugMcu_AXI_1_RREADY),
        .S_AXI_RRESP(mDebugMcu_AXI_1_RRESP),
        .S_AXI_RVALID(mDebugMcu_AXI_1_RVALID),
        .S_AXI_WDATA(mDebugMcu_AXI_1_WDATA),
        .S_AXI_WREADY(mDebugMcu_AXI_1_WREADY),
        .S_AXI_WSTRB(mDebugMcu_AXI_1_WSTRB),
        .S_AXI_WVALID(mDebugMcu_AXI_1_WVALID));
  PcieBridge_util_ds_buf_0 util_ds_buf
       (.IBUF_DS_N(PCIE_CLOCK_CLK_N),
        .IBUF_DS_ODIV2(util_ds_buf_IBUF_DS_ODIV2),
        .IBUF_DS_P(PCIE_CLOCK_CLK_P),
        .IBUF_OUT(util_ds_buf_IBUF_OUT));
  PcieBridge_xdma_0_0 xdma_0
       (.axi_aclk(AxiBusClock),
        .axi_aresetn(xAxiBusReset_n),
        .cfg_mgmt_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cfg_mgmt_byte_enable({1'b0,1'b0,1'b0,1'b0}),
        .cfg_mgmt_read(1'b0),
        .cfg_mgmt_write(1'b0),
        .cfg_mgmt_write_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axil_araddr(xdma_0_M_AXI_LITE_ARADDR),
        .m_axil_arprot(xdma_0_M_AXI_LITE_ARPROT),
        .m_axil_arready(xdma_0_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(xdma_0_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(xdma_0_M_AXI_LITE_AWADDR),
        .m_axil_awprot(xdma_0_M_AXI_LITE_AWPROT),
        .m_axil_awready(xdma_0_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(xdma_0_M_AXI_LITE_AWVALID),
        .m_axil_bready(xdma_0_M_AXI_LITE_BREADY),
        .m_axil_bresp(xdma_0_M_AXI_LITE_BRESP),
        .m_axil_bvalid(xdma_0_M_AXI_LITE_BVALID),
        .m_axil_rdata(xdma_0_M_AXI_LITE_RDATA),
        .m_axil_rready(xdma_0_M_AXI_LITE_RREADY),
        .m_axil_rresp(xdma_0_M_AXI_LITE_RRESP),
        .m_axil_rvalid(xdma_0_M_AXI_LITE_RVALID),
        .m_axil_wdata(xdma_0_M_AXI_LITE_WDATA),
        .m_axil_wready(xdma_0_M_AXI_LITE_WREADY),
        .m_axil_wstrb(xdma_0_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(xdma_0_M_AXI_LITE_WVALID),
        .m_axis_h2c_tdata_0(xdma_0_M_AXIS_H2C_0_TDATA),
        .m_axis_h2c_tkeep_0(xdma_0_M_AXIS_H2C_0_TKEEP),
        .m_axis_h2c_tlast_0(xdma_0_M_AXIS_H2C_0_TLAST),
        .m_axis_h2c_tready_0(xdma_0_M_AXIS_H2C_0_TREADY),
        .m_axis_h2c_tvalid_0(xdma_0_M_AXIS_H2C_0_TVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .s_axis_c2h_tdata_0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_c2h_tkeep_0({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .s_axis_c2h_tlast_0(1'b0),
        .s_axis_c2h_tvalid_0(1'b0),
        .sys_clk(util_ds_buf_IBUF_DS_ODIV2),
        .sys_clk_gt(util_ds_buf_IBUF_OUT),
        .sys_rst_n(pPcieSysRst_n),
        .user_lnk_up(pPcieLinkUp),
        .usr_irq_req(1'b0));
endmodule
