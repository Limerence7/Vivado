`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/20 10:04:09
// Design Name: 
// Module Name: ID
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

module ID(
    input                       clk,            // 时钟信号
    input                       rst,            // 复位信号
    input                       WB_en,          // 写回使能信号
    input                       Mem_RAM_out,

    input [`BitWidth]           ID_PC,          // ID阶段的程序计数器        
    input [`BitWidth]           ID_Inst,        // ID阶段的指令字
    input [`BitWidth]           WB_Data,        // 写回阶段的写回数据
    input [`BitWidth]           WB_Addr,        // 写回阶段的写回地址
    input [`BitWidth]           Mem_Reg_addr,
    input [`BitWidth]           tmp_Data,       

    output [`BitWidth]          ID_RAM_addr,    // ID阶段操作内存的地址
    output [`BitWidth]          ID_Reg_addr,    // ID阶段操作寄存器的地址
    output [`BitWidth]          op_data1,       // 操作数1
    output [`BitWidth]          op_data2,       // 操作数2

    output [`op_Width]          EX_op,          // 执行阶段操作码  
    output [`shamt_Width]       EX_shamt,       // 执行阶段移位码  
    output [`funct_Width]       EX_funct,       // 执行阶段功能码  
    output [`BitWidth]          EX_Addr,        // 执行阶段写回地址
    output [`BitWidth]          EX_Inst,        // 执行阶段指令    
    output [`BitWidth]          EX_data1,       // 执行阶段操作数1 
    output [`BitWidth]          EX_data2,       // 执行阶段操作数2 
    output [`BitWidth]          EX_RAM_addr,    // EX阶段操作内存的地址
    output [`BitWidth]          EX_Reg_addr,    // EX阶段操作寄存器的地址
    output [`BitWidth]          Reg_Data
    );

    Registers register(
        .clk(clk),                              // 时钟信号
        .WB_en(WB_en),                          // 写回使能信号
        .Mem_RAM_out(Mem_RAM_out),
        .WB_Data(WB_Data),                      // 写回阶段的写回数据
        .WB_Addr(WB_Addr),                      // 写回阶段的写回地址
        .Inst_code(ID_Inst),                    // ID阶段指令
        .PC_tmp(ID_PC),                         // ID阶段程序计数器
        .op_data1(op_data1),                    // ID阶段操作数1
        .op_data2(op_data2),                    // ID阶段操作数2
        .ID_RAM_addr(ID_RAM_addr),              // ID阶段操作内存的地址
        .ID_Reg_addr(ID_Reg_addr),              // ID阶段操作寄存器的地址
        .Reg_Data(Reg_Data),
        .Mem_Reg_addr(Mem_Reg_addr),
        .tmp_Data(tmp_Data)
    );

    ID_EX id_ex(
        .clk(clk),                              // 时钟信号
        .rst(rst),                              // 复位信号
        .ID_Inst(ID_Inst),                      // ID阶段指令
        .ID_data1(op_data1),                    // ID阶段操作数1
        .ID_data2(op_data2),                    // ID阶段操作数2
        .ID_RAM_addr(ID_RAM_addr),              // ID阶段操作内存的地址
        .ID_Reg_addr(ID_Reg_addr),              // ID阶段操作寄存器的地址

        .EX_op(EX_op),                          // 执行阶段操作码
        .EX_shamt(EX_shamt),                    // 执行阶段移位码              
        .EX_funct(EX_funct),                    // 执行阶段功能码
        .EX_Addr(EX_Addr),                      // 执行阶段写回地址
        .EX_Inst(EX_Inst),                      // 执行阶段指令
        .EX_data1(EX_data1),                    // 执行阶段操作数1  
        .EX_data2(EX_data2),                    // 执行阶段操作数2
        .EX_RAM_addr(EX_RAM_addr),              // EX阶段操作内存的地址
        .EX_Reg_addr(EX_Reg_addr)               // EX阶段操作寄存器的地址
    );
endmodule
