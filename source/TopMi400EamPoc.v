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
    input   wire    FPGA_CLK_100MHZ,
    input   wire    uMicroBlazeRst_n,


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
//=====================================================================================================================
//                                      X.X -- Module Parameters
//=====================================================================================================================

//=====================================================================================================================
//                                      X.X -- Clocks and Source Resets
//=====================================================================================================================
    //############################################################
    // Core Clock
    //############################################################
    BUFG (.I(FPGA_CLK_100MHZ), .O(Clock));
    //############################################################
    // PCIe Clock Buffer
    //############################################################
    IBUFDS_GTE4 #(.REFCLK_HROW_CK_SEL(2'b00)) PCIeClockBuffer(
        .I      (PCIE_CLOCK_P),
        .IB     (PCIE_CLOCK_N),
        .CEB    (1'b0),
        .O      (PcieClock),
        .ODIV2  (PcieSysClock)
    );
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
        
        // Clocks
        .AxiBusClock(AxiBusClock),  // input
        .Clock(Clock),  // input

        // UART
        .aUART_rxd(MICROBLAZE_UART_RX), // input
        .aUART_txd(MICROBLAZE_UART_TX), // output

        // Resets
        .dReset_n(uMicroBlazeRst_n),    // input

        // FPGA Fabric
        .sMcuInputControl(sMcuInputControl[31:0]),  // output
        .sMcuOutputControl(sMcuOutputControl[31:0]),    // input

        // PCIe to DFX
        .xAxiBusReset_n(xAxiBusReset_n),    // input
        .xPcieToDfx_AXI_araddr(xPcieToDfx_AXI_araddr[31:0]),    // input
        .xPcieToDfx_AXI_arprot(xPcieToDfx_AXI_arprot[2:0]), // input
        .xPcieToDfx_AXI_arready(xPcieToDfx_AXI_arready),    // output
        .xPcieToDfx_AXI_arvalid(xPcieToDfx_AXI_arvalid),    // input
        .xPcieToDfx_AXI_awaddr(xPcieToDfx_AXI_awaddr[31:0]),    // input
        .xPcieToDfx_AXI_awprot(xPcieToDfx_AXI_awprot[2:0]), // input
        .xPcieToDfx_AXI_awready(xPcieToDfx_AXI_awready),    // output
        .xPcieToDfx_AXI_awvalid(xPcieToDfx_AXI_awvalid),    // input
        .xPcieToDfx_AXI_bready(xPcieToDfx_AXI_bready),  // input
        .xPcieToDfx_AXI_bresp(xPcieToDfx_AXI_bresp[1:0]),   // output
        .xPcieToDfx_AXI_bvalid(xPcieToDfx_AXI_bvalid),  // output
        .xPcieToDfx_AXI_rdata(xPcieToDfx_AXI_rdata[31:0]),  // output
        .xPcieToDfx_AXI_rready(xPcieToDfx_AXI_rready),  // input
        .xPcieToDfx_AXI_rresp(xPcieToDfx_AXI_rresp[1:0]),   // output
        .xPcieToDfx_AXI_rvalid(xPcieToDfx_AXI_rvalid),  // output
        .xPcieToDfx_AXI_wdata(xPcieToDfx_AXI_wdata[31:0]),  // input
        .xPcieToDfx_AXI_wready(xPcieToDfx_AXI_wready),  // output
        .xPcieToDfx_AXI_wstrb(xPcieToDfx_AXI_wstrb[3:0]),   // input
        .xPcieToDfx_AXI_wvalid(xPcieToDfx_AXI_wvalid)   // input
    );
    //############################################################
    // PCIe Bridge
    //############################################################
    PcieBridge_wrapper  PcieBridge_wrapper_inst (
        // Clocks
        .AxiBusClock(AxiBusClock),  // output
        .PcieClock(PcieClock),  // input
        .PcieSysClock(PcieSysClock),    // input
        
        // PCIe
        .aPCIE_rxn(PCIE_RXN),   // input
        .aPCIE_rxp(PCIE_RXP),   // input
        .aPCIE_txn(PCIE_TXN),   // output
        .aPCIE_txp(PCIE_TXP),   // output
        .pPcieLinkUp(pPcieLinkUp),  // output
        
        // Resets
        .pPcieSysRst_n(pPcieSysRst_n),  // input
        .xAxiBusReset_n(xAxiBusReset_n),    // output
        
        // PCIe to DFX
        .xPcieToDfx_AXI_araddr(xPcieToDfx_AXI_araddr[31:0]),    // output
        .xPcieToDfx_AXI_arprot(xPcieToDfx_AXI_arprot[2:0]), // output
        .xPcieToDfx_AXI_arready(xPcieToDfx_AXI_arready),    // input
        .xPcieToDfx_AXI_arvalid(xPcieToDfx_AXI_arvalid),    // output
        .xPcieToDfx_AXI_awaddr(xPcieToDfx_AXI_awaddr[31:0]),    // output
        .xPcieToDfx_AXI_awprot(xPcieToDfx_AXI_awprot[2:0]), // output
        .xPcieToDfx_AXI_awready(xPcieToDfx_AXI_awready),    // input
        .xPcieToDfx_AXI_awvalid(xPcieToDfx_AXI_awvalid),    // output
        .xPcieToDfx_AXI_bready(xPcieToDfx_AXI_bready),  // output
        .xPcieToDfx_AXI_bresp(xPcieToDfx_AXI_bresp[1:0]),   // input
        .xPcieToDfx_AXI_bvalid(xPcieToDfx_AXI_bvalid),  // input
        .xPcieToDfx_AXI_rdata(xPcieToDfx_AXI_rdata[31:0]),  // input
        .xPcieToDfx_AXI_rready(xPcieToDfx_AXI_rready),  // output
        .xPcieToDfx_AXI_rresp(xPcieToDfx_AXI_rresp[1:0]),   // input
        .xPcieToDfx_AXI_rvalid(xPcieToDfx_AXI_rvalid),  // input
        .xPcieToDfx_AXI_wdata(xPcieToDfx_AXI_wdata[31:0]),  // output
        .xPcieToDfx_AXI_wready(xPcieToDfx_AXI_wready),  // input
        .xPcieToDfx_AXI_wstrb(xPcieToDfx_AXI_wstrb[3:0]),   // output
        .xPcieToDfx_AXI_wvalid(xPcieToDfx_AXI_wvalid),  // output

        // PCIe to ICAP
        .xPcieToICAP_AXI_tdata(xPcieToICAP_AXI_tdata[31:0]),    // output
        .xPcieToICAP_AXI_tkeep(xPcieToICAP_AXI_tkeep[7:0]), // output
        .xPcieToICAP_AXI_tlast(xPcieToICAP_AXI_tlast),  // output
        .xPcieToICAP_AXI_tready(xPcieToICAP_AXI_tready),    // input
        .xPcieToICAP_AXI_tvalid(xPcieToICAP_AXI_tvalid) // output
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

//=====================================================================================================================
//                                      X.X -- Output Assignments
//=====================================================================================================================



//=====================================================================================================================
endmodule
