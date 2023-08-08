`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/19 21:49:29
// Design Name: 
// Module Name: EX_MEM
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

module EX_MEM(
    input                           clk,
    input                           rst,
    input                           EX_WB_en,
    input                           EX_RAM_in,      // 执行阶段存储访存写使能信号
    input                           EX_RAM_out,     // 执行阶段存储访存读使能信号

    input [`BitWidth]               EX_op,
    input [`BitWidth]               EX_Inst,
    input [`BitWidth]               EX_Data,
    input [`BitWidth]               EX_Addr,
    input [`BitWidth]               EX_RAM_addr,    // EX阶段操作内存的地址
    input [`BitWidth]               EX_Reg_addr,    // EX阶段操作寄存器的地址

    output reg                      Mem_WB_en,
    output reg                      Mem_RAM_in,     // 访存阶段存储访存写使能信号
    output reg                      Mem_RAM_out,    // 访存阶段存储访存读使能信号
    output reg [`op_Width]          Mem_op,
    output reg [`BitWidth]          Mem_Inst,
    output reg [`BitWidth]          Mem_Data,
    output reg [`BitWidth]          Mem_Addr,
    output reg [`BitWidth]          Mem_RAM_addr,   // Mem阶段操作内存的地址
    output reg [`BitWidth]          Mem_Reg_addr    // Mem阶段操作寄存器的地址
    );

    always @(posedge clk or negedge rst) begin
        if (rst == `RstDisable) begin
            Mem_WB_en <= `WBEnable;
            Mem_RAM_in <= `DISABLE;
            Mem_RAM_out <= `DISABLE;

            Mem_op <= 6'b000000;
            Mem_Inst <= `ADD_Inst;
            Mem_Data <= `Zero;
            Mem_Addr <= `Zero;
            Mem_RAM_addr <= `Zero;
            Mem_Reg_addr <= `Zero;
        end
        else begin
            Mem_WB_en <= EX_WB_en;
            Mem_op <= EX_op;
            Mem_RAM_in <= EX_RAM_in;
            Mem_RAM_out <= EX_RAM_out;

            Mem_Inst <= EX_Inst;
            Mem_Data <= EX_Data;
            Mem_Addr <= EX_Addr;
            Mem_RAM_addr <= EX_RAM_addr;
            Mem_Reg_addr <= EX_Reg_addr;
        end
        
    end
endmodule
