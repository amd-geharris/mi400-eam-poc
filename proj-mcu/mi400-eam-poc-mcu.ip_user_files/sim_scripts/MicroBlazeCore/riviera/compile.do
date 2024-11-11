transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/microblaze_v11_0_13
vlib riviera/xil_defaultlib
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_3
vlib riviera/lib_pkg_v1_0_4
vlib riviera/axi_timer_v2_0_33
vlib riviera/lib_srl_fifo_v1_0_4
vlib riviera/axi_uartlite_v2_0_35
vlib riviera/lmb_v10_v3_0_14
vlib riviera/lmb_bram_if_cntlr_v4_0_24
vlib riviera/blk_mem_gen_v8_4_8
vlib riviera/generic_baseblocks_v2_1_2
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_31
vlib riviera/fifo_generator_v13_2_10
vlib riviera/axi_data_fifo_v2_1_30
vlib riviera/axi_crossbar_v2_1_32
vlib riviera/axi_intc_v4_1_19
vlib riviera/xlconcat_v2_1_6
vlib riviera/proc_sys_reset_v5_0_15
vlib riviera/axi_clock_converter_v2_1_30

vmap xpm riviera/xpm
vmap microblaze_v11_0_13 riviera/microblaze_v11_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_3 riviera/lib_cdc_v1_0_3
vmap lib_pkg_v1_0_4 riviera/lib_pkg_v1_0_4
vmap axi_timer_v2_0_33 riviera/axi_timer_v2_0_33
vmap lib_srl_fifo_v1_0_4 riviera/lib_srl_fifo_v1_0_4
vmap axi_uartlite_v2_0_35 riviera/axi_uartlite_v2_0_35
vmap lmb_v10_v3_0_14 riviera/lmb_v10_v3_0_14
vmap lmb_bram_if_cntlr_v4_0_24 riviera/lmb_bram_if_cntlr_v4_0_24
vmap blk_mem_gen_v8_4_8 riviera/blk_mem_gen_v8_4_8
vmap generic_baseblocks_v2_1_2 riviera/generic_baseblocks_v2_1_2
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_31 riviera/axi_register_slice_v2_1_31
vmap fifo_generator_v13_2_10 riviera/fifo_generator_v13_2_10
vmap axi_data_fifo_v2_1_30 riviera/axi_data_fifo_v2_1_30
vmap axi_crossbar_v2_1_32 riviera/axi_crossbar_v2_1_32
vmap axi_intc_v4_1_19 riviera/axi_intc_v4_1_19
vmap xlconcat_v2_1_6 riviera/xlconcat_v2_1_6
vmap proc_sys_reset_v5_0_15 riviera/proc_sys_reset_v5_0_15
vmap axi_clock_converter_v2_1_30 riviera/axi_clock_converter_v2_1_30

vlog -work xpm  -incr "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"C:/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_13 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/aa1c/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_microblaze_0_0/sim/MicroBlazeCore_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_3 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/2a4f/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work lib_pkg_v1_0_4 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/8c68/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_timer_v2_0_33 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/a443/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_axi_timer_0_0/sim/MicroBlazeCore_axi_timer_0_0.vhd" \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_axi_timer_1_0/sim/MicroBlazeCore_axi_timer_1_0.vhd" \

vcom -work lib_srl_fifo_v1_0_4 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/1e5a/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_35 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/2959/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_axi_uartlite_0_0/sim/MicroBlazeCore_axi_uartlite_0_0.vhd" \

vcom -work lmb_v10_v3_0_14 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/7495/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_dlmb_v10_0/sim/MicroBlazeCore_dlmb_v10_0.vhd" \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_ilmb_v10_0/sim/MicroBlazeCore_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_24 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/3eb2/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_dlmb_bram_if_cntlr_0/sim/MicroBlazeCore_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_ilmb_bram_if_cntlr_0/sim/MicroBlazeCore_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_8  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/09bd/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_lmb_bram_0/sim/MicroBlazeCore_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_2  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/0c28/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_31  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/92b2/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/1443/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_10 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/1443/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_10  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/1443/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_30  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/9692/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_32  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/e9d8/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_xbar_0/sim/MicroBlazeCore_xbar_0.v" \

vcom -work axi_intc_v4_1_19 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/558f/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_microblaze_0_axi_intc_0/sim/MicroBlazeCore_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_6  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/6120/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_microblaze_0_xlconcat_0/sim/MicroBlazeCore_microblaze_0_xlconcat_0.v" \

vcom -work proc_sys_reset_v5_0_15 -93  -incr \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/3a26/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93  -incr \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_rst_clk_wiz_1_100M_0/sim/MicroBlazeCore_rst_clk_wiz_1_100M_0.vhd" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../bd/MicroBlazeCore/ipshared/cbb1/src/Axi4FabricBridge.v" \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_Axi4FabricBridge_0_0/sim/MicroBlazeCore_Axi4FabricBridge_0_0.v" \

vlog -work axi_clock_converter_v2_1_30  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/80bf/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -v2k5 "+incdir+../../../../mi400-eam-poc-mcu.gen/sources_1/bd/MicroBlazeCore/ipshared/ec67/hdl" -l xpm -l microblaze_v11_0_13 -l xil_defaultlib -l axi_lite_ipif_v3_0_4 -l lib_cdc_v1_0_3 -l lib_pkg_v1_0_4 -l axi_timer_v2_0_33 -l lib_srl_fifo_v1_0_4 -l axi_uartlite_v2_0_35 -l lmb_v10_v3_0_14 -l lmb_bram_if_cntlr_v4_0_24 -l blk_mem_gen_v8_4_8 -l generic_baseblocks_v2_1_2 -l axi_infrastructure_v1_1_0 -l axi_register_slice_v2_1_31 -l fifo_generator_v13_2_10 -l axi_data_fifo_v2_1_30 -l axi_crossbar_v2_1_32 -l axi_intc_v4_1_19 -l xlconcat_v2_1_6 -l proc_sys_reset_v5_0_15 -l axi_clock_converter_v2_1_30 \
"../../../bd/MicroBlazeCore/ip/MicroBlazeCore_auto_cc_0/sim/MicroBlazeCore_auto_cc_0.v" \
"../../../bd/MicroBlazeCore/sim/MicroBlazeCore.v" \

vlog -work xil_defaultlib \
"glbl.v"

