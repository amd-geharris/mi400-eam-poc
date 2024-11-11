//=============================================================================
// AMD 2024
// All rights reserved
//
//  File Name: TopMi400EamPoc.v
//  Created By: 
//  Creation Date: August-29-2024
// 
//  Module Description:
// 
//=============================================================================
`timescale 1 ns / 1 ns

module TopMi400EamPoc
(
    // CORE
    input   wire    FPGA_CLK_100MHZ_P,
    input   wire    FPGA_CLK_100MHZ_N,
    // input   wire    uMicroBlazeRst_n,


    // PCIe
    input   wire    PCIE_CLOCK_P,
    input   wire    PCIE_CLOCK_N,
    input   wire    PCIE_RESET_N,
    input   wire    [3:0]   PCIE_RXN,
    input   wire    [3:0]   PCIE_RXP,
    output  wire    [3:0]   PCIE_TXN,
    output  wire    [3:0]   PCIE_TXP,


    // UART
    input   wire    MICROBLAZE_UART_RX,
    output  wire    MICROBLAZE_UART_TX,

    // Debug
    output  wire    [5:0]   LED

);
//=====================================================================================================================
//                                      X.X -- Local Variables
//=====================================================================================================================
    //############################################################
    // Local Wires
    //############################################################
    wire [31:0]sMcuInputControl;
    wire [31:0]sMcuOutputControl;

    // PCIe Bridge
    wire PcieAxiClock;
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
    wire mMcuAxiReset_n;
    wire [31:0]mPcieToICAP_AXI_araddr;
    wire [1:0]mPcieToICAP_AXI_arburst;
    wire [3:0]mPcieToICAP_AXI_arcache;
    wire [7:0]mPcieToICAP_AXI_arlen;
    wire [0:0]mPcieToICAP_AXI_arlock;
    wire [2:0]mPcieToICAP_AXI_arprot;
    wire [3:0]mPcieToICAP_AXI_arqos;
    wire mPcieToICAP_AXI_arready;
    wire [3:0]mPcieToICAP_AXI_arregion;
    wire [2:0]mPcieToICAP_AXI_arsize;
    wire mPcieToICAP_AXI_arvalid;
    wire [31:0]mPcieToICAP_AXI_awaddr;
    wire [1:0]mPcieToICAP_AXI_awburst;
    wire [3:0]mPcieToICAP_AXI_awcache;
    wire [7:0]mPcieToICAP_AXI_awlen;
    wire [0:0]mPcieToICAP_AXI_awlock;
    wire [2:0]mPcieToICAP_AXI_awprot;
    wire [3:0]mPcieToICAP_AXI_awqos;
    wire mPcieToICAP_AXI_awready;
    wire [3:0]mPcieToICAP_AXI_awregion;
    wire [2:0]mPcieToICAP_AXI_awsize;
    wire mPcieToICAP_AXI_awvalid;
    wire mPcieToICAP_AXI_bready;
    wire [1:0]mPcieToICAP_AXI_bresp;
    wire mPcieToICAP_AXI_bvalid;
    wire [31:0]mPcieToICAP_AXI_rdata;
    wire mPcieToICAP_AXI_rlast;
    wire mPcieToICAP_AXI_rready;
    wire [1:0]mPcieToICAP_AXI_rresp;
    wire mPcieToICAP_AXI_rvalid;
    wire [31:0]mPcieToICAP_AXI_wdata;
    wire mPcieToICAP_AXI_wlast;
    wire mPcieToICAP_AXI_wready;
    wire [3:0]mPcieToICAP_AXI_wstrb;
    wire mPcieToICAP_AXI_wvalid;
    wire [63:0]pPcieAxiMM_AXI_araddr;
    wire [1:0]pPcieAxiMM_AXI_arburst;
    wire [3:0]pPcieAxiMM_AXI_arcache;
    wire [3:0]pPcieAxiMM_AXI_arid;
    wire [7:0]pPcieAxiMM_AXI_arlen;
    wire [0:0]pPcieAxiMM_AXI_arlock;
    wire [2:0]pPcieAxiMM_AXI_arprot;
    wire [3:0]pPcieAxiMM_AXI_arqos;
    wire [0:0]pPcieAxiMM_AXI_arready;
    wire [3:0]pPcieAxiMM_AXI_arregion;
    wire [2:0]pPcieAxiMM_AXI_arsize;
    wire [0:0]pPcieAxiMM_AXI_arvalid;
    wire [63:0]pPcieAxiMM_AXI_awaddr;
    wire [1:0]pPcieAxiMM_AXI_awburst;
    wire [3:0]pPcieAxiMM_AXI_awcache;
    wire [3:0]pPcieAxiMM_AXI_awid;
    wire [7:0]pPcieAxiMM_AXI_awlen;
    wire [0:0]pPcieAxiMM_AXI_awlock;
    wire [2:0]pPcieAxiMM_AXI_awprot;
    wire [3:0]pPcieAxiMM_AXI_awqos;
    wire [0:0]pPcieAxiMM_AXI_awready;
    wire [3:0]pPcieAxiMM_AXI_awregion;
    wire [2:0]pPcieAxiMM_AXI_awsize;
    wire [0:0]pPcieAxiMM_AXI_awvalid;
    wire [3:0]pPcieAxiMM_AXI_bid;
    wire [0:0]pPcieAxiMM_AXI_bready;
    wire [1:0]pPcieAxiMM_AXI_bresp;
    wire [0:0]pPcieAxiMM_AXI_bvalid;
    wire [127:0]pPcieAxiMM_AXI_rdata;
    wire [3:0]pPcieAxiMM_AXI_rid;
    wire [0:0]pPcieAxiMM_AXI_rlast;
    wire [0:0]pPcieAxiMM_AXI_rready;
    wire [1:0]pPcieAxiMM_AXI_rresp;
    wire [0:0]pPcieAxiMM_AXI_rvalid;
    wire [127:0]pPcieAxiMM_AXI_wdata;
    wire [0:0]pPcieAxiMM_AXI_wlast;
    wire [0:0]pPcieAxiMM_AXI_wready;
    wire [15:0]pPcieAxiMM_AXI_wstrb;
    wire [0:0]pPcieAxiMM_AXI_wvalid;
    wire pPcieAxiReset_n;
    wire pPcieLinkUp;
    wire [31:0]pPcieToDfx_AXI_araddr;
    wire [2:0]pPcieToDfx_AXI_arprot;
    wire pPcieToDfx_AXI_arready;
    wire pPcieToDfx_AXI_arvalid;
    wire [31:0]pPcieToDfx_AXI_awaddr;
    wire [2:0]pPcieToDfx_AXI_awprot;
    wire pPcieToDfx_AXI_awready;
    wire pPcieToDfx_AXI_awvalid;
    wire pPcieToDfx_AXI_bready;
    wire [1:0]pPcieToDfx_AXI_bresp;
    wire pPcieToDfx_AXI_bvalid;
    wire [31:0]pPcieToDfx_AXI_rdata;
    wire pPcieToDfx_AXI_rready;
    wire [1:0]pPcieToDfx_AXI_rresp;
    wire pPcieToDfx_AXI_rvalid;
    wire [31:0]pPcieToDfx_AXI_wdata;
    wire pPcieToDfx_AXI_wready;
    wire [3:0]pPcieToDfx_AXI_wstrb;
    wire pPcieToDfx_AXI_wvalid;

    // Clock and Reset
    wire    Clock_DiffOut;
    wire    McuAxiClock;
    wire    mPllLocked;
    wire    clkfbout;
    wire    McuAxiClock_unbuffed;
    reg     mDfxReset_meta;
    reg     mDfxReset;
    wire    aPRDONE;
    reg     mStaticReset_meta;
    reg     mStaticReset;


    // Security
    wire    mPRDONE;
    wire    mPRERROR;


    reg test1 = 1'b0;
//=====================================================================================================================
//                                      X.X -- Module Parameters
//=====================================================================================================================

//=====================================================================================================================
//                                      X.X -- Clocks and Source Resets
//=====================================================================================================================
    //############################################################
    // Core Clock
    //############################################################
    // Input Buffer
    IBUFDS CORE_IBUFDS (.I(FPGA_CLK_100MHZ_P), .IB(FPGA_CLK_100MHZ_N), .O(Clock_DiffOut));
    // PLL
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
        .CLKOUT0     (McuAxiClock_unbuffed),
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
        .LOCKED      (aPllLocked),
        .CLKINSTOPPED(),
        .CLKFBSTOPPED(),
        .PWRDWN      (1'b0),
        .RST         (1'b0)
    );
    // Clock Buffer
    BUFG CORE_BUFG (.I(McuAxiClock_unbuffed), .O(McuAxiClock));

    // Pll Lock Register
    reg     aPllLockedReg   = 1'b0;
    always @(posedge aPllLocked) begin
        aPllLockedReg   <= 1'b1;
    end

    assign aReset_n = (aPllLocked & aPllLockedReg);
    //############################################################
    // Static Domain Reset
    //############################################################
    always @(posedge McuAxiClock or negedge aReset_n) begin
        if (~aReset_n) begin
            mStaticReset_meta   <= 1'b1;
            mStaticReset        <= 1'b1;
        end
        else begin
            mStaticReset_meta   <= 1'b0;
            mStaticReset        <= mStaticReset_meta;
        end
    end
    //############################################################
    // DFX Domain Reset
    //############################################################
    assign aPRDONE  = (mPRDONE & aReset_n);

    always @(posedge McuAxiClock or negedge aPRDONE) begin
        if (~aPRDONE) begin
            mDfxReset_meta  <= 1'b1;
            mDfxReset       <= 1'b1;
        end
        else begin
            mDfxReset_meta   <= 1'b0;
            mDfxReset        <= mDfxReset_meta;
        end
    end
//=====================================================================================================================
//                                      X.X -- Module Instances
//=====================================================================================================================
    //############################################################
    // Top DFX Main
    //############################################################
    Top_DFX_Main  Top_DFX_Main_inst (
        .McuAxiClock(McuAxiClock),
        .PcieAxiClock(PcieAxiClock),
        .aPllLocked(aPllLocked),
        .aUART_rxd(aMICROBLAZE_UART_RX),
        .aUART_txd(aMICROBLAZE_UART_TX),
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
        .sMcuOutputControl(sMcuOutputControl),

        .S_BSCAN_drck(),
        .S_BSCAN_shift(),
        .S_BSCAN_tdi(),
        .S_BSCAN_update(),
        .S_BSCAN_sel(),
        .S_BSCAN_tdo(),
        .S_BSCAN_tms(),
        .S_BSCAN_tck(),
        .S_BSCAN_runtest(),
        .S_BSCAN_reset(),
        .S_BSCAN_capture(),
        .S_BSCAN_bscanid_en()
    );
    //############################################################
    // PCIe Bridge
    //############################################################
    PcieBridge PcieBridge_i (
        .McuAxiClock(McuAxiClock),
        .PcieAxiClock(PcieAxiClock),
        .aPCIE_CLOCK_clk_n(PCIE_CLOCK_N),
        .aPCIE_CLOCK_clk_p(PCIE_CLOCK_P),
        .aPCIE_rxn(PCIE_RXN[3:0]),
        .aPCIE_rxp(PCIE_RXP[3:0]),
        .aPCIE_txn(PCIE_TXN[3:0]),
        .aPCIE_txp(PCIE_TXP[3:0]),
        .aPERST_N(PCIE_RESET_N),
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
        .mMcuAxiReset_n(mMcuAxiReset_n),
        .mPcieToICAP_AXI_araddr(mPcieToICAP_AXI_araddr),
        .mPcieToICAP_AXI_arburst(mPcieToICAP_AXI_arburst),
        .mPcieToICAP_AXI_arcache(mPcieToICAP_AXI_arcache),
        .mPcieToICAP_AXI_arlen(mPcieToICAP_AXI_arlen),
        .mPcieToICAP_AXI_arlock(mPcieToICAP_AXI_arlock),
        .mPcieToICAP_AXI_arprot(mPcieToICAP_AXI_arprot),
        .mPcieToICAP_AXI_arqos(mPcieToICAP_AXI_arqos),
        .mPcieToICAP_AXI_arready(mPcieToICAP_AXI_arready),
        .mPcieToICAP_AXI_arregion(mPcieToICAP_AXI_arregion),
        .mPcieToICAP_AXI_arsize(mPcieToICAP_AXI_arsize),
        .mPcieToICAP_AXI_arvalid(mPcieToICAP_AXI_arvalid),
        .mPcieToICAP_AXI_awaddr(mPcieToICAP_AXI_awaddr),
        .mPcieToICAP_AXI_awburst(mPcieToICAP_AXI_awburst),
        .mPcieToICAP_AXI_awcache(mPcieToICAP_AXI_awcache),
        .mPcieToICAP_AXI_awlen(mPcieToICAP_AXI_awlen),
        .mPcieToICAP_AXI_awlock(mPcieToICAP_AXI_awlock),
        .mPcieToICAP_AXI_awprot(mPcieToICAP_AXI_awprot),
        .mPcieToICAP_AXI_awqos(mPcieToICAP_AXI_awqos),
        .mPcieToICAP_AXI_awready(mPcieToICAP_AXI_awready),
        .mPcieToICAP_AXI_awregion(mPcieToICAP_AXI_awregion),
        .mPcieToICAP_AXI_awsize(mPcieToICAP_AXI_awsize),
        .mPcieToICAP_AXI_awvalid(mPcieToICAP_AXI_awvalid),
        .mPcieToICAP_AXI_bready(mPcieToICAP_AXI_bready),
        .mPcieToICAP_AXI_bresp(mPcieToICAP_AXI_bresp),
        .mPcieToICAP_AXI_bvalid(mPcieToICAP_AXI_bvalid),
        .mPcieToICAP_AXI_rdata(mPcieToICAP_AXI_rdata),
        .mPcieToICAP_AXI_rlast(mPcieToICAP_AXI_rlast),
        .mPcieToICAP_AXI_rready(mPcieToICAP_AXI_rready),
        .mPcieToICAP_AXI_rresp(mPcieToICAP_AXI_rresp),
        .mPcieToICAP_AXI_rvalid(mPcieToICAP_AXI_rvalid),
        .mPcieToICAP_AXI_wdata(mPcieToICAP_AXI_wdata),
        .mPcieToICAP_AXI_wlast(mPcieToICAP_AXI_wlast),
        .mPcieToICAP_AXI_wready(mPcieToICAP_AXI_wready),
        .mPcieToICAP_AXI_wstrb(mPcieToICAP_AXI_wstrb),
        .mPcieToICAP_AXI_wvalid(mPcieToICAP_AXI_wvalid),
        .pPcieAxiMM_AXI_araddr(pPcieAxiMM_AXI_araddr),
        .pPcieAxiMM_AXI_arburst(pPcieAxiMM_AXI_arburst),
        .pPcieAxiMM_AXI_arcache(pPcieAxiMM_AXI_arcache),
        .pPcieAxiMM_AXI_arid(pPcieAxiMM_AXI_arid),
        .pPcieAxiMM_AXI_arlen(pPcieAxiMM_AXI_arlen),
        .pPcieAxiMM_AXI_arlock(pPcieAxiMM_AXI_arlock),
        .pPcieAxiMM_AXI_arprot(pPcieAxiMM_AXI_arprot),
        .pPcieAxiMM_AXI_arqos(pPcieAxiMM_AXI_arqos),
        .pPcieAxiMM_AXI_arready(pPcieAxiMM_AXI_arready),
        .pPcieAxiMM_AXI_arregion(pPcieAxiMM_AXI_arregion),
        .pPcieAxiMM_AXI_arsize(pPcieAxiMM_AXI_arsize),
        .pPcieAxiMM_AXI_arvalid(pPcieAxiMM_AXI_arvalid),
        .pPcieAxiMM_AXI_awaddr(pPcieAxiMM_AXI_awaddr),
        .pPcieAxiMM_AXI_awburst(pPcieAxiMM_AXI_awburst),
        .pPcieAxiMM_AXI_awcache(pPcieAxiMM_AXI_awcache),
        .pPcieAxiMM_AXI_awid(pPcieAxiMM_AXI_awid),
        .pPcieAxiMM_AXI_awlen(pPcieAxiMM_AXI_awlen),
        .pPcieAxiMM_AXI_awlock(pPcieAxiMM_AXI_awlock),
        .pPcieAxiMM_AXI_awprot(pPcieAxiMM_AXI_awprot),
        .pPcieAxiMM_AXI_awqos(pPcieAxiMM_AXI_awqos),
        .pPcieAxiMM_AXI_awready(pPcieAxiMM_AXI_awready),
        .pPcieAxiMM_AXI_awregion(pPcieAxiMM_AXI_awregion),
        .pPcieAxiMM_AXI_awsize(pPcieAxiMM_AXI_awsize),
        .pPcieAxiMM_AXI_awvalid(pPcieAxiMM_AXI_awvalid),
        .pPcieAxiMM_AXI_bid(pPcieAxiMM_AXI_bid),
        .pPcieAxiMM_AXI_bready(pPcieAxiMM_AXI_bready),
        .pPcieAxiMM_AXI_bresp(pPcieAxiMM_AXI_bresp),
        .pPcieAxiMM_AXI_bvalid(pPcieAxiMM_AXI_bvalid),
        .pPcieAxiMM_AXI_rdata(pPcieAxiMM_AXI_rdata),
        .pPcieAxiMM_AXI_rid(pPcieAxiMM_AXI_rid),
        .pPcieAxiMM_AXI_rlast(pPcieAxiMM_AXI_rlast),
        .pPcieAxiMM_AXI_rready(pPcieAxiMM_AXI_rready),
        .pPcieAxiMM_AXI_rresp(pPcieAxiMM_AXI_rresp),
        .pPcieAxiMM_AXI_rvalid(pPcieAxiMM_AXI_rvalid),
        .pPcieAxiMM_AXI_wdata(pPcieAxiMM_AXI_wdata),
        .pPcieAxiMM_AXI_wlast(pPcieAxiMM_AXI_wlast),
        .pPcieAxiMM_AXI_wready(pPcieAxiMM_AXI_wready),
        .pPcieAxiMM_AXI_wstrb(pPcieAxiMM_AXI_wstrb),
        .pPcieAxiMM_AXI_wvalid(pPcieAxiMM_AXI_wvalid),
        .pPcieAxiReset_n(pPcieAxiReset_n),
        .pPcieLinkUp(pPcieLinkUp),
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
        .pPcieToDfx_AXI_wvalid(pPcieToDfx_AXI_wvalid)
    );
    //############################################################
    // Security
    //############################################################

    ICAPE3 #(
        .DEVICE_ID(32'h03628093), // Specifies the pre-programmed Device ID value to be used for simulation purposes.
        .ICAP_AUTO_SWITCH("DISABLE"), // Enable switch ICAP using sync word
        .SIM_CFG_FILE_NAME("NONE") // Specifies the Raw Bitstream (RBT) file to be parsed by the simulation model
    ) 
    ICAPE3_inst (
        .AVAIL    (mPcieToICAP_AXI_wready),    // 1-bit output: Availability status of ICAP
        .O        (),         // 32-bit output: Configuration data output bus
        .PRDONE   (mPRDONE),   // 1-bit output: Indicates completion of Partial Reconfiguration
        .PRERROR  (mPRERROR),  // 1-bit output: Indicates Error during Partial Reconfiguration
        .CLK      (McuAxiClock),      // 1-bit input: Clock input
        .CSIB     (!mPcieToICAP_AXI_wvalid),     // 1-bit input: Active-Low ICAP enable
        .I        (mPcieToICAP_AXI_wdata[31:0]),        // 32-bit input: Configuration data input bus
        .RDWRB    (1'b0)     // 1-bit input: Read/Write Select input
    );

//=====================================================================================================================
//                                      X.X -- Bus Assignments
//=====================================================================================================================

//=====================================================================================================================
//                                      X.X -- BiDir Assignments
//=====================================================================================================================

//=====================================================================================================================
//                                      X.X -- Input Buffers
//=====================================================================================================================
    //############################################################
    // UART
    //############################################################
    IBUF I_MICROBLAZE_UART_RX (
        .I(MICROBLAZE_UART_RX),
        .O(aMICROBLAZE_UART_RX)
    );
//=====================================================================================================================
//                                      X.X -- Output Assignments
//=====================================================================================================================
    //############################################################
    // UART
    //############################################################
    OBUF O_MICROBLAZE_UART_TX (
        .I(aMICROBLAZE_UART_TX),
        .O(MICROBLAZE_UART_TX)
    );

//=====================================================================================================================
//                                      X.X -- Debug
//=====================================================================================================================
    //############################################################
    // LEDs
    //############################################################
    assign LED[0]   = aPllLocked;
    assign LED[1]   = aPllLockedReg;
    assign LED[2]   = aReset_n;
    assign LED[3]   = 1'b0;
    assign LED[4]   = 1'b0;
    assign LED[5]   = test1;
    //############################################################
    // ILA
    //############################################################
    // ila_0 your_instance_name (
    //     .clk(McuAxiClock), // input wire clk

    //     .probe0(mStaticReset), // input wire [0:0]  probe0  
    //     .probe1(mDfxReset), // input wire [0:0]  probe1 
    //     .probe2(PCIE_RESET_N), // input wire [0:0]  probe2 
    //     .probe3(mMcuAxiReset_n), // input wire [0:0]  probe3 
    //     .probe4(pPcieAxiReset_n), // input wire [0:0]  probe4 
    //     .probe5(mDebugSysRst), // input wire [0:0]  probe5 
    //     .probe6(mPRDONE), // input wire [0:0]  probe6 
    //     .probe7(mPRERROR), // input wire [0:0]  probe7 
    //     .probe8(pPcieLinkUp), // input wire [0:0]  probe8 
    //     .probe9(1'b0), // input wire [0:0]  probe9 
    //     .probe10(aPllLocked), // input wire [0:0]  probe10 
    //     .probe11(aPllLockedReg), // input wire [0:0]  probe11 
    //     .probe12(aReset_n), // input wire [0:0]  probe12 
    //     .probe13(test1), // input wire [0:0]  probe13 
    //     .probe14(8'h00), // input wire [0:0]  probe14 
    //     .probe15(1'b0), // input wire [0:0]  probe15 
    //     .probe16(1'b0), // input wire [0:0]  probe16 
    //     .probe17(1'b0), // input wire [0:0]  probe17 
    //     .probe18(1'b0), // input wire [0:0]  probe18 
    //     .probe19(1'b0), // input wire [0:0]  probe19 
    //     .probe20(1'b0), // input wire [0:0]  probe20 
    //     .probe21(1'b0), // input wire [0:0]  probe21 
    //     .probe22(1'b0), // input wire [0:0]  probe22 
    //     .probe23(1'b0), // input wire [0:0]  probe23 
    //     .probe24(1'b0), // input wire [0:0]  probe24 
    //     .probe25(1'b0), // input wire [0:0]  probe25 
    //     .probe26(1'b0), // input wire [0:0]  probe26 
    //     .probe27(1'b0), // input wire [0:0]  probe27 
    //     .probe28(1'b0), // input wire [0:0]  probe28 
    //     .probe29(1'b0), // input wire [0:0]  probe29 
    //     .probe30(1'b0), // input wire [0:0]  probe30 
    //     .probe31(1'b0) // input wire [0:0]  probe31
    // );

//=====================================================================================================================
endmodule
