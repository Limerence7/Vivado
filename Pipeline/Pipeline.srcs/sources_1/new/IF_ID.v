`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/19 09:47:43
// Design Name: 
// Module Name: IF_ID
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

module IF_ID(
    input                       clk,        // 时钟信号
    input                       rst,        // 复位信号 
    input [`BitWidth]           in_PC,      // IF阶段的程序计数器
    input [`BitWidth]           in_Inst,    // IF阶段的指令字
    output reg [`BitWidth]      out_PC,     // ID阶段的程序计数器
    output reg [`BitWidth]      out_Inst    // ID阶段的指令字
    );

    initial begin                           
        out_PC = `Zero;                     // 初始化程序计数器为0
        out_Inst = `ADD_Inst;               // 初始化指令为加法指令
    end

    always @(posedge clk or negedge rst) begin
        if(!rst) begin                      // 复位
            out_PC = `Zero;
            out_Inst= `ADD_Inst;
        end

        else begin                          // 给ID阶段的程序计数器和指令赋初值
            out_PC = in_PC;                 
            out_Inst = in_Inst;
        end
    end
endmodule
