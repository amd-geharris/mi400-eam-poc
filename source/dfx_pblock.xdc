create_pblock pblock_Top_DFX_Main_inst
add_cells_to_pblock [get_pblocks pblock_Top_DFX_Main_inst] [get_cells -quiet [list Top_DFX_Main_inst]]
resize_pblock [get_pblocks pblock_Top_DFX_Main_inst] -add {CLOCKREGION_X0Y1:CLOCKREGION_X2Y3}
set_property SNAPPING_MODE ON [get_pblocks pblock_Top_DFX_Main_inst]