// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Fri Dec 13 12:13:05 2019
// Host        : kamek running 64-bit CentOS release 6.10 (Final)
// Command     : write_verilog -force -mode synth_stub
//               /home/ecelrc/students/rli3/Vivado/projects/final_project_1/final_project_1.srcs/sources_1/bd/design_1/ip/design_1_image_filter_0_0/design_1_image_filter_0_0_stub.v
// Design      : design_1_image_filter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "image_filter,Vivado 2017.4" *)
module design_1_image_filter_0_0(s_axi_CONTROL_BUS_AWADDR, 
  s_axi_CONTROL_BUS_AWVALID, s_axi_CONTROL_BUS_AWREADY, s_axi_CONTROL_BUS_WDATA, 
  s_axi_CONTROL_BUS_WSTRB, s_axi_CONTROL_BUS_WVALID, s_axi_CONTROL_BUS_WREADY, 
  s_axi_CONTROL_BUS_BRESP, s_axi_CONTROL_BUS_BVALID, s_axi_CONTROL_BUS_BREADY, 
  s_axi_CONTROL_BUS_ARADDR, s_axi_CONTROL_BUS_ARVALID, s_axi_CONTROL_BUS_ARREADY, 
  s_axi_CONTROL_BUS_RDATA, s_axi_CONTROL_BUS_RRESP, s_axi_CONTROL_BUS_RVALID, 
  s_axi_CONTROL_BUS_RREADY, ap_clk, ap_rst_n, interrupt, m_axi_hostmem_1_AWADDR, 
  m_axi_hostmem_1_AWLEN, m_axi_hostmem_1_AWSIZE, m_axi_hostmem_1_AWBURST, 
  m_axi_hostmem_1_AWLOCK, m_axi_hostmem_1_AWREGION, m_axi_hostmem_1_AWCACHE, 
  m_axi_hostmem_1_AWPROT, m_axi_hostmem_1_AWQOS, m_axi_hostmem_1_AWVALID, 
  m_axi_hostmem_1_AWREADY, m_axi_hostmem_1_WDATA, m_axi_hostmem_1_WSTRB, 
  m_axi_hostmem_1_WLAST, m_axi_hostmem_1_WVALID, m_axi_hostmem_1_WREADY, 
  m_axi_hostmem_1_BRESP, m_axi_hostmem_1_BVALID, m_axi_hostmem_1_BREADY, 
  m_axi_hostmem_1_ARADDR, m_axi_hostmem_1_ARLEN, m_axi_hostmem_1_ARSIZE, 
  m_axi_hostmem_1_ARBURST, m_axi_hostmem_1_ARLOCK, m_axi_hostmem_1_ARREGION, 
  m_axi_hostmem_1_ARCACHE, m_axi_hostmem_1_ARPROT, m_axi_hostmem_1_ARQOS, 
  m_axi_hostmem_1_ARVALID, m_axi_hostmem_1_ARREADY, m_axi_hostmem_1_RDATA, 
  m_axi_hostmem_1_RRESP, m_axi_hostmem_1_RLAST, m_axi_hostmem_1_RVALID, 
  m_axi_hostmem_1_RREADY, m_axi_hostmem_2_AWADDR, m_axi_hostmem_2_AWLEN, 
  m_axi_hostmem_2_AWSIZE, m_axi_hostmem_2_AWBURST, m_axi_hostmem_2_AWLOCK, 
  m_axi_hostmem_2_AWREGION, m_axi_hostmem_2_AWCACHE, m_axi_hostmem_2_AWPROT, 
  m_axi_hostmem_2_AWQOS, m_axi_hostmem_2_AWVALID, m_axi_hostmem_2_AWREADY, 
  m_axi_hostmem_2_WDATA, m_axi_hostmem_2_WSTRB, m_axi_hostmem_2_WLAST, 
  m_axi_hostmem_2_WVALID, m_axi_hostmem_2_WREADY, m_axi_hostmem_2_BRESP, 
  m_axi_hostmem_2_BVALID, m_axi_hostmem_2_BREADY, m_axi_hostmem_2_ARADDR, 
  m_axi_hostmem_2_ARLEN, m_axi_hostmem_2_ARSIZE, m_axi_hostmem_2_ARBURST, 
  m_axi_hostmem_2_ARLOCK, m_axi_hostmem_2_ARREGION, m_axi_hostmem_2_ARCACHE, 
  m_axi_hostmem_2_ARPROT, m_axi_hostmem_2_ARQOS, m_axi_hostmem_2_ARVALID, 
  m_axi_hostmem_2_ARREADY, m_axi_hostmem_2_RDATA, m_axi_hostmem_2_RRESP, 
  m_axi_hostmem_2_RLAST, m_axi_hostmem_2_RVALID, m_axi_hostmem_2_RREADY)
