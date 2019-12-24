############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sobel_1212
set_top image_filter
add_files sobel_1212/core.cpp
add_files sobel_1212/core.h
add_files sobel_1212/dma.h
add_files sobel_1212/streamtools.h
add_files -tb sobel_1212/test_core.cpp
open_solution "solution1"
set_part {xc7z020clg484-1} -tool vivado
create_clock -period 10 -name default
#source "./sobel_1212/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
