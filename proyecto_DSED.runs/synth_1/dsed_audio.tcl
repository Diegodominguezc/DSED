# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.cache/wt [current_project]
set_property parent.project_path C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property ip_output_repo c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/package_dsed.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/FSMD_microphone.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/Time_Rec.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/audio_interface.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/audio_visualizer.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/control_FIR.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/control_blk3.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/datapath_FIR.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/en_4_cycles.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/fir_filter.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/mem.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/mux1_2.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/mux3.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/pwm.vhd
  C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/new/dsed_audio.vhd
}
read_ip -quiet C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_3/c_counter_binary_3.xci
set_property used_in_implementation false [get_files -all c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_3/c_counter_binary_3_ooc.xdc]
set_property is_locked true [get_files C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_3/c_counter_binary_3.xci]

read_ip -quiet C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/blk_ram_mem/blk_ram_mem.xci
set_property used_in_implementation false [get_files -all c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/blk_ram_mem/blk_ram_mem_ooc.xdc]
set_property is_locked true [get_files C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/blk_ram_mem/blk_ram_mem.xci]

read_ip -quiet C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/clk_12M/clk_12M.xci
set_property used_in_implementation false [get_files -all c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/clk_12M/clk_12M_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/clk_12M/clk_12M.xdc]
set_property used_in_implementation false [get_files -all c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/clk_12M/clk_12M_ooc.xdc]
set_property is_locked true [get_files C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/clk_12M/clk_12M.xci]

read_ip -quiet C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0.xci
set_property used_in_implementation false [get_files -all c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_ooc.xdc]
set_property is_locked true [get_files C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0.xci]

read_ip -quiet C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_2/c_counter_binary_2.xci
set_property used_in_implementation false [get_files -all c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_2/c_counter_binary_2_ooc.xdc]
set_property is_locked true [get_files C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_2/c_counter_binary_2.xci]

read_ip -quiet C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1.xci
set_property used_in_implementation false [get_files -all c:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1_ooc.xdc]
set_property is_locked true [get_files C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/sources_1/ip/c_counter_binary_1/c_counter_binary_1.xci]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/constrs_1/imports/Archivos sesi?n 4-20211011/Nexys4DDR_Master.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/dodec/Desktop/UPM/Cuarto/DSED/DSED-Group12/proyecto_DSED/proyecto_DSED.srcs/constrs_1/imports/Archivos sesi?n 4-20211011/Nexys4DDR_Master.xdc}}]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top dsed_audio -part xc7a100tcsg324-1


write_checkpoint -force -noxdef dsed_audio.dcp

catch { report_utilization -file dsed_audio_utilization_synth.rpt -pb dsed_audio_utilization_synth.pb }
