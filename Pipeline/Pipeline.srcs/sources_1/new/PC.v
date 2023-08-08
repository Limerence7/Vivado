`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/18 18:05:46
// Design Name: 
// Module Name: PC
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

module PC(
    input                       clk,        // 时钟信号
    input                       rst,        // 复位信号  

    input [`BitWidth]           PC_offset,  // 分支指令跳转地址
    input [`BitWidth]           PC_link,    // 直接跳转指令跳转地址
    input [`BitWidth]           PC_reg,     // 寄存器堆存放的跳转指令

    output reg [`PC_Sel]        sel_nextpc, // PC选择信号（独热码）
    output reg [`BitWidth]      pc          // 程序计数器
    );

    wire [`BitWidth]            PC_Next;    // 存放下一个指令的地址

    initial begin
        sel_nextpc = 4'b0001;
        pc <= `Zero;
    end

    always @(posedge clk or negedge rst) begin        // 时钟上升沿或复位下降沿
        if (!rst) begin                               // 如果复位，就把PC归零
            pc = `Zero;
        end
        else begin
            pc = PC_Next;                         // 就继续取指令
        end
    end

    assign PC_Next = sel_nextpc[0] ? (pc + 1)  :      // 根据指令选择信号选择程序计数器的下一个地址
                     sel_nextpc[1] ? PC_offset :
                     sel_nextpc[2] ? PC_link   :
                                     PC_reg;

endmodule
