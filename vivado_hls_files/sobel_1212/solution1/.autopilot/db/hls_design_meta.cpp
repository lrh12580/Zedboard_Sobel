#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("s_axi_CONTROL_BUS_AWVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_AWREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_AWADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_WVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_WREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_WDATA", 32, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_WSTRB", 4, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_ARVALID", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_ARREADY", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_ARADDR", 6, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_RVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_RREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_RDATA", 32, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_RRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_BVALID", 1, hls_out, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_BREADY", 1, hls_in, -1, "", "", 1),
	Port_Property("s_axi_CONTROL_BUS_BRESP", 2, hls_out, -1, "", "", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("interrupt", 1, hls_out, -1, "", "", 1),
	Port_Property("m_axi_hostmem_1_AWVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_1_AWREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_1_AWADDR", 32, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_hostmem_1_AWID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_1_AWLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_hostmem_1_AWSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_hostmem_1_AWBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_hostmem_1_AWLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_hostmem_1_AWCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_hostmem_1_AWPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_hostmem_1_AWQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_hostmem_1_AWREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_hostmem_1_AWUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_hostmem_1_WVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_1_WREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_1_WDATA", 32, hls_out, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_hostmem_1_WSTRB", 4, hls_out, 0, "m_axi", "STRB", 1),
	Port_Property("m_axi_hostmem_1_WLAST", 1, hls_out, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_hostmem_1_WID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_1_WUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_hostmem_1_ARVALID", 1, hls_out, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_1_ARREADY", 1, hls_in, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_1_ARADDR", 32, hls_out, 0, "m_axi", "ADDR", 1),
	Port_Property("m_axi_hostmem_1_ARID", 1, hls_out, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_1_ARLEN", 8, hls_out, 0, "m_axi", "LEN", 1),
	Port_Property("m_axi_hostmem_1_ARSIZE", 3, hls_out, 0, "m_axi", "SIZE", 1),
	Port_Property("m_axi_hostmem_1_ARBURST", 2, hls_out, 0, "m_axi", "BURST", 1),
	Port_Property("m_axi_hostmem_1_ARLOCK", 2, hls_out, 0, "m_axi", "LOCK", 1),
	Port_Property("m_axi_hostmem_1_ARCACHE", 4, hls_out, 0, "m_axi", "CACHE", 1),
	Port_Property("m_axi_hostmem_1_ARPROT", 3, hls_out, 0, "m_axi", "PROT", 1),
	Port_Property("m_axi_hostmem_1_ARQOS", 4, hls_out, 0, "m_axi", "QOS", 1),
	Port_Property("m_axi_hostmem_1_ARREGION", 4, hls_out, 0, "m_axi", "REGION", 1),
	Port_Property("m_axi_hostmem_1_ARUSER", 1, hls_out, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_hostmem_1_RVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_1_RREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_1_RDATA", 32, hls_in, 0, "m_axi", "DATA", 1),
	Port_Property("m_axi_hostmem_1_RLAST", 1, hls_in, 0, "m_axi", "LAST", 1),
	Port_Property("m_axi_hostmem_1_RID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_1_RUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_hostmem_1_RRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_hostmem_1_BVALID", 1, hls_in, 0, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_1_BREADY", 1, hls_out, 0, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_1_BRESP", 2, hls_in, 0, "m_axi", "RESP", 1),
	Port_Property("m_axi_hostmem_1_BID", 1, hls_in, 0, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_1_BUSER", 1, hls_in, 0, "m_axi", "USER", 1),
	Port_Property("m_axi_hostmem_2_AWVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_2_AWREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_2_AWADDR", 32, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_hostmem_2_AWID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_2_AWLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_hostmem_2_AWSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_hostmem_2_AWBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_hostmem_2_AWLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_hostmem_2_AWCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_hostmem_2_AWPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_hostmem_2_AWQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_hostmem_2_AWREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_hostmem_2_AWUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_hostmem_2_WVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_2_WREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_2_WDATA", 32, hls_out, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_hostmem_2_WSTRB", 4, hls_out, 1, "m_axi", "STRB", 1),
	Port_Property("m_axi_hostmem_2_WLAST", 1, hls_out, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_hostmem_2_WID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_2_WUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_hostmem_2_ARVALID", 1, hls_out, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_2_ARREADY", 1, hls_in, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_2_ARADDR", 32, hls_out, 1, "m_axi", "ADDR", 1),
	Port_Property("m_axi_hostmem_2_ARID", 1, hls_out, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_2_ARLEN", 8, hls_out, 1, "m_axi", "LEN", 1),
	Port_Property("m_axi_hostmem_2_ARSIZE", 3, hls_out, 1, "m_axi", "SIZE", 1),
	Port_Property("m_axi_hostmem_2_ARBURST", 2, hls_out, 1, "m_axi", "BURST", 1),
	Port_Property("m_axi_hostmem_2_ARLOCK", 2, hls_out, 1, "m_axi", "LOCK", 1),
	Port_Property("m_axi_hostmem_2_ARCACHE", 4, hls_out, 1, "m_axi", "CACHE", 1),
	Port_Property("m_axi_hostmem_2_ARPROT", 3, hls_out, 1, "m_axi", "PROT", 1),
	Port_Property("m_axi_hostmem_2_ARQOS", 4, hls_out, 1, "m_axi", "QOS", 1),
	Port_Property("m_axi_hostmem_2_ARREGION", 4, hls_out, 1, "m_axi", "REGION", 1),
	Port_Property("m_axi_hostmem_2_ARUSER", 1, hls_out, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_hostmem_2_RVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_2_RREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_2_RDATA", 32, hls_in, 1, "m_axi", "DATA", 1),
	Port_Property("m_axi_hostmem_2_RLAST", 1, hls_in, 1, "m_axi", "LAST", 1),
	Port_Property("m_axi_hostmem_2_RID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_2_RUSER", 1, hls_in, 1, "m_axi", "USER", 1),
	Port_Property("m_axi_hostmem_2_RRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_hostmem_2_BVALID", 1, hls_in, 1, "m_axi", "VALID", 1),
	Port_Property("m_axi_hostmem_2_BREADY", 1, hls_out, 1, "m_axi", "READY", 1),
	Port_Property("m_axi_hostmem_2_BRESP", 2, hls_in, 1, "m_axi", "RESP", 1),
	Port_Property("m_axi_hostmem_2_BID", 1, hls_in, 1, "m_axi", "ID", 1),
	Port_Property("m_axi_hostmem_2_BUSER", 1, hls_in, 1, "m_axi", "USER", 1),
};
const char* HLS_Design_Meta::dut_name = "image_filter";
