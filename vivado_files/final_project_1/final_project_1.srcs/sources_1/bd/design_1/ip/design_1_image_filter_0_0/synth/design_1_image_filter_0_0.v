// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:image_filter:1.0
// IP Revision: 1912131200

(* X_CORE_INFO = "image_filter,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "design_1_image_filter_0_0,image_filter,{}" *)
(* CORE_GENERATION_INFO = "design_1_image_filter_0_0,image_filter,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=image_filter,x_ipVersion=1.0,x_ipCoreRevision=1912131200,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_S_AXI_CONTROL_BUS_ADDR_WIDTH=6,C_S_AXI_CONTROL_BUS_DATA_WIDTH=32,C_M_AXI_HOSTMEM_1_ID_WIDTH=1,C_M_AXI_HOSTMEM_1_ADDR_WIDTH=32,C_M_AXI_HOSTMEM_1_DATA_WIDTH=32,C_M_AXI_HOSTMEM_1_AWUSER_WIDTH=1,C_M_AXI_HOSTMEM_1_ARUSER_WIDTH=1,C_M_AXI_HOSTMEM_1_WUSER_WIDTH=1,C_M_AXI_HOSTMEM_1_RUSER_WIDTH\
=1,C_M_AXI_HOSTMEM_1_BUSER_WIDTH=1,C_M_AXI_HOSTMEM_1_USER_VALUE=0x00000000,C_M_AXI_HOSTMEM_1_PROT_VALUE=000,C_M_AXI_HOSTMEM_1_CACHE_VALUE=0011,C_M_AXI_HOSTMEM_2_ID_WIDTH=1,C_M_AXI_HOSTMEM_2_ADDR_WIDTH=32,C_M_AXI_HOSTMEM_2_DATA_WIDTH=32,C_M_AXI_HOSTMEM_2_AWUSER_WIDTH=1,C_M_AXI_HOSTMEM_2_ARUSER_WIDTH=1,C_M_AXI_HOSTMEM_2_WUSER_WIDTH=1,C_M_AXI_HOSTMEM_2_RUSER_WIDTH=1,C_M_AXI_HOSTMEM_2_BUSER_WIDTH=1,C_M_AXI_HOSTMEM_2_USER_VALUE=0x00000000,C_M_AXI_HOSTMEM_2_PROT_VALUE=000,C_M_AXI_HOSTMEM_2_CACHE_VALUE\
=0011}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_image_filter_0_0 (
  s_axi_CONTROL_BUS_AWADDR,
  s_axi_CONTROL_BUS_AWVALID,
  s_axi_CONTROL_BUS_AWREADY,
  s_axi_CONTROL_BUS_WDATA,
  s_axi_CONTROL_BUS_WSTRB,
  s_axi_CONTROL_BUS_WVALID,
  s_axi_CONTROL_BUS_WREADY,
  s_axi_CONTROL_BUS_BRESP,
  s_axi_CONTROL_BUS_BVALID,
  s_axi_CONTROL_BUS_BREADY,
  s_axi_CONTROL_BUS_ARADDR,
  s_axi_CONTROL_BUS_ARVALID,
  s_axi_CONTROL_BUS_ARREADY,
  s_axi_CONTROL_BUS_RDATA,
  s_axi_CONTROL_BUS_RRESP,
  s_axi_CONTROL_BUS_RVALID,
  s_axi_CONTROL_BUS_RREADY,
  ap_clk,
  ap_rst_n,
  interrupt,
  m_axi_hostmem_1_AWADDR,
  m_axi_hostmem_1_AWLEN,
  m_axi_hostmem_1_AWSIZE,
  m_axi_hostmem_1_AWBURST,
  m_axi_hostmem_1_AWLOCK,
  m_axi_hostmem_1_AWREGION,
  m_axi_hostmem_1_AWCACHE,
  m_axi_hostmem_1_AWPROT,
  m_axi_hostmem_1_AWQOS,
  m_axi_hostmem_1_AWVALID,
  m_axi_hostmem_1_AWREADY,
  m_axi_hostmem_1_WDATA,
  m_axi_hostmem_1_WSTRB,
  m_axi_hostmem_1_WLAST,
  m_axi_hostmem_1_WVALID,
  m_axi_hostmem_1_WREADY,
  m_axi_hostmem_1_BRESP,
  m_axi_hostmem_1_BVALID,
  m_axi_hostmem_1_BREADY,
  m_axi_hostmem_1_ARADDR,
  m_axi_hostmem_1_ARLEN,
  m_axi_hostmem_1_ARSIZE,
  m_axi_hostmem_1_ARBURST,
  m_axi_hostmem_1_ARLOCK,
  m_axi_hostmem_1_ARREGION,
  m_axi_hostmem_1_ARCACHE,
  m_axi_hostmem_1_ARPROT,
  m_axi_hostmem_1_ARQOS,
  m_axi_hostmem_1_ARVALID,
  m_axi_hostmem_1_ARREADY,
  m_axi_hostmem_1_RDATA,
  m_axi_hostmem_1_RRESP,
  m_axi_hostmem_1_RLAST,
  m_axi_hostmem_1_RVALID,
  m_axi_hostmem_1_RREADY,
  m_axi_hostmem_2_AWADDR,
  m_axi_hostmem_2_AWLEN,
  m_axi_hostmem_2_AWSIZE,
  m_axi_hostmem_2_AWBURST,
  m_axi_hostmem_2_AWLOCK,
  m_axi_hostmem_2_AWREGION,
  m_axi_hostmem_2_AWCACHE,
  m_axi_hostmem_2_AWPROT,
  m_axi_hostmem_2_AWQOS,
  m_axi_hostmem_2_AWVALID,
  m_axi_hostmem_2_AWREADY,
  m_axi_hostmem_2_WDATA,
  m_axi_hostmem_2_WSTRB,
  m_axi_hostmem_2_WLAST,
  m_axi_hostmem_2_WVALID,
  m_axi_hostmem_2_WREADY,
  m_axi_hostmem_2_BRESP,
  m_axi_hostmem_2_BVALID,
  m_axi_hostmem_2_BREADY,
  m_axi_hostmem_2_ARADDR,
  m_axi_hostmem_2_ARLEN,
  m_axi_hostmem_2_ARSIZE,
  m_axi_hostmem_2_ARBURST,
  m_axi_hostmem_2_ARLOCK,
  m_axi_hostmem_2_ARREGION,
  m_axi_hostmem_2_ARCACHE,
  m_axi_hostmem_2_ARPROT,
  m_axi_hostmem_2_ARQOS,
  m_axi_hostmem_2_ARVALID,
  m_axi_hostmem_2_ARREADY,
  m_axi_hostmem_2_RDATA,
  m_axi_hostmem_2_RRESP,
  m_axi_hostmem_2_RLAST,
  m_axi_hostmem_2_RVALID,
  m_axi_hostmem_2_RREADY
);

(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWADDR" *)
input wire [5 : 0] s_axi_CONTROL_BUS_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWVALID" *)
input wire s_axi_CONTROL_BUS_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS AWREADY" *)
output wire s_axi_CONTROL_BUS_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WDATA" *)
input wire [31 : 0] s_axi_CONTROL_BUS_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WSTRB" *)
input wire [3 : 0] s_axi_CONTROL_BUS_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WVALID" *)
input wire s_axi_CONTROL_BUS_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS WREADY" *)
output wire s_axi_CONTROL_BUS_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BRESP" *)
output wire [1 : 0] s_axi_CONTROL_BUS_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BVALID" *)
output wire s_axi_CONTROL_BUS_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS BREADY" *)
input wire s_axi_CONTROL_BUS_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARADDR" *)
input wire [5 : 0] s_axi_CONTROL_BUS_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARVALID" *)
input wire s_axi_CONTROL_BUS_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS ARREADY" *)
output wire s_axi_CONTROL_BUS_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RDATA" *)
output wire [31 : 0] s_axi_CONTROL_BUS_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RRESP" *)
output wire [1 : 0] s_axi_CONTROL_BUS_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RVALID" *)
output wire s_axi_CONTROL_BUS_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_CONTROL_BUS, ADDR_WIDTH 6, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_CONTROL_BUS RREADY" *)
input wire s_axi_CONTROL_BUS_RREADY;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CONTROL_BUS:m_axi_hostmem_1:m_axi_hostmem_2, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *)
input wire ap_rst_n;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
output wire interrupt;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWADDR" *)
output wire [31 : 0] m_axi_hostmem_1_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWLEN" *)
output wire [7 : 0] m_axi_hostmem_1_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWSIZE" *)
output wire [2 : 0] m_axi_hostmem_1_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWBURST" *)
output wire [1 : 0] m_axi_hostmem_1_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWLOCK" *)
output wire [1 : 0] m_axi_hostmem_1_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWREGION" *)
output wire [3 : 0] m_axi_hostmem_1_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWCACHE" *)
output wire [3 : 0] m_axi_hostmem_1_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWPROT" *)
output wire [2 : 0] m_axi_hostmem_1_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWQOS" *)
output wire [3 : 0] m_axi_hostmem_1_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWVALID" *)
output wire m_axi_hostmem_1_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 AWREADY" *)
input wire m_axi_hostmem_1_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WDATA" *)
output wire [31 : 0] m_axi_hostmem_1_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WSTRB" *)
output wire [3 : 0] m_axi_hostmem_1_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WLAST" *)
output wire m_axi_hostmem_1_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WVALID" *)
output wire m_axi_hostmem_1_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 WREADY" *)
input wire m_axi_hostmem_1_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 BRESP" *)
input wire [1 : 0] m_axi_hostmem_1_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 BVALID" *)
input wire m_axi_hostmem_1_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 BREADY" *)
output wire m_axi_hostmem_1_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARADDR" *)
output wire [31 : 0] m_axi_hostmem_1_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARLEN" *)
output wire [7 : 0] m_axi_hostmem_1_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARSIZE" *)
output wire [2 : 0] m_axi_hostmem_1_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARBURST" *)
output wire [1 : 0] m_axi_hostmem_1_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARLOCK" *)
output wire [1 : 0] m_axi_hostmem_1_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARREGION" *)
output wire [3 : 0] m_axi_hostmem_1_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARCACHE" *)
output wire [3 : 0] m_axi_hostmem_1_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARPROT" *)
output wire [2 : 0] m_axi_hostmem_1_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARQOS" *)
output wire [3 : 0] m_axi_hostmem_1_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARVALID" *)
output wire m_axi_hostmem_1_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 ARREADY" *)
input wire m_axi_hostmem_1_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RDATA" *)
input wire [31 : 0] m_axi_hostmem_1_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RRESP" *)
input wire [1 : 0] m_axi_hostmem_1_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RLAST" *)
input wire m_axi_hostmem_1_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RVALID" *)
input wire m_axi_hostmem_1_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_hostmem_1, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_1 RREADY" *)
output wire m_axi_hostmem_1_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWADDR" *)
output wire [31 : 0] m_axi_hostmem_2_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWLEN" *)
output wire [7 : 0] m_axi_hostmem_2_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWSIZE" *)
output wire [2 : 0] m_axi_hostmem_2_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWBURST" *)
output wire [1 : 0] m_axi_hostmem_2_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWLOCK" *)
output wire [1 : 0] m_axi_hostmem_2_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWREGION" *)
output wire [3 : 0] m_axi_hostmem_2_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWCACHE" *)
output wire [3 : 0] m_axi_hostmem_2_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWPROT" *)
output wire [2 : 0] m_axi_hostmem_2_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWQOS" *)
output wire [3 : 0] m_axi_hostmem_2_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWVALID" *)
output wire m_axi_hostmem_2_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 AWREADY" *)
input wire m_axi_hostmem_2_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WDATA" *)
output wire [31 : 0] m_axi_hostmem_2_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WSTRB" *)
output wire [3 : 0] m_axi_hostmem_2_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WLAST" *)
output wire m_axi_hostmem_2_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WVALID" *)
output wire m_axi_hostmem_2_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 WREADY" *)
input wire m_axi_hostmem_2_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 BRESP" *)
input wire [1 : 0] m_axi_hostmem_2_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 BVALID" *)
input wire m_axi_hostmem_2_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 BREADY" *)
output wire m_axi_hostmem_2_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARADDR" *)
output wire [31 : 0] m_axi_hostmem_2_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARLEN" *)
output wire [7 : 0] m_axi_hostmem_2_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARSIZE" *)
output wire [2 : 0] m_axi_hostmem_2_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARBURST" *)
output wire [1 : 0] m_axi_hostmem_2_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARLOCK" *)
output wire [1 : 0] m_axi_hostmem_2_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARREGION" *)
output wire [3 : 0] m_axi_hostmem_2_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARCACHE" *)
output wire [3 : 0] m_axi_hostmem_2_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARPROT" *)
output wire [2 : 0] m_axi_hostmem_2_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARQOS" *)
output wire [3 : 0] m_axi_hostmem_2_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARVALID" *)
output wire m_axi_hostmem_2_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 ARREADY" *)
input wire m_axi_hostmem_2_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RDATA" *)
input wire [31 : 0] m_axi_hostmem_2_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RRESP" *)
input wire [1 : 0] m_axi_hostmem_2_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RLAST" *)
input wire m_axi_hostmem_2_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RVALID" *)
input wire m_axi_hostmem_2_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axi_hostmem_2, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 m_axi_hostmem_2 RREADY" *)
output wire m_axi_hostmem_2_RREADY;

  image_filter #(
    .C_S_AXI_CONTROL_BUS_ADDR_WIDTH(6),
    .C_S_AXI_CONTROL_BUS_DATA_WIDTH(32),
    .C_M_AXI_HOSTMEM_1_ID_WIDTH(1),
    .C_M_AXI_HOSTMEM_1_ADDR_WIDTH(32),
    .C_M_AXI_HOSTMEM_1_DATA_WIDTH(32),
    .C_M_AXI_HOSTMEM_1_AWUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_1_ARUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_1_WUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_1_RUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_1_BUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_1_USER_VALUE('H00000000),
    .C_M_AXI_HOSTMEM_1_PROT_VALUE('B000),
    .C_M_AXI_HOSTMEM_1_CACHE_VALUE('B0011),
    .C_M_AXI_HOSTMEM_2_ID_WIDTH(1),
    .C_M_AXI_HOSTMEM_2_ADDR_WIDTH(32),
    .C_M_AXI_HOSTMEM_2_DATA_WIDTH(32),
    .C_M_AXI_HOSTMEM_2_AWUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_2_ARUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_2_WUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_2_RUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_2_BUSER_WIDTH(1),
    .C_M_AXI_HOSTMEM_2_USER_VALUE('H00000000),
    .C_M_AXI_HOSTMEM_2_PROT_VALUE('B000),
    .C_M_AXI_HOSTMEM_2_CACHE_VALUE('B0011)
  ) inst (
    .s_axi_CONTROL_BUS_AWADDR(s_axi_CONTROL_BUS_AWADDR),
    .s_axi_CONTROL_BUS_AWVALID(s_axi_CONTROL_BUS_AWVALID),
    .s_axi_CONTROL_BUS_AWREADY(s_axi_CONTROL_BUS_AWREADY),
    .s_axi_CONTROL_BUS_WDATA(s_axi_CONTROL_BUS_WDATA),
    .s_axi_CONTROL_BUS_WSTRB(s_axi_CONTROL_BUS_WSTRB),
    .s_axi_CONTROL_BUS_WVALID(s_axi_CONTROL_BUS_WVALID),
    .s_axi_CONTROL_BUS_WREADY(s_axi_CONTROL_BUS_WREADY),
    .s_axi_CONTROL_BUS_BRESP(s_axi_CONTROL_BUS_BRESP),
    .s_axi_CONTROL_BUS_BVALID(s_axi_CONTROL_BUS_BVALID),
    .s_axi_CONTROL_BUS_BREADY(s_axi_CONTROL_BUS_BREADY),
    .s_axi_CONTROL_BUS_ARADDR(s_axi_CONTROL_BUS_ARADDR),
    .s_axi_CONTROL_BUS_ARVALID(s_axi_CONTROL_BUS_ARVALID),
    .s_axi_CONTROL_BUS_ARREADY(s_axi_CONTROL_BUS_ARREADY),
    .s_axi_CONTROL_BUS_RDATA(s_axi_CONTROL_BUS_RDATA),
    .s_axi_CONTROL_BUS_RRESP(s_axi_CONTROL_BUS_RRESP),
    .s_axi_CONTROL_BUS_RVALID(s_axi_CONTROL_BUS_RVALID),
    .s_axi_CONTROL_BUS_RREADY(s_axi_CONTROL_BUS_RREADY),
    .ap_clk(ap_clk),
    .ap_rst_n(ap_rst_n),
    .interrupt(interrupt),
    .m_axi_hostmem_1_AWID(),
    .m_axi_hostmem_1_AWADDR(m_axi_hostmem_1_AWADDR),
    .m_axi_hostmem_1_AWLEN(m_axi_hostmem_1_AWLEN),
    .m_axi_hostmem_1_AWSIZE(m_axi_hostmem_1_AWSIZE),
    .m_axi_hostmem_1_AWBURST(m_axi_hostmem_1_AWBURST),
    .m_axi_hostmem_1_AWLOCK(m_axi_hostmem_1_AWLOCK),
    .m_axi_hostmem_1_AWREGION(m_axi_hostmem_1_AWREGION),
    .m_axi_hostmem_1_AWCACHE(m_axi_hostmem_1_AWCACHE),
    .m_axi_hostmem_1_AWPROT(m_axi_hostmem_1_AWPROT),
    .m_axi_hostmem_1_AWQOS(m_axi_hostmem_1_AWQOS),
    .m_axi_hostmem_1_AWUSER(),
    .m_axi_hostmem_1_AWVALID(m_axi_hostmem_1_AWVALID),
    .m_axi_hostmem_1_AWREADY(m_axi_hostmem_1_AWREADY),
    .m_axi_hostmem_1_WID(),
    .m_axi_hostmem_1_WDATA(m_axi_hostmem_1_WDATA),
    .m_axi_hostmem_1_WSTRB(m_axi_hostmem_1_WSTRB),
    .m_axi_hostmem_1_WLAST(m_axi_hostmem_1_WLAST),
    .m_axi_hostmem_1_WUSER(),
    .m_axi_hostmem_1_WVALID(m_axi_hostmem_1_WVALID),
    .m_axi_hostmem_1_WREADY(m_axi_hostmem_1_WREADY),
    .m_axi_hostmem_1_BID(1'B0),
    .m_axi_hostmem_1_BRESP(m_axi_hostmem_1_BRESP),
    .m_axi_hostmem_1_BUSER(1'B0),
    .m_axi_hostmem_1_BVALID(m_axi_hostmem_1_BVALID),
    .m_axi_hostmem_1_BREADY(m_axi_hostmem_1_BREADY),
    .m_axi_hostmem_1_ARID(),
    .m_axi_hostmem_1_ARADDR(m_axi_hostmem_1_ARADDR),
    .m_axi_hostmem_1_ARLEN(m_axi_hostmem_1_ARLEN),
    .m_axi_hostmem_1_ARSIZE(m_axi_hostmem_1_ARSIZE),
    .m_axi_hostmem_1_ARBURST(m_axi_hostmem_1_ARBURST),
    .m_axi_hostmem_1_ARLOCK(m_axi_hostmem_1_ARLOCK),
    .m_axi_hostmem_1_ARREGION(m_axi_hostmem_1_ARREGION),
    .m_axi_hostmem_1_ARCACHE(m_axi_hostmem_1_ARCACHE),
    .m_axi_hostmem_1_ARPROT(m_axi_hostmem_1_ARPROT),
    .m_axi_hostmem_1_ARQOS(m_axi_hostmem_1_ARQOS),
    .m_axi_hostmem_1_ARUSER(),
    .m_axi_hostmem_1_ARVALID(m_axi_hostmem_1_ARVALID),
    .m_axi_hostmem_1_ARREADY(m_axi_hostmem_1_ARREADY),
    .m_axi_hostmem_1_RID(1'B0),
    .m_axi_hostmem_1_RDATA(m_axi_hostmem_1_RDATA),
    .m_axi_hostmem_1_RRESP(m_axi_hostmem_1_RRESP),
    .m_axi_hostmem_1_RLAST(m_axi_hostmem_1_RLAST),
    .m_axi_hostmem_1_RUSER(1'B0),
    .m_axi_hostmem_1_RVALID(m_axi_hostmem_1_RVALID),
    .m_axi_hostmem_1_RREADY(m_axi_hostmem_1_RREADY),
    .m_axi_hostmem_2_AWID(),
    .m_axi_hostmem_2_AWADDR(m_axi_hostmem_2_AWADDR),
    .m_axi_hostmem_2_AWLEN(m_axi_hostmem_2_AWLEN),
    .m_axi_hostmem_2_AWSIZE(m_axi_hostmem_2_AWSIZE),
    .m_axi_hostmem_2_AWBURST(m_axi_hostmem_2_AWBURST),
    .m_axi_hostmem_2_AWLOCK(m_axi_hostmem_2_AWLOCK),
    .m_axi_hostmem_2_AWREGION(m_axi_hostmem_2_AWREGION),
    .m_axi_hostmem_2_AWCACHE(m_axi_hostmem_2_AWCACHE),
    .m_axi_hostmem_2_AWPROT(m_axi_hostmem_2_AWPROT),
    .m_axi_hostmem_2_AWQOS(m_axi_hostmem_2_AWQOS),
    .m_axi_hostmem_2_AWUSER(),
    .m_axi_hostmem_2_AWVALID(m_axi_hostmem_2_AWVALID),
    .m_axi_hostmem_2_AWREADY(m_axi_hostmem_2_AWREADY),
    .m_axi_hostmem_2_WID(),
    .m_axi_hostmem_2_WDATA(m_axi_hostmem_2_WDATA),
    .m_axi_hostmem_2_WSTRB(m_axi_hostmem_2_WSTRB),
    .m_axi_hostmem_2_WLAST(m_axi_hostmem_2_WLAST),
    .m_axi_hostmem_2_WUSER(),
    .m_axi_hostmem_2_WVALID(m_axi_hostmem_2_WVALID),
    .m_axi_hostmem_2_WREADY(m_axi_hostmem_2_WREADY),
    .m_axi_hostmem_2_BID(1'B0),
    .m_axi_hostmem_2_BRESP(m_axi_hostmem_2_BRESP),
    .m_axi_hostmem_2_BUSER(1'B0),
    .m_axi_hostmem_2_BVALID(m_axi_hostmem_2_BVALID),
    .m_axi_hostmem_2_BREADY(m_axi_hostmem_2_BREADY),
    .m_axi_hostmem_2_ARID(),
    .m_axi_hostmem_2_ARADDR(m_axi_hostmem_2_ARADDR),
    .m_axi_hostmem_2_ARLEN(m_axi_hostmem_2_ARLEN),
    .m_axi_hostmem_2_ARSIZE(m_axi_hostmem_2_ARSIZE),
    .m_axi_hostmem_2_ARBURST(m_axi_hostmem_2_ARBURST),
    .m_axi_hostmem_2_ARLOCK(m_axi_hostmem_2_ARLOCK),
    .m_axi_hostmem_2_ARREGION(m_axi_hostmem_2_ARREGION),
    .m_axi_hostmem_2_ARCACHE(m_axi_hostmem_2_ARCACHE),
    .m_axi_hostmem_2_ARPROT(m_axi_hostmem_2_ARPROT),
    .m_axi_hostmem_2_ARQOS(m_axi_hostmem_2_ARQOS),
    .m_axi_hostmem_2_ARUSER(),
    .m_axi_hostmem_2_ARVALID(m_axi_hostmem_2_ARVALID),
    .m_axi_hostmem_2_ARREADY(m_axi_hostmem_2_ARREADY),
    .m_axi_hostmem_2_RID(1'B0),
    .m_axi_hostmem_2_RDATA(m_axi_hostmem_2_RDATA),
    .m_axi_hostmem_2_RRESP(m_axi_hostmem_2_RRESP),
    .m_axi_hostmem_2_RLAST(m_axi_hostmem_2_RLAST),
    .m_axi_hostmem_2_RUSER(1'B0),
    .m_axi_hostmem_2_RVALID(m_axi_hostmem_2_RVALID),
    .m_axi_hostmem_2_RREADY(m_axi_hostmem_2_RREADY)
  );
endmodule
