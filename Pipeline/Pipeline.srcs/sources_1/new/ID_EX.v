`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/19 16:03:47
// Design Name: 
// Module Name: ID_EX
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

module ID_EX(
    input                               clk,            // 时钟信号
    input                               rst,            // 复位信号
    input [`BitWidth]                   ID_Inst,        // ID阶段指令
    input [`BitWidth]                   ID_data1,       // ID阶段操作数1
    input [`BitWidth]                   ID_data2,       // ID阶段操作数2
    input [`BitWidth]                   ID_RAM_addr,    // ID阶段操作内存的地址
    input [`BitWidth]                   ID_Reg_addr,    // ID阶段操作寄存器的地址

    output reg [`op_Width]              EX_op,          // 执行阶段操作码
    output reg [`shamt_Width]           EX_shamt,       // 执行阶段移位码
    output reg [`funct_Width]           EX_funct,       // 执行阶段功能码
    output reg [`BitWidth]              EX_Addr,        // 执行阶段写回地址
    output reg [`BitWidth]              EX_Inst,        // 执行阶段指令
    output reg [`BitWidth]              EX_data1,       // 执行阶段操作数1
    output reg [`BitWidth]              EX_data2,       // 执行阶段操作数2
    output reg [`BitWidth]              EX_RAM_addr,    // EX阶段操作内存的地址
    output reg [`BitWidth]              EX_Reg_addr     // EX阶段操作寄存器的地址
    );

    always @(posedge clk or negedge rst) begin  // 时钟上升沿和复位下降沿
        if (rst == `RstDisable) begin           // 如果复位的话，就把数据全部赋初值
            EX_op <= 6'b000000;
            EX_shamt <= 5'b00000;
            EX_funct <= 6'b00000;
            EX_Addr <= `Zero;
            EX_Inst <= `Zero;
            EX_data1 <= `Zero;
            EX_data2 <= `Zero;
            EX_RAM_addr <= `Zero;
            EX_Reg_addr <= `Zero;
        end

        else begin                              // 依次给指令的各部分赋值
            EX_op <= ID_Inst[31:26];           
            EX_shamt <= ID_Inst[10:6];
            EX_funct <= ID_Inst[5:0];
            EX_Inst <= ID_Inst;
            EX_data1 <= ID_data1;
            EX_data2 <= ID_data2;
            EX_Addr <= ID_Inst[15:11];
            EX_RAM_addr <= ID_RAM_addr;
            EX_Reg_addr <= ID_Reg_addr;
        end
    end
endmodule
