set_property PACKAGE_PIN Y13 [get_ports MICROBLAZE_UART_RX]
set_property IOSTANDARD LVCMOS33 [get_ports MICROBLAZE_UART_RX]
set_property PULLTYPE PULLUP [get_ports MICROBLAZE_UART_RX]
set_property PACKAGE_PIN AA13 [get_ports MICROBLAZE_UART_TX]
set_property IOSTANDARD LVCMOS33 [get_ports MICROBLAZE_UART_TX]
set_property PULLTYPE PULLUP [get_ports MICROBLAZE_UART_TX]
set_property -dict {PACKAGE_PIN T24 IOSTANDARD LVDS} [get_ports FPGA_CLK_100MHZ_P]

##############################################################
# LED Ports
##############################################################
set_property -dict {PACKAGE_PIN G19 IOSTANDARD LVCMOS12 DRIVE 8 SLEW SLOW} [get_ports LED[0]]
set_property -dict {PACKAGE_PIN B16 IOSTANDARD LVCMOS12 DRIVE 8 SLEW SLOW} [get_ports LED[1]]
set_property -dict {PACKAGE_PIN F22 IOSTANDARD LVCMOS12 DRIVE 8 SLEW SLOW} [get_ports LED[2]]
set_property -dict {PACKAGE_PIN E22 IOSTANDARD LVCMOS12 DRIVE 8 SLEW SLOW} [get_ports LED[3]]
set_property -dict {PACKAGE_PIN M24 IOSTANDARD LVCMOS12 DRIVE 8 SLEW SLOW} [get_ports LED[4]]
set_property -dict {PACKAGE_PIN G22 IOSTANDARD LVCMOS12 DRIVE 8 SLEW SLOW} [get_ports LED[5]]
##############################################################
# PCIe Data I/O
##############################################################
set_property PACKAGE_PIN AF2 [get_ports {PCIE_RXP[0]}]
set_property PACKAGE_PIN AE4 [get_ports {PCIE_RXP[1]}]
set_property PACKAGE_PIN AD2 [get_ports {PCIE_RXP[2]}]
set_property PACKAGE_PIN AB2 [get_ports {PCIE_RXP[3]}]

set_property PACKAGE_PIN AF1 [get_ports {PCIE_RXN[0]}]
set_property PACKAGE_PIN AE3 [get_ports {PCIE_RXN[1]}]
set_property PACKAGE_PIN AD1 [get_ports {PCIE_RXN[2]}]
set_property PACKAGE_PIN AB1 [get_ports {PCIE_RXN[3]}]

set_property PACKAGE_PIN AF7 [get_ports {PCIE_TXP[0]}]
set_property PACKAGE_PIN AE9 [get_ports {PCIE_TXP[1]}]
set_property PACKAGE_PIN AD7 [get_ports {PCIE_TXP[2]}]
set_property PACKAGE_PIN AC5 [get_ports {PCIE_TXP[3]}]

set_property PACKAGE_PIN AF6 [get_ports {PCIE_TXN[0]}]
set_property PACKAGE_PIN AE8 [get_ports {PCIE_TXN[1]}]
set_property PACKAGE_PIN AD6 [get_ports {PCIE_TXN[2]}]
set_property PACKAGE_PIN AC4 [get_ports {PCIE_TXN[3]}]
##############################################################
# PCIe Clock
##############################################################
set_property LOC AB7 [get_ports PCIE_CLOCK_P] 
set_property LOC AB6 [get_ports PCIE_CLOCK_N]
##############################################################
# PCIe Reset
##############################################################
set_property PULLUP true [get_ports PCIE_RESET_N]
set_property IOSTANDARD LVCMOS18 [get_ports PCIE_RESET_N]
set_property LOC J10 [get_ports PCIE_RESET_N] 
set_property LOC [get_package_pins -filter {PIN_FUNC =~ *_PERSTN0_65}] [get_ports PCIE_RESET_N]

set_property CONFIG_VOLTAGE 1.8 [current_design]