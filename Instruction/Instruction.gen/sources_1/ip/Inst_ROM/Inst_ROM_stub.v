// Copyright 1986-2023 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2.2 (win64) Build 3788238 Tue Feb 21 20:00:34 MST 2023
// Date        : Sun Jul 16 14:07:54 2023
// Host        : DESKTOP-TUCFU41 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/IDE/Projects/Vivado/Instruction/Instruction.gen/sources_1/ip/Inst_ROM/Inst_ROM_stub.v
// Design      : Inst_ROM
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2.2" *)
module Inst_ROM(clka, addra, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[5:0],douta[31:0]" */;
  input clka;
  input [5:0]addra;
  output [31:0]douta;
endmodule
