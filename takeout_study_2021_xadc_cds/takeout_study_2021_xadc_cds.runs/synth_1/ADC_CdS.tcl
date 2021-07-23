# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7s50csga324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.cache/wt [current_project]
set_property parent.project_path D:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths {C:/Users/gigas/AppData/Roaming/Xilinx/Vivado/2019.2/xhub/board_store} [current_project]
set_property board_part digilentinc.com:arty-s7-50:part0:1.0 [current_project]
set_property ip_output_repo d:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.srcs/sources_1/new/ADC_CdS.v
read_ip -quiet D:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.srcs/sources_1/ip/xadc_wiz_0/xadc_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.srcs/sources_1/ip/xadc_wiz_0/xadc_wiz_0_ooc.xdc]
set_property used_in_implementation false [get_files -all d:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.srcs/sources_1/ip/xadc_wiz_0/xadc_wiz_0.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.srcs/constrs_1/imports/digilent-xdc-master/Arty-S7-50-Master.xdc
set_property used_in_implementation false [get_files D:/__verilog/learning/takeout_study_2021_xadc_cds/takeout_study_2021_xadc_cds.srcs/constrs_1/imports/digilent-xdc-master/Arty-S7-50-Master.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top ADC_CdS -part xc7s50csga324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef ADC_CdS.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file ADC_CdS_utilization_synth.rpt -pb ADC_CdS_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
