create_clock -period 10.000 -name FPGA_CLK_100MHZ_P -waveform {0.000 5.000} [get_ports FPGA_CLK_100MHZ_P]
create_clock -period 10.000 -name PCIE_CLOCK_P -waveform {0.000 5.000} [get_ports PCIE_CLOCK_P]
#create_generated_clock -name AxiBusClock -source [get_pins PcieBridge_i/xdma_0/inst/pcie4_ip_i/inst/PcieBridge_xdma_0_0_pcie4_ip_gt_top_i/diablo_gt.diablo_gt_phy_wrapper/gt_wizard.gtwizard_top_i/PcieBridge_xdma_0_0_pcie4_ip_gt_i/inst/gen_gtwizard_gtye4_top.PcieBridge_xdma_0_0_pcie4_ip_gt_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_channel_container[1].gen_enabled_channel.gtye4_channel_wrapper_inst/channel_inst/gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST/TXOUTCLK] -divide_by 4 -multiply_by 1 [get_pins PcieBridge_i/xdma_0/axi_aclk]

