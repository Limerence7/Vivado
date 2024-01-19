`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/15 15:24:15
// Design Name: 
// Module Name: Inst_Decode
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Inst_Decode
    #(parameter BitWidth = 32)                  // 定义常量为数据带宽
    (
    input                        clk,           // 时钟信号
    input [BitWidth-1:0]         Inst_code,     // 指令字
    input [3:0]                  PC_tmp,        // PC的高地址四位

    output [5:0]                 op_code,       // 操作码
    output [4:0]                 Rs_addr,       // 源操作数1地址
    output [4:0]                 Rt_addr,       // 源操作数2地址
    output [4:0]                 Rd_addr,       // 目的操作数地址
    output [4:0]                 shamt,         // 移位指令用到的位移量
    output [5:0]                 funct,         // 功能码
    output [BitWidth-1:0]        immediate,     // 指令中的立即数（扩展到32位）
    output [BitWidth-1:0]        jump_addr,     // 跳转到的地址（扩展到32位）
  
    output [BitWidth-1:0]        des_addr       // 要存放数据的寄存器地址
    );

    // always @(negedge clk)
    // begin
        
    // end

    assign op_code = Inst_code[31:26];          // 31-26位为操作码
    assign Rs_addr = Inst_code[25:21];          // 25-21位为源操作数1地址
    assign Rt_addr = Inst_code[20:16];          // 20-16位为源操作数2地址
    assign Rd_addr = Inst_code[15:11];          // 15-11位为目的操作数地址
    assign shamt = Inst_code[10:6];             // 10-6位为移位指令用到的位移量
    assign funct = Inst_code[5:0];              // 5-0位为功能码
    assign immediate = Inst_code[15:0];         // 15-0位为立即数

    assign des_addr = (op_code == 6'b000000) ? Rd_addr : Rt_addr;   // 根据操作码选择目的地址
    assign jump_addr = {PC_tmp, Inst_code[25:0], 4'b0000};          // 利用拼贴符号写出跳转的地址

endmodule
