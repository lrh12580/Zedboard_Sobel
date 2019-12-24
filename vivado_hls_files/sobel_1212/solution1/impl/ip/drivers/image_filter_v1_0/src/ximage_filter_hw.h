// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

// CONTROL_BUS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of in_V
//        bit 31~0 - in_V[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of out_V
//        bit 31~0 - out_V[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of rows
//        bit 31~0 - rows[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of cols
//        bit 31~0 - cols[31:0] (Read/Write)
// 0x2c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XIMAGE_FILTER_CONTROL_BUS_ADDR_AP_CTRL    0x00
#define XIMAGE_FILTER_CONTROL_BUS_ADDR_GIE        0x04
#define XIMAGE_FILTER_CONTROL_BUS_ADDR_IER        0x08
#define XIMAGE_FILTER_CONTROL_BUS_ADDR_ISR        0x0c
#define XIMAGE_FILTER_CONTROL_BUS_ADDR_IN_V_DATA  0x10
#define XIMAGE_FILTER_CONTROL_BUS_BITS_IN_V_DATA  32
#define XIMAGE_FILTER_CONTROL_BUS_ADDR_OUT_V_DATA 0x18
#define XIMAGE_FILTER_CONTROL_BUS_BITS_OUT_V_DATA 32
#define XIMAGE_FILTER_CONTROL_BUS_ADDR_ROWS_DATA  0x20
#define XIMAGE_FILTER_CONTROL_BUS_BITS_ROWS_DATA  32
#define XIMAGE_FILTER_CONTROL_BUS_ADDR_COLS_DATA  0x28
#define XIMAGE_FILTER_CONTROL_BUS_BITS_COLS_DATA  32

