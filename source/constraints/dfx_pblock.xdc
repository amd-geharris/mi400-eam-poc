




create_pblock pblock_Top_DFX_Main_inst
add_cells_to_pblock [get_pblocks pblock_Top_DFX_Main_inst] [get_cells -quiet [list Top_DFX_Main_inst]]
resize_pblock [get_pblocks pblock_Top_DFX_Main_inst] -add {SLICE_X0Y60:SLICE_X89Y239}
resize_pblock [get_pblocks pblock_Top_DFX_Main_inst] -add {DSP48E2_X0Y24:DSP48E2_X14Y95}
resize_pblock [get_pblocks pblock_Top_DFX_Main_inst] -add {RAMB18_X0Y24:RAMB18_X7Y95}
resize_pblock [get_pblocks pblock_Top_DFX_Main_inst] -add {RAMB36_X0Y12:RAMB36_X7Y47}
resize_pblock [get_pblocks pblock_Top_DFX_Main_inst] -add {URAM288_X0Y16:URAM288_X0Y63}
set_property SNAPPING_MODE ON [get_pblocks pblock_Top_DFX_Main_inst]
