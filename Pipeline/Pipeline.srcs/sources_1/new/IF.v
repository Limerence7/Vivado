`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/20 09:36:08
// Design Name: 
// Module Name: IF
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

`include "defines.v"

module IF(
    input                       clk,        // 时钟信号
    input                       rst,        // 复位信号 
    input                       Inst_en,    // 读指令使能信号

    output [`PC_Sel]            sel_nextpc, // PC选择信号（独热码）
    output [`BitWidth]          PC_offset,  // 分支指令跳转地址
    output [`BitWidth]          PC_link,    // 直接跳转指令跳转地址
    output [`BitWidth]          PC_reg,     // 寄存器堆存放的跳转指令
    output [`BitWidth]          pc,         // 程序计数器
    output [`BitWidth]          Inst_code,  // 指令字

    output [`BitWidth]          ID_PC,      // 译码阶段程序计数器
    output [`BitWidth]          ID_Inst     // 译码阶段指令
    );

    PC pc_update(
        .clk(clk),                          // 时钟信号
        .rst(rst),                          // 复位信号
        .sel_nextpc(sel_nextpc),            // PC选择信号（独热码）
        .PC_offset(PC_offset),              // 分支指令跳转地址
        .PC_link(PC_link),                  // 直接跳转指令跳转地址
        .PC_reg(PC_reg),                    // 寄存器堆存放的跳转指令
        .pc(pc)                             // 程序计数器
    );

    Inst_ROM inst_rom(
        .Inst_en(Inst_en),                  // 读指令使能信号
        .Inst_addr(pc),                     // 程序计数器
        .Inst_code(Inst_code)               // 指令字
    );

    // 实例化模块Inst_Decode，实现指令译码功能
    IF_ID if_id(
        .clk(clk),                          // 时钟信号
        .rst(rst),                          // 复位信号
        .in_PC(pc),                         // IF阶段的程序计数器
        .in_Inst(Inst_code),                // IF阶段的指令字
        .out_PC(ID_PC),                     // ID阶段的程序计数器
        .out_Inst(ID_Inst)                  // ID阶段的指令字
    );
endmodule
