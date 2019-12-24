set moduleName addWeighted
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {addWeighted}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_x_V_V int 8 regular {fifo 0 volatile }  }
	{ src_y_V_V int 8 regular {fifo 0 volatile }  }
	{ dst_V_V int 8 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_x_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "src_y_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "dst_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ src_x_V_V_dout sc_in sc_lv 8 signal 0 } 
	{ src_x_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ src_x_V_V_read sc_out sc_logic 1 signal 0 } 
	{ src_y_V_V_dout sc_in sc_lv 8 signal 1 } 
	{ src_y_V_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ src_y_V_V_read sc_out sc_logic 1 signal 1 } 
	{ dst_V_V_din sc_out sc_lv 8 signal 2 } 
	{ dst_V_V_full_n sc_in sc_logic 1 signal 2 } 
	{ dst_V_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "src_x_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_x_V_V", "role": "dout" }} , 
 	{ "name": "src_x_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_x_V_V", "role": "empty_n" }} , 
 	{ "name": "src_x_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_x_V_V", "role": "read" }} , 
 	{ "name": "src_y_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_y_V_V", "role": "dout" }} , 
 	{ "name": "src_y_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_y_V_V", "role": "empty_n" }} , 
 	{ "name": "src_y_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_y_V_V", "role": "read" }} , 
 	{ "name": "dst_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_V_V", "role": "din" }} , 
 	{ "name": "dst_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_V", "role": "full_n" }} , 
 	{ "name": "dst_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "addWeighted",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "src_x_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_x_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_y_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_y_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_daddcud_U40", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_dmuldEe_U41", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_dmuldEe_U42", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_sitoeOg_U43", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_sitoeOg_U44", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	addWeighted {
		src_x_V_V {Type I LastRead 2 FirstWrite -1}
		src_y_V_V {Type I LastRead 2 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 21}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "262165", "Max" : "262165"}
	, {"Name" : "Interval", "Min" : "262165", "Max" : "262165"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src_x_V_V { ap_fifo {  { src_x_V_V_dout fifo_data 0 8 }  { src_x_V_V_empty_n fifo_status 0 1 }  { src_x_V_V_read fifo_update 1 1 } } }
	src_y_V_V { ap_fifo {  { src_y_V_V_dout fifo_data 0 8 }  { src_y_V_V_empty_n fifo_status 0 1 }  { src_y_V_V_read fifo_update 1 1 } } }
	dst_V_V { ap_fifo {  { dst_V_V_din fifo_data 1 8 }  { dst_V_V_full_n fifo_status 0 1 }  { dst_V_V_write fifo_update 1 1 } } }
}
