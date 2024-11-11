#=============================================================================
# AMD 2024
# All rights reserved
#
#  File Name: clock_constraints.xdc
#  Created By: George Harris
#  Creation Date: October-24-2024
# 
#  Module Description:
#   Clock constraint file for the MI400 Project
#=============================================================================
##############################################################
# Fabric Clock
##############################################################
create_clock -period 10.000 -name FPGA_CLK_100MHZ_P -waveform {0.000 5.000} [get_ports FPGA_CLK_100MHZ_P]

##############################################################
# Fabric Clock generated Clocks
##############################################################
create_generated_clock -name McuAxiClock -source [get_ports FPGA_CLK_100MHZ_P] -divide_by 12 -multiply_by 12 [get_pins CORE_BUFG/O]

##############################################################
# PCIe Clock
##############################################################
create_clock -period 10.000 -name PCIE_CLOCK_P -waveform {0.000 5.000} [get_ports PCIE_CLOCK_P]
set_property LOC [get_package_pins -of_objects [get_bels [get_sites -filter {NAME =~ *COMMON*} -of_objects [get_iobanks -of_objects [get_sites GTYE4_CHANNEL_X0Y7]]]/REFCLK0P]] [get_ports PCIE_CLOCK_P]
set_property LOC [get_package_pins -of_objects [get_bels [get_sites -filter {NAME =~ *COMMON*} -of_objects [get_iobanks -of_objects [get_sites GTYE4_CHANNEL_X0Y7]]]/REFCLK0N]] [get_ports PCIE_CLOCK_N]

##############################################################
# PCIe Clock generated Clocks
##############################################################
# create_generated_clock -name PcieAxiClock -source [get_pins {PcieBridge_i/xdma_0/inst/pcie4_ip_i/inst/PcieBridge_xdma_0_0_pcie4_ip_gt_top_i/diablo_gt.diablo_gt_phy_wrapper/gt_wizard.gtwizard_top_i/PcieBridge_xdma_0_0_pcie4_ip_gt_i/inst/gen_gtwizard_gtye4_top.PcieBridge_xdma_0_0_pcie4_ip_gt_gtwizard_gtye4_inst/gen_gtwizard_gtye4.gen_channel_container[1].gen_enabled_channel.gtye4_channel_wrapper_inst/channel_inst/GTYE4_CHANNEL_TXOUTCLK[3]}] -divide_by 2 -multiply_by 5 [get_ports PCIE_CLOCK_P]
##############################################################
# False Paths
##############################################################

set_false_path -from [get_clocks PCIE_CLOCK_P] -to [get_clocks FPGA_CLK_100MHZ_P]
set_false_path -from [get_clocks FPGA_CLK_100MHZ_P] -to [get_clocks PCIE_CLOCK_P]

# set_false_path -from [get_clocks McuAxiClock] -to [get_clocks PcieAxiClock]
# set_false_path -from [get_clocks PcieAxiClock] -to [get_clocks McuAxiClock]