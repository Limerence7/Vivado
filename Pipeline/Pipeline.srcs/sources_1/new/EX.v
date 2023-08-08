`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/20 11:03:41
// Design Name: 
// Module Name: EX
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

module EX(
    input                       clk,            // 时钟信号
    input                       rst,            // 复位信号 
    
    input [`op_Width]           EX_op,          // 执行阶段操作码
       
    input [`shamt_Width]        EX_shamt,       // 执行阶段移位码  
    input [`funct_Width]        EX_funct,       // 执行阶段功能码 
    input [`BitWidth]           EX_Addr,        // 执行阶段写回地址
    input [`BitWidth]           EX_Inst,        // 执行阶段指令   
    input [`BitWidth]           EX_data1,       // 执行阶段操作数1 
    input [`BitWidth]           EX_data2,       // 执行阶段操作数2 
    input [`BitWidth]           EX_RAM_addr,    // EX阶段操作内存的地址
    input [`BitWidth]           EX_Reg_addr,    // EX阶段操作寄存器的地址

    output                      EX_WB_en,       // 执行阶段写回信号
    output                      Mem_WB_en,      // 访存阶段写回信号
    output                      EX_RAM_in,      // 执行阶段存储访存写使能信号
    output                      EX_RAM_out,     // 执行阶段存储访存读使能信号
    output                      Mem_RAM_in,     // 访存阶段存储访存写使能信号
    output                      Mem_RAM_out,    // 访存阶段存储访存读使能信号

    output [`BitWidth]          EX_Data,        // 执行阶段要写回的数据
    output [`op_Width]          Mem_op,         // 访存阶段操作码
    output [`BitWidth]          Mem_Inst,       // 访存阶段指令
    output [`BitWidth]          Mem_Data,       // 访存阶段写回数据
    output [`BitWidth]          Mem_Addr,       // 访存阶段写回地址
    output [`BitWidth]          Mem_RAM_addr,   // Mem阶段操作内存的地址
    output [`BitWidth]          Mem_Reg_addr    // Mem阶段操作寄存器的地址
    );

    Inst_EX inst_ex(
        .EX_WB_en(EX_WB_en),                    // 执行阶段写回信号
        .EX_RAM_in(EX_RAM_in),                  // 执行阶段存储访存写使能信号
        .EX_RAM_out(EX_RAM_out),                // 执行阶段存储访存读使能信号
        .EX_op(EX_op),                          // 执行阶段操作码
        .EX_shamt(EX_shamt),                    // 执行阶段移位码 
        .EX_funct(EX_funct),                    // 执行阶段功能码
        .EX_data1(EX_data1),                    // 执行阶段操作数1
        .EX_data2(EX_data2),                    // 执行阶段操作数2
        .EX_Data(EX_Data)                       // 执行阶段要写回的数据
    );

    EX_MEM ex_mem(
        .clk(clk),                              // 时钟信号
        .rst(rst),                              // 复位信号
        .EX_WB_en(EX_WB_en),                    // 执行阶段写回信号
        .EX_RAM_in(EX_RAM_in),                  // 执行阶段存储访存写使能信号
        .EX_RAM_out(EX_RAM_out),                // 执行阶段存储访存读使能信号
        .EX_op(EX_op),                          // 执行阶段操作码
        .EX_Inst(EX_Inst),                      // 执行阶段指令
        .EX_Data(EX_Data),                      // 执行阶段要写回的数据
        .EX_Addr(EX_Addr),                      // 执行阶段要写回的地址
        .EX_RAM_addr(EX_RAM_addr),              // EX阶段操作内存的地址
        .EX_Reg_addr(EX_Reg_addr),              // EX阶段操作寄存器的地址

        .Mem_WB_en(Mem_WB_en),                  // 访存阶段写回信号
        .Mem_RAM_in(Mem_RAM_in),                // 访存阶段存储访存写使能信号
        .Mem_RAM_out(Mem_RAM_out),              // 访存阶段存储访存读使能信号
        .Mem_op(Mem_op),                        // 访存阶段操作码
        .Mem_Inst(Mem_Inst),                    // 访存阶段指令
        .Mem_Data(Mem_Data),                    // 访存阶段写回数据
        .Mem_Addr(Mem_Addr),                    // 访存阶段写回地址
        .Mem_RAM_addr(Mem_RAM_addr),            // Mem阶段操作内存的地址
        .Mem_Reg_addr(Mem_Reg_addr)             // Mem阶段操作寄存器的地址
    );
endmodule
