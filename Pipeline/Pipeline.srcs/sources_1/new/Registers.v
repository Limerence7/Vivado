`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/19 10:10:57
// Design Name: 
// Module Name: Registers
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

module Registers(
    input                       clk,                // 时钟信号
    input                       WB_en,              // 写回使能信号
    input                       Mem_RAM_out,
    input [`BitWidth]           WB_Data,            // 写回阶段的写回数据
    input [`BitWidth]           WB_Addr,            // 写回阶段的写回地址

    input [`BitWidth]           Inst_code,          // ID阶段的指令字
    input [`BitWidth]           PC_tmp,             // ID阶段的程序计数器  
    input [`BitWidth]           Mem_Reg_addr,
    input [`BitWidth]           tmp_Data,


    output reg [`BitWidth]      op_data1,           // 操作数1
    output reg [`BitWidth]      op_data2,           // 操作数2
    output [`BitWidth]          ID_RAM_addr,        // ID阶段操作内存的地址
    output [`BitWidth]          ID_Reg_addr,        // ID阶段操作寄存器的地址
    output [`BitWidth]          Reg_Data
    );

    reg [`BitWidth]             Data_Reg[`Reg_Nums];// 存放数据的寄存器

    integer i;                                      // 整数i，用来循环
    initial begin
        for(i = 0; i < 32; i = i + 1)               // 给寄存器赋初值
            Data_Reg[i] = i;  
        end

    always @(*) begin
        if (WB_en == `WBEnable) begin
            Data_Reg[WB_Addr] <= WB_Data;
        end
    end

    always @(*) begin
        if (Inst_code[31:26] == 6'b000000 && Inst_code[10:6] == 5'b00000) begin
            op_data1 = Data_Reg[Inst_code[25:21]];  // 操作数1为rs寄存器的值
        end
        else begin
            op_data1 = Data_Reg[Inst_code[20:16]];  // 操作数1为rt寄存器的值
        end
    end

    always @(*) begin
        if (Inst_code[31:26] != 6'b000000) begin
            op_data2 = Inst_code[15:0];             // 操作数2为立即数
        end
        else if (Inst_code[10:6] == 5'b00000)begin
            op_data2 = Data_Reg[Inst_code[20:16]];  // 操作数2为rt寄存器的值
        end
        else begin
            op_data2 = Inst_code[10:6];             // 操作数2为移位码
        end
    end

    always @(*) begin
        if (Mem_RAM_out == `ENABLE) begin
            Data_Reg[Mem_Reg_addr] <= tmp_Data;
        end
    end

    assign ID_RAM_addr = Data_Reg[Inst_code[25:21]] + Inst_code[15:0];
    assign ID_Reg_addr = Inst_code[20:16];
    assign Reg_Data = Data_Reg[ID_Reg_addr];
endmodule
