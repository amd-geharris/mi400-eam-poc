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
    input   wire    PCIE_RXN,
    input   wire    PCIE_RXP,
    output  wire    PCIE_TXN,
    output  wire    PCIE_TXP,


    // UART
    input   wire    MICROBLAZE_UART_RX,
    output  wire    MICROBLAZE_UART_TX

);
//=====================================================================================================================
//                                      X.X -- Local Variables
//=====================================================================================================================
    //############################################################
    // Local Wires
    //############################################################
    wire        pPcieSysRst_n;

    wire AxiBusClock;
    wire Clock;
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
    wire [63:0]xPcieToICAP_AXI_tdata;
    wire [7:0]xPcieToICAP_AXI_tkeep;
    wire xPcieToICAP_AXI_tlast;
    wire xPcieToICAP_AXI_tready;
    wire xPcieToICAP_AXI_tvalid;

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
    wire    Clock_DiffOut;


    wire    McuClock;
    wire    mPllLocked;
    wire    clkfbout;
    wire    McuClock_unbuffed;
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
    // Clock Buffer
    BUFG CORE_BUFG (.I(McuClock_unbuffed), .O(McuClock));
    //############################################################
    // PCIe Clock Buffer
    //############################################################
    // IBUFDS_GTE4 #(.REFCLK_HROW_CK_SEL(2'b00)) PCIeClockBuffer(
    //     .I      (PCIE_CLOCK_P),
    //     .IB     (PCIE_CLOCK_N),
    //     .CEB    (1'b0),
    //     .O      (PcieClock),
    //     .ODIV2  (PcieSysClock)
    // );
    //############################################################
    // PCIe System Clock Reset
    //############################################################
    assign pPcieSysRst_n = 1'b1;
//=====================================================================================================================
//                                      X.X -- Module Instances
//=====================================================================================================================
    //############################################################
    // Top DFX Main
    //############################################################
    Top_DFX_Main  Top_DFX_Main_inst (
        .AxiBusClock(AxiBusClock),
        .McuClock(McuClock),
        .McuAxiClock(McuAxiClock),
        .aUART_rxd(aMICROBLAZE_UART_RX),
        .aUART_txd(aMICROBLAZE_UART_TX),
        .dReset_n(1'b1),
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
    //############################################################
    // PCIe Bridge
    //############################################################
    PcieBridge  PcieBridge_i (
        .AxiBusClock(AxiBusClock),
        .McuAxiClock(McuAxiClock),
        .PCIE_CLOCK_clk_n(PCIE_CLOCK_N),
        .PCIE_CLOCK_clk_p(PCIE_CLOCK_P),
        .aPCIE_rxn(PCIE_RXN),
        .aPCIE_rxp(PCIE_RXP),
        .aPCIE_txn(PCIE_TXN),
        .aPCIE_txp(PCIE_TXP),
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
        .xPcieToICAP_AXI_tvalid(xPcieToICAP_AXI_tvalid)
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
        .AVAIL    (xPcieToICAP_AXI_tready),    // 1-bit output: Availability status of ICAP
        .O        (),         // 32-bit output: Configuration data output bus
        .PRDONE   (),   // 1-bit output: Indicates completion of Partial Reconfiguration
        .PRERROR  (),  // 1-bit output: Indicates Error during Partial Reconfiguration
        .CLK      (AxiBusClock),      // 1-bit input: Clock input
        .CSIB     (!xPcieToICAP_AXI_tvalid),     // 1-bit input: Active-Low ICAP enable
        .I        (xPcieToICAP_AXI_tdata[31:0]),        // 32-bit input: Configuration data input bus
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
endmodule