/* synthesis syn_black_box black_box_pad_pin="s_axi_CONTROL_BUS_AWADDR[5:0],s_axi_CONTROL_BUS_AWVALID,s_axi_CONTROL_BUS_AWREADY,s_axi_CONTROL_BUS_WDATA[31:0],s_axi_CONTROL_BUS_WSTRB[3:0],s_axi_CONTROL_BUS_WVALID,s_axi_CONTROL_BUS_WREADY,s_axi_CONTROL_BUS_BRESP[1:0],s_axi_CONTROL_BUS_BVALID,s_axi_CONTROL_BUS_BREADY,s_axi_CONTROL_BUS_ARADDR[5:0],s_axi_CONTROL_BUS_ARVALID,s_axi_CONTROL_BUS_ARREADY,s_axi_CONTROL_BUS_RDATA[31:0],s_axi_CONTROL_BUS_RRESP[1:0],s_axi_CONTROL_BUS_RVALID,s_axi_CONTROL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_hostmem_1_AWADDR[31:0],m_axi_hostmem_1_AWLEN[7:0],m_axi_hostmem_1_AWSIZE[2:0],m_axi_hostmem_1_AWBURST[1:0],m_axi_hostmem_1_AWLOCK[1:0],m_axi_hostmem_1_AWREGION[3:0],m_axi_hostmem_1_AWCACHE[3:0],m_axi_hostmem_1_AWPROT[2:0],m_axi_hostmem_1_AWQOS[3:0],m_axi_hostmem_1_AWVALID,m_axi_hostmem_1_AWREADY,m_axi_hostmem_1_WDATA[31:0],m_axi_hostmem_1_WSTRB[3:0],m_axi_hostmem_1_WLAST,m_axi_hostmem_1_WVALID,m_axi_hostmem_1_WREADY,m_axi_hostmem_1_BRESP[1:0],m_axi_hostmem_1_BVALID,m_axi_hostmem_1_BREADY,m_axi_hostmem_1_ARADDR[31:0],m_axi_hostmem_1_ARLEN[7:0],m_axi_hostmem_1_ARSIZE[2:0],m_axi_hostmem_1_ARBURST[1:0],m_axi_hostmem_1_ARLOCK[1:0],m_axi_hostmem_1_ARREGION[3:0],m_axi_hostmem_1_ARCACHE[3:0],m_axi_hostmem_1_ARPROT[2:0],m_axi_hostmem_1_ARQOS[3:0],m_axi_hostmem_1_ARVALID,m_axi_hostmem_1_ARREADY,m_axi_hostmem_1_RDATA[31:0],m_axi_hostmem_1_RRESP[1:0],m_axi_hostmem_1_RLAST,m_axi_hostmem_1_RVALID,m_axi_hostmem_1_RREADY,m_axi_hostmem_2_AWADDR[31:0],m_axi_hostmem_2_AWLEN[7:0],m_axi_hostmem_2_AWSIZE[2:0],m_axi_hostmem_2_AWBURST[1:0],m_axi_hostmem_2_AWLOCK[1:0],m_axi_hostmem_2_AWREGION[3:0],m_axi_hostmem_2_AWCACHE[3:0],m_axi_hostmem_2_AWPROT[2:0],m_axi_hostmem_2_AWQOS[3:0],m_axi_hostmem_2_AWVALID,m_axi_hostmem_2_AWREADY,m_axi_hostmem_2_WDATA[31:0],m_axi_hostmem_2_WSTRB[3:0],m_axi_hostmem_2_WLAST,m_axi_hostmem_2_WVALID,m_axi_hostmem_2_WREADY,m_axi_hostmem_2_BRESP[1:0],m_axi_hostmem_2_BVALID,m_axi_hostmem_2_BREADY,m_axi_hostmem_2_ARADDR[31:0],m_axi_hostmem_2_ARLEN[7:0],m_axi_hostmem_2_ARSIZE[2:0],m_axi_hostmem_2_ARBURST[1:0],m_axi_hostmem_2_ARLOCK[1:0],m_axi_hostmem_2_ARREGION[3:0],m_axi_hostmem_2_ARCACHE[3:0],m_axi_hostmem_2_ARPROT[2:0],m_axi_hostmem_2_ARQOS[3:0],m_axi_hostmem_2_ARVALID,m_axi_hostmem_2_ARREADY,m_axi_hostmem_2_RDATA[31:0],m_axi_hostmem_2_RRESP[1:0],m_axi_hostmem_2_RLAST,m_axi_hostmem_2_RVALID,m_axi_hostmem_2_RREADY" */;
  input [5:0]s_axi_CONTROL_BUS_AWADDR;
  input s_axi_CONTROL_BUS_AWVALID;
  output s_axi_CONTROL_BUS_AWREADY;
  input [31:0]s_axi_CONTROL_BUS_WDATA;
  input [3:0]s_axi_CONTROL_BUS_WSTRB;
  input s_axi_CONTROL_BUS_WVALID;
  output s_axi_CONTROL_BUS_WREADY;
  output [1:0]s_axi_CONTROL_BUS_BRESP;
  output s_axi_CONTROL_BUS_BVALID;
  input s_axi_CONTROL_BUS_BREADY;
  input [5:0]s_axi_CONTROL_BUS_ARADDR;
  input s_axi_CONTROL_BUS_ARVALID;
  output s_axi_CONTROL_BUS_ARREADY;
  output [31:0]s_axi_CONTROL_BUS_RDATA;
  output [1:0]s_axi_CONTROL_BUS_RRESP;
  output s_axi_CONTROL_BUS_RVALID;
  input s_axi_CONTROL_BUS_RREADY;
  input ap_clk;
  input ap_rst_n;
  output interrupt;
  output [31:0]m_axi_hostmem_1_AWADDR;
  output [7:0]m_axi_hostmem_1_AWLEN;
  output [2:0]m_axi_hostmem_1_AWSIZE;
  output [1:0]m_axi_hostmem_1_AWBURST;
  output [1:0]m_axi_hostmem_1_AWLOCK;
  output [3:0]m_axi_hostmem_1_AWREGION;
  output [3:0]m_axi_hostmem_1_AWCACHE;
  output [2:0]m_axi_hostmem_1_AWPROT;
  output [3:0]m_axi_hostmem_1_AWQOS;
  output m_axi_hostmem_1_AWVALID;
  input m_axi_hostmem_1_AWREADY;
  output [31:0]m_axi_hostmem_1_WDATA;
  output [3:0]m_axi_hostmem_1_WSTRB;
  output m_axi_hostmem_1_WLAST;
  output m_axi_hostmem_1_WVALID;
  input m_axi_hostmem_1_WREADY;
  input [1:0]m_axi_hostmem_1_BRESP;
  input m_axi_hostmem_1_BVALID;
  output m_axi_hostmem_1_BREADY;
  output [31:0]m_axi_hostmem_1_ARADDR;
  output [7:0]m_axi_hostmem_1_ARLEN;
  output [2:0]m_axi_hostmem_1_ARSIZE;
  output [1:0]m_axi_hostmem_1_ARBURST;
  output [1:0]m_axi_hostmem_1_ARLOCK;
  output [3:0]m_axi_hostmem_1_ARREGION;
  output [3:0]m_axi_hostmem_1_ARCACHE;
  output [2:0]m_axi_hostmem_1_ARPROT;
  output [3:0]m_axi_hostmem_1_ARQOS;
  output m_axi_hostmem_1_ARVALID;
  input m_axi_hostmem_1_ARREADY;
  input [31:0]m_axi_hostmem_1_RDATA;
  input [1:0]m_axi_hostmem_1_RRESP;
  input m_axi_hostmem_1_RLAST;
  input m_axi_hostmem_1_RVALID;
  output m_axi_hostmem_1_RREADY;
  output [31:0]m_axi_hostmem_2_AWADDR;
  output [7:0]m_axi_hostmem_2_AWLEN;
  output [2:0]m_axi_hostmem_2_AWSIZE;
  output [1:0]m_axi_hostmem_2_AWBURST;
  output [1:0]m_axi_hostmem_2_AWLOCK;
  output [3:0]m_axi_hostmem_2_AWREGION;
  output [3:0]m_axi_hostmem_2_AWCACHE;
  output [2:0]m_axi_hostmem_2_AWPROT;
  output [3:0]m_axi_hostmem_2_AWQOS;
  output m_axi_hostmem_2_AWVALID;
  input m_axi_hostmem_2_AWREADY;
  output [31:0]m_axi_hostmem_2_WDATA;
  output [3:0]m_axi_hostmem_2_WSTRB;
  output m_axi_hostmem_2_WLAST;
  output m_axi_hostmem_2_WVALID;
  input m_axi_hostmem_2_WREADY;
  input [1:0]m_axi_hostmem_2_BRESP;
  input m_axi_hostmem_2_BVALID;
  output m_axi_hostmem_2_BREADY;
  output [31:0]m_axi_hostmem_2_ARADDR;
  output [7:0]m_axi_hostmem_2_ARLEN;
  output [2:0]m_axi_hostmem_2_ARSIZE;
  output [1:0]m_axi_hostmem_2_ARBURST;
  output [1:0]m_axi_hostmem_2_ARLOCK;
  output [3:0]m_axi_hostmem_2_ARREGION;
  output [3:0]m_axi_hostmem_2_ARCACHE;
  output [2:0]m_axi_hostmem_2_ARPROT;
  output [3:0]m_axi_hostmem_2_ARQOS;
  output m_axi_hostmem_2_ARVALID;
  input m_axi_hostmem_2_ARREADY;
  input [31:0]m_axi_hostmem_2_RDATA;
  input [1:0]m_axi_hostmem_2_RRESP;
  input m_axi_hostmem_2_RLAST;
  input m_axi_hostmem_2_RVALID;
  output m_axi_hostmem_2_RREADY;
endmodule
