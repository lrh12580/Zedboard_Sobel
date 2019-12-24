set C_TypeInfoList {{ 
"image_filter" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"in": [[],{ "pointer": "0"}] }, {"out": [[],{ "pointer": "0"}] }, {"rows": [[], {"scalar": "int"}] }, {"cols": [[], {"scalar": "int"}] }],[],""], 
"0": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}]
}}
set moduleName image_filter
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {image_filter}
set C_modelType { void 0 }
set C_modelArgList {
	{ hostmem_1 int 32 regular {axi_master 0}  }
	{ hostmem_2 int 32 regular {axi_master 1}  }
	{ in_V int 32 regular {axi_slave 0}  }
	{ out_V int 32 regular {axi_slave 0}  }
	{ rows int 32 unused {axi_slave 0}  }
	{ cols int 32 unused {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "hostmem_1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "in_V","bundle": "CONTROL_BUS"},"direction": "READONLY","cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "hostmem_2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"offset": { "type": "dynamic","port_name": "out_V","bundle": "CONTROL_BUS"},"direction": "WRITEONLY","cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}]} , 
 	{ "Name" : "in_V", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "out_V", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "rows", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "rows","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":32}, "offset_end" : {"in":39}} , 
 	{ "Name" : "cols", "interface" : "axi_slave", "bundle":"CONTROL_BUS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "cols","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":40}, "offset_end" : {"in":47}} ]}
# RTL Port declarations: 
set portNum 110
set portList { 
	{ s_axi_CONTROL_BUS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_CONTROL_BUS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_CONTROL_BUS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_CONTROL_BUS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_CONTROL_BUS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_CONTROL_BUS_BRESP sc_out sc_lv 2 signal -1 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ m_axi_hostmem_1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_AWADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_hostmem_1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_1_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_hostmem_1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_hostmem_1_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_ARADDR sc_out sc_lv 32 signal 0 } 
	{ m_axi_hostmem_1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_1_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_hostmem_1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_hostmem_1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_hostmem_1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_hostmem_1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_hostmem_1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_hostmem_1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_hostmem_1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_hostmem_1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_1_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_hostmem_2_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_hostmem_2_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_hostmem_2_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_hostmem_2_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_hostmem_2_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_hostmem_2_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_hostmem_2_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_hostmem_2_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_hostmem_2_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_hostmem_2_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_hostmem_2_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_hostmem_2_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_hostmem_2_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_hostmem_2_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_hostmem_2_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_hostmem_2_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_hostmem_2_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_hostmem_2_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_hostmem_2_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_hostmem_2_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_hostmem_2_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_hostmem_2_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_hostmem_2_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_hostmem_2_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_hostmem_2_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_hostmem_2_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_hostmem_2_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_hostmem_2_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_hostmem_2_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_hostmem_2_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_hostmem_2_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_hostmem_2_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_hostmem_2_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_hostmem_2_BUSER sc_in sc_lv 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_CONTROL_BUS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWADDR" },"address":[{"name":"image_filter","role":"start","value":"0","valid_bit":"0"},{"name":"image_filter","role":"continue","value":"0","valid_bit":"4"},{"name":"image_filter","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_V","role":"data","value":"16"},{"name":"out_V","role":"data","value":"24"},{"name":"rows","role":"data","value":"32"},{"name":"cols","role":"data","value":"40"}] },
	{ "name": "s_axi_CONTROL_BUS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWVALID" } },
	{ "name": "s_axi_CONTROL_BUS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "AWREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WVALID" } },
	{ "name": "s_axi_CONTROL_BUS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WREADY" } },
	{ "name": "s_axi_CONTROL_BUS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WDATA" } },
	{ "name": "s_axi_CONTROL_BUS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "WSTRB" } },
	{ "name": "s_axi_CONTROL_BUS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARADDR" },"address":[{"name":"image_filter","role":"start","value":"0","valid_bit":"0"},{"name":"image_filter","role":"done","value":"0","valid_bit":"1"},{"name":"image_filter","role":"idle","value":"0","valid_bit":"2"},{"name":"image_filter","role":"ready","value":"0","valid_bit":"3"},{"name":"image_filter","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_CONTROL_BUS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARVALID" } },
	{ "name": "s_axi_CONTROL_BUS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "ARREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RVALID" } },
	{ "name": "s_axi_CONTROL_BUS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RREADY" } },
	{ "name": "s_axi_CONTROL_BUS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RDATA" } },
	{ "name": "s_axi_CONTROL_BUS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "RRESP" } },
	{ "name": "s_axi_CONTROL_BUS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BVALID" } },
	{ "name": "s_axi_CONTROL_BUS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BREADY" } },
	{ "name": "s_axi_CONTROL_BUS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "CONTROL_BUS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_hostmem_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_hostmem_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_hostmem_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_hostmem_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWID" }} , 
 	{ "name": "m_axi_hostmem_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_hostmem_1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_hostmem_1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_hostmem_1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_hostmem_1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_hostmem_1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_hostmem_1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_hostmem_1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_hostmem_1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_hostmem_1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "WVALID" }} , 
 	{ "name": "m_axi_hostmem_1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "WREADY" }} , 
 	{ "name": "m_axi_hostmem_1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem_1", "role": "WDATA" }} , 
 	{ "name": "m_axi_hostmem_1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_hostmem_1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "WLAST" }} , 
 	{ "name": "m_axi_hostmem_1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "WID" }} , 
 	{ "name": "m_axi_hostmem_1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "WUSER" }} , 
 	{ "name": "m_axi_hostmem_1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_hostmem_1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_hostmem_1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_hostmem_1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARID" }} , 
 	{ "name": "m_axi_hostmem_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_hostmem_1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_hostmem_1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_hostmem_1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_hostmem_1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_hostmem_1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_hostmem_1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_hostmem_1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_hostmem_1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_hostmem_1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "RVALID" }} , 
 	{ "name": "m_axi_hostmem_1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "RREADY" }} , 
 	{ "name": "m_axi_hostmem_1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem_1", "role": "RDATA" }} , 
 	{ "name": "m_axi_hostmem_1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "RLAST" }} , 
 	{ "name": "m_axi_hostmem_1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "RID" }} , 
 	{ "name": "m_axi_hostmem_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_hostmem_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_hostmem_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_hostmem_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_hostmem_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_hostmem_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "BID" }} , 
 	{ "name": "m_axi_hostmem_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_1", "role": "BUSER" }} , 
 	{ "name": "m_axi_hostmem_2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_hostmem_2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_hostmem_2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_hostmem_2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWID" }} , 
 	{ "name": "m_axi_hostmem_2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_hostmem_2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_hostmem_2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_hostmem_2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_hostmem_2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_hostmem_2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_hostmem_2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_hostmem_2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_hostmem_2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_hostmem_2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "WVALID" }} , 
 	{ "name": "m_axi_hostmem_2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "WREADY" }} , 
 	{ "name": "m_axi_hostmem_2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem_2", "role": "WDATA" }} , 
 	{ "name": "m_axi_hostmem_2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_hostmem_2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "WLAST" }} , 
 	{ "name": "m_axi_hostmem_2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "WID" }} , 
 	{ "name": "m_axi_hostmem_2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "WUSER" }} , 
 	{ "name": "m_axi_hostmem_2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_hostmem_2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_hostmem_2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_hostmem_2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARID" }} , 
 	{ "name": "m_axi_hostmem_2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_hostmem_2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_hostmem_2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_hostmem_2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_hostmem_2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_hostmem_2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_hostmem_2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_hostmem_2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_hostmem_2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_hostmem_2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "RVALID" }} , 
 	{ "name": "m_axi_hostmem_2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "RREADY" }} , 
 	{ "name": "m_axi_hostmem_2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "hostmem_2", "role": "RDATA" }} , 
 	{ "name": "m_axi_hostmem_2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "RLAST" }} , 
 	{ "name": "m_axi_hostmem_2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "RID" }} , 
 	{ "name": "m_axi_hostmem_2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "RUSER" }} , 
 	{ "name": "m_axi_hostmem_2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_2", "role": "RRESP" }} , 
 	{ "name": "m_axi_hostmem_2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "BVALID" }} , 
 	{ "name": "m_axi_hostmem_2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "BREADY" }} , 
 	{ "name": "m_axi_hostmem_2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "hostmem_2", "role": "BRESP" }} , 
 	{ "name": "m_axi_hostmem_2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "BID" }} , 
 	{ "name": "m_axi_hostmem_2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "hostmem_2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "7", "17", "22", "26", "30", "36", "37", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55"],
		"CDFG" : "image_filter",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"InputProcess" : [
			{"ID" : "4", "Name" : "Mem2Stream_Batch9_U0"}],
		"OutputProcess" : [
			{"ID" : "37", "Name" : "Stream2Mem_Batch_U0"}],
		"Port" : [
			{"Name" : "hostmem_1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "Mem2Stream_Batch9_U0", "Port" : "in_V"}]},
			{"Name" : "hostmem_2", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "37", "SubInstance" : "Stream2Mem_Batch_U0", "Port" : "out_V"}]},
			{"Name" : "in_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "rows", "Type" : "None", "Direction" : "I"},
			{"Name" : "cols", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_CONTROL_BUS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_hostmem_1_m_axi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.image_filter_hostmem_2_m_axi_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Mem2Stream_Batch9_U0", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "Mem2Stream_Batch9",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Mem2Stream_fu_96"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Mem2Stream_1_fu_106"}],
		"Port" : [
			{"Name" : "in_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Mem2Stream_1_fu_106", "Port" : "in_V"},
					{"ID" : "5", "SubInstance" : "grp_Mem2Stream_fu_96", "Port" : "in_V"}]},
			{"Name" : "in_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "7", "DependentChan" : "40",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_Mem2Stream_1_fu_106", "Port" : "out_V_V"},
					{"ID" : "5", "SubInstance" : "grp_Mem2Stream_fu_96", "Port" : "out_V_V"}]},
			{"Name" : "out_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "out_V_out_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem2Stream_Batch9_U0.grp_Mem2Stream_fu_96", "Parent" : "4",
		"CDFG" : "Mem2Stream",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "in_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_V_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Mem2Stream_Batch9_U0.grp_Mem2Stream_1_fu_106", "Parent" : "4",
		"CDFG" : "Mem2Stream_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "in_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "in_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "in_V_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0", "Parent" : "0", "Child" : ["8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "bgr2gray",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "4",
		"StartFifo" : "start_for_bgr2grapcA_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "40",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "17", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0.image_filter_fptrbkb_U14", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0.image_filter_daddcud_U15", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0.image_filter_daddcud_U16", "Parent" : "7"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0.image_filter_dmuldEe_U17", "Parent" : "7"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0.image_filter_dmuldEe_U18", "Parent" : "7"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0.image_filter_dmuldEe_U19", "Parent" : "7"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0.image_filter_sitoeOg_U20", "Parent" : "7"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0.image_filter_sitoeOg_U21", "Parent" : "7"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.bgr2gray_U0.image_filter_sitoeOg_U22", "Parent" : "7"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gaussianBlur_U0", "Parent" : "0", "Child" : ["18", "19", "20", "21"],
		"CDFG" : "gaussianBlur",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "7",
		"StartFifo" : "start_for_gaussiarcU_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "7", "DependentChan" : "42",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_x_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "22", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "dst_x_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_y_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "26", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "dst_y_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.gaussianBlur_U0.lineBuff_val_0_V_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.gaussianBlur_U0.lineBuff_val_1_V_U", "Parent" : "17"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.gaussianBlur_U0.lineBuff_val_2_V_U", "Parent" : "17"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.gaussianBlur_U0.image_filter_mac_ibs_U29", "Parent" : "17"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_x_U0", "Parent" : "0", "Child" : ["23", "24", "25"],
		"CDFG" : "sobel_x",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "17",
		"StartFifo" : "start_for_sobel_xsc4_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "43",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_x_U0.lineBuff_val_0_V_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_x_U0.lineBuff_val_1_V_U", "Parent" : "22"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_x_U0.lineBuff_val_2_V_U", "Parent" : "22"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_y_U0", "Parent" : "0", "Child" : ["27", "28", "29"],
		"CDFG" : "sobel_y",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "17",
		"StartFifo" : "start_for_sobel_ytde_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "17", "DependentChan" : "44",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "30", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_y_U0.lineBuff_val_0_V_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_y_U0.lineBuff_val_1_V_U", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.sobel_y_U0.lineBuff_val_2_V_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.addWeighted_U0", "Parent" : "0", "Child" : ["31", "32", "33", "34", "35"],
		"CDFG" : "addWeighted",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "22",
		"StartFifo" : "start_for_addWeigudo_U",
		"Port" : [
			{"Name" : "src_x_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "22", "DependentChan" : "45",
				"BlockSignal" : [
					{"Name" : "src_x_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_y_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "26", "DependentChan" : "46",
				"BlockSignal" : [
					{"Name" : "src_y_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "36", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.addWeighted_U0.image_filter_daddcud_U40", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.addWeighted_U0.image_filter_dmuldEe_U41", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.addWeighted_U0.image_filter_dmuldEe_U42", "Parent" : "30"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.addWeighted_U0.image_filter_sitoeOg_U43", "Parent" : "30"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.addWeighted_U0.image_filter_sitoeOg_U44", "Parent" : "30"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gray2bgr_U0", "Parent" : "0",
		"CDFG" : "gray2bgr",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "30",
		"StartFifo" : "start_for_gray2bgvdy_U",
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "30", "DependentChan" : "47",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "37", "DependentChan" : "48",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Stream2Mem_Batch_U0", "Parent" : "0", "Child" : ["38", "39"],
		"CDFG" : "Stream2Mem_Batch",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"StartSource" : "4",
		"StartFifo" : "start_for_Stream2qcK_U",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Stream2Mem_fu_76"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Stream2Mem_1_fu_86"}],
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "36", "DependentChan" : "48",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_Stream2Mem_1_fu_86", "Port" : "in_V_V"},
					{"ID" : "38", "SubInstance" : "grp_Stream2Mem_fu_76", "Port" : "in_V_V"}]},
			{"Name" : "out_V", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_Stream2Mem_1_fu_86", "Port" : "out_V"},
					{"ID" : "38", "SubInstance" : "grp_Stream2Mem_fu_76", "Port" : "out_V"}]},
			{"Name" : "out_V_offset", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "4", "DependentChan" : "41",
				"BlockSignal" : [
					{"Name" : "out_V_offset_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Stream2Mem_Batch_U0.grp_Stream2Mem_fu_76", "Parent" : "37",
		"CDFG" : "Stream2Mem",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.Stream2Mem_Batch_U0.grp_Stream2Mem_1_fu_86", "Parent" : "37",
		"CDFG" : "Stream2Mem_1",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"FunctionPipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"VariableLatency" : "1",
		"Port" : [
			{"Name" : "in_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_V", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_V_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "out_V_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "out_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_V_offset1", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.in_stream_V_V_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_V_c_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gray_stream_V_V_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gaussian_stream_x_V_s_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gaussian_stream_y_V_s_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_stream_x_V_V_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sobel_stream_y_V_V_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.addWeight_stream_V_V_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_stream_V_V_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_bgr2grapcA_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_Stream2qcK_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_gaussiarcU_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_sobel_xsc4_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_sobel_ytde_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_addWeigudo_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_gray2bgvdy_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	image_filter {
		hostmem_1 {Type I LastRead 9 FirstWrite -1}
		hostmem_2 {Type O LastRead 3 FirstWrite 4}
		in_V {Type I LastRead 0 FirstWrite -1}
		out_V {Type I LastRead 0 FirstWrite -1}
		rows {Type I LastRead -1 FirstWrite -1}
		cols {Type I LastRead -1 FirstWrite -1}}
	Mem2Stream_Batch9 {
		in_V {Type I LastRead 9 FirstWrite -1}
		in_V_offset {Type I LastRead 0 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}
		out_V {Type I LastRead 0 FirstWrite -1}
		out_V_out {Type O LastRead -1 FirstWrite 0}}
	Mem2Stream {
		in_V {Type I LastRead 9 FirstWrite -1}
		in_V_offset {Type I LastRead 0 FirstWrite -1}
		in_V_offset1 {Type I LastRead 0 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}}
	Mem2Stream_1 {
		in_V {Type I LastRead 9 FirstWrite -1}
		in_V_offset {Type I LastRead 0 FirstWrite -1}
		in_V_offset1 {Type I LastRead 0 FirstWrite -1}
		out_V_V {Type O LastRead -1 FirstWrite 10}}
	bgr2gray {
		src_V_V {Type I LastRead 2 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 27}}
	gaussianBlur {
		src_V_V {Type I LastRead 3 FirstWrite -1}
		dst_x_V_V {Type O LastRead -1 FirstWrite 4}
		dst_y_V_V {Type O LastRead -1 FirstWrite 4}}
	sobel_x {
		src_V_V {Type I LastRead 2 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 3}}
	sobel_y {
		src_V_V {Type I LastRead 2 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 3}}
	addWeighted {
		src_x_V_V {Type I LastRead 2 FirstWrite -1}
		src_y_V_V {Type I LastRead 2 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 21}}
	gray2bgr {
		src_V_V {Type I LastRead 2 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 2}}
	Stream2Mem_Batch {
		in_V_V {Type I LastRead 3 FirstWrite -1}
		out_V {Type O LastRead 3 FirstWrite 4}
		out_V_offset {Type I LastRead 0 FirstWrite -1}}
	Stream2Mem {
		in_V_V {Type I LastRead 3 FirstWrite -1}
		out_V {Type O LastRead 3 FirstWrite 4}
		out_V_offset {Type I LastRead 0 FirstWrite -1}
		out_V_offset1 {Type I LastRead 0 FirstWrite -1}}
	Stream2Mem_1 {
		in_V_V {Type I LastRead 3 FirstWrite -1}
		out_V {Type O LastRead 3 FirstWrite 4}
		out_V_offset {Type I LastRead 0 FirstWrite -1}
		out_V_offset1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	hostmem_1 { m_axi {  { m_axi_hostmem_1_AWVALID VALID 1 1 }  { m_axi_hostmem_1_AWREADY READY 0 1 }  { m_axi_hostmem_1_AWADDR ADDR 1 32 }  { m_axi_hostmem_1_AWID ID 1 1 }  { m_axi_hostmem_1_AWLEN LEN 1 8 }  { m_axi_hostmem_1_AWSIZE SIZE 1 3 }  { m_axi_hostmem_1_AWBURST BURST 1 2 }  { m_axi_hostmem_1_AWLOCK LOCK 1 2 }  { m_axi_hostmem_1_AWCACHE CACHE 1 4 }  { m_axi_hostmem_1_AWPROT PROT 1 3 }  { m_axi_hostmem_1_AWQOS QOS 1 4 }  { m_axi_hostmem_1_AWREGION REGION 1 4 }  { m_axi_hostmem_1_AWUSER USER 1 1 }  { m_axi_hostmem_1_WVALID VALID 1 1 }  { m_axi_hostmem_1_WREADY READY 0 1 }  { m_axi_hostmem_1_WDATA DATA 1 32 }  { m_axi_hostmem_1_WSTRB STRB 1 4 }  { m_axi_hostmem_1_WLAST LAST 1 1 }  { m_axi_hostmem_1_WID ID 1 1 }  { m_axi_hostmem_1_WUSER USER 1 1 }  { m_axi_hostmem_1_ARVALID VALID 1 1 }  { m_axi_hostmem_1_ARREADY READY 0 1 }  { m_axi_hostmem_1_ARADDR ADDR 1 32 }  { m_axi_hostmem_1_ARID ID 1 1 }  { m_axi_hostmem_1_ARLEN LEN 1 8 }  { m_axi_hostmem_1_ARSIZE SIZE 1 3 }  { m_axi_hostmem_1_ARBURST BURST 1 2 }  { m_axi_hostmem_1_ARLOCK LOCK 1 2 }  { m_axi_hostmem_1_ARCACHE CACHE 1 4 }  { m_axi_hostmem_1_ARPROT PROT 1 3 }  { m_axi_hostmem_1_ARQOS QOS 1 4 }  { m_axi_hostmem_1_ARREGION REGION 1 4 }  { m_axi_hostmem_1_ARUSER USER 1 1 }  { m_axi_hostmem_1_RVALID VALID 0 1 }  { m_axi_hostmem_1_RREADY READY 1 1 }  { m_axi_hostmem_1_RDATA DATA 0 32 }  { m_axi_hostmem_1_RLAST LAST 0 1 }  { m_axi_hostmem_1_RID ID 0 1 }  { m_axi_hostmem_1_RUSER USER 0 1 }  { m_axi_hostmem_1_RRESP RESP 0 2 }  { m_axi_hostmem_1_BVALID VALID 0 1 }  { m_axi_hostmem_1_BREADY READY 1 1 }  { m_axi_hostmem_1_BRESP RESP 0 2 }  { m_axi_hostmem_1_BID ID 0 1 }  { m_axi_hostmem_1_BUSER USER 0 1 } } }
	hostmem_2 { m_axi {  { m_axi_hostmem_2_AWVALID VALID 1 1 }  { m_axi_hostmem_2_AWREADY READY 0 1 }  { m_axi_hostmem_2_AWADDR ADDR 1 32 }  { m_axi_hostmem_2_AWID ID 1 1 }  { m_axi_hostmem_2_AWLEN LEN 1 8 }  { m_axi_hostmem_2_AWSIZE SIZE 1 3 }  { m_axi_hostmem_2_AWBURST BURST 1 2 }  { m_axi_hostmem_2_AWLOCK LOCK 1 2 }  { m_axi_hostmem_2_AWCACHE CACHE 1 4 }  { m_axi_hostmem_2_AWPROT PROT 1 3 }  { m_axi_hostmem_2_AWQOS QOS 1 4 }  { m_axi_hostmem_2_AWREGION REGION 1 4 }  { m_axi_hostmem_2_AWUSER USER 1 1 }  { m_axi_hostmem_2_WVALID VALID 1 1 }  { m_axi_hostmem_2_WREADY READY 0 1 }  { m_axi_hostmem_2_WDATA DATA 1 32 }  { m_axi_hostmem_2_WSTRB STRB 1 4 }  { m_axi_hostmem_2_WLAST LAST 1 1 }  { m_axi_hostmem_2_WID ID 1 1 }  { m_axi_hostmem_2_WUSER USER 1 1 }  { m_axi_hostmem_2_ARVALID VALID 1 1 }  { m_axi_hostmem_2_ARREADY READY 0 1 }  { m_axi_hostmem_2_ARADDR ADDR 1 32 }  { m_axi_hostmem_2_ARID ID 1 1 }  { m_axi_hostmem_2_ARLEN LEN 1 8 }  { m_axi_hostmem_2_ARSIZE SIZE 1 3 }  { m_axi_hostmem_2_ARBURST BURST 1 2 }  { m_axi_hostmem_2_ARLOCK LOCK 1 2 }  { m_axi_hostmem_2_ARCACHE CACHE 1 4 }  { m_axi_hostmem_2_ARPROT PROT 1 3 }  { m_axi_hostmem_2_ARQOS QOS 1 4 }  { m_axi_hostmem_2_ARREGION REGION 1 4 }  { m_axi_hostmem_2_ARUSER USER 1 1 }  { m_axi_hostmem_2_RVALID VALID 0 1 }  { m_axi_hostmem_2_RREADY READY 1 1 }  { m_axi_hostmem_2_RDATA DATA 0 32 }  { m_axi_hostmem_2_RLAST LAST 0 1 }  { m_axi_hostmem_2_RID ID 0 1 }  { m_axi_hostmem_2_RUSER USER 0 1 }  { m_axi_hostmem_2_RRESP RESP 0 2 }  { m_axi_hostmem_2_BVALID VALID 0 1 }  { m_axi_hostmem_2_BREADY READY 1 1 }  { m_axi_hostmem_2_BRESP RESP 0 2 }  { m_axi_hostmem_2_BID ID 0 1 }  { m_axi_hostmem_2_BUSER USER 0 1 } } }
}

set busDeadlockParameterList { 
	{ hostmem_1 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
	{ hostmem_2 { NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 } } \
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ hostmem_1 1 }
	{ hostmem_2 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ hostmem_1 1 }
	{ hostmem_2 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
