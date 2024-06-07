# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "D:/Verilog/CompArch/RV32I_Pipelined/.Xil/Vivado-9236-DESKTOP-K6E9EK3/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7a35tcpg236-1
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv {
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/ALU.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/PCPlus4.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/br_mux.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/brcomp.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/ctrl_unit.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/data_memory.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/immGen.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/inst_memory.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/lsu.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/op_a_mux.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/op_b_mux.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/reg_dec.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/reg_file.sv
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/wb_mux.sv
    }
      rt::read_verilog {
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/reg_D.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/reg_F.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/reg_M.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/reg_E.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/reg_W.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/FWa_MUX.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/Hazard_Unit.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/FWb_MUX.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/pipelineProcessor.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/BrSelect.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/PCplusIMM.v
      D:/Verilog/CompArch/RV32I_Pipelined/RV32I_Pipelined.srcs/sources_1/new/JumpDes_MUX.v
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top pipelineProcessor
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter dataflowBusHighlighting false
    rt::set_parameter generateDataflowBusNetlist false
    rt::set_parameter dataFlowViewInElab false
    rt::set_parameter busViewFixBrokenConnections false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "D:/Verilog/CompArch/RV32I_Pipelined/.Xil/Vivado-9236-DESKTOP-K6E9EK3/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}