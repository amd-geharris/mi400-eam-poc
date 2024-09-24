################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name AxiBusClock -period 4 [get_ports AxiBusClock]
create_clock -name mDebugPort_clk -period 10 [get_ports mDebugPort_clk]
create_clock -name fixed_fabric_100mhz_clk_p -period 10 [get_ports fixed_fabric_100mhz_clk_p]

################################################################################