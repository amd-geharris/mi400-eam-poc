

set_property PACKAGE_PIN AB7 [get_ports PCIE_CLOCK_P]
set_property PACKAGE_PIN AF14 [get_ports MICROBLAZE_UART_RX]
set_property PACKAGE_PIN AF15 [get_ports MICROBLAZE_UART_TX]

set_property PACKAGE_PIN T24 [get_ports FPGA_CLK_100MHZ_P]
set_property PACKAGE_PIN U24 [get_ports FPGA_CLK_100MHZ_N]
set_property LOC GTYE4_CHANNEL_X0Y3 [get_cells {PcieBridge_wrapper_inst/PcieBridge_i/xdma_0/inst/pcie4_ip_i/inst/PcieBridge_xdma_0_0_pcie4_ip_gt_top_i/diablo_gt.diablo_gt_phy_wrapper/gt_wizard.gtwizard_top_i/PcieBridge_xdma_0_0_pcie4_ip_gt_i/inst/gen_gtwizard_gtye4_top.PcieBridge_xdma_0_0_pcie4_ip_gt_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_channel_container[1].gen_enabled_channel.gtye4_channel_wrapper_inst/channel_inst/gtye4_channel_gen.gen_gtye4_channel_inst[0].GTYE4_CHANNEL_PRIM_INST}]
set_property PACKAGE_PIN AB2 [get_ports PCIE_RXP]




create_pblock pblock_Top_DFX_Main_inst
add_cells_to_pblock [get_pblocks pblock_Top_DFX_Main_inst] [get_cells -quiet [list Top_DFX_Main_inst]]
resize_pblock [get_pblocks pblock_Top_DFX_Main_inst] -add {CLOCKREGION_X0Y1:CLOCKREGION_X2Y3}
set_property SNAPPING_MODE ON [get_pblocks pblock_Top_DFX_Main_inst]
