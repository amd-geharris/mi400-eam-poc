//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
//Date        : Fri Sep 20 11:56:20 2024
//Host        : BDCGEHARRIS01 running 64-bit major release  (build 9200)
//Command     : generate_target PcieBridge.bd
//Design      : PcieBridge
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "PcieBridge,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PcieBridge,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_xdma_cnt=1,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "PcieBridge.hwdef" *) 
module PcieBridge
   (AxiBusClock,
    PcieClock,
    PcieSysClock,
    aPCIE_rxn,
    aPCIE_rxp,
    aPCIE_txn,
    aPCIE_txp,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PCIECLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PCIECLOCK, CLK_DOMAIN PcieBridge_PcieClock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input PcieClock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PCIESYSCLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PCIESYSCLOCK, CLK_DOMAIN PcieBridge_PcieSysClock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input PcieSysClock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 aPCIE rxn" *) input [0:0]aPCIE_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 aPCIE rxp" *) input [0:0]aPCIE_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 aPCIE txn" *) output [0:0]aPCIE_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 aPCIE txp" *) output [0:0]aPCIE_txp;
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
  wire PcieClock_1;
  wire PcieSysClock_1;
  wire [31:0]axis_dwidth_converter_0_M_AXIS_TDATA;
  wire [3:0]axis_dwidth_converter_0_M_AXIS_TKEEP;
  wire axis_dwidth_converter_0_M_AXIS_TLAST;
  wire axis_dwidth_converter_0_M_AXIS_TREADY;
  wire axis_dwidth_converter_0_M_AXIS_TVALID;
  wire pPcieLinkUp;
  wire pPcieSysRst_n;
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

  assign PcieClock_1 = PcieClock;
  assign PcieSysClock_1 = PcieSysClock;
  assign aPCIE_txn[0] = xdma_0_pcie_mgt_txn;
  assign aPCIE_txp[0] = xdma_0_pcie_mgt_txp;
  assign axis_dwidth_converter_0_M_AXIS_TREADY = xPcieToICAP_AXI_tready;
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
        .sys_clk(PcieSysClock_1),
        .sys_clk_gt(PcieClock_1),
        .sys_rst_n(pPcieSysRst_n),
        .user_lnk_up(pPcieLinkUp),
        .usr_irq_req(1'b0));
endmodule
