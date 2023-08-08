`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/20 11:28:30
// Design Name: 
// Module Name: MEM
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


module MEM(
    input                       clk,            // 时钟信号
    input                       rst,            // 复位信号 
    input                       Mem_WB_en,      // 访存阶段写回信号 
    input                       Mem_RAM_in,     // 访存阶段存储访存写使能信号 

    input [`op_Width]           Mem_op,         // 访存阶段操作码
    input [`BitWidth]           Mem_Inst,       // 访存阶段指令
    input [`BitWidth]           Mem_Addr,       // 访存阶段写回地址  
    input [`BitWidth]           Mem_Output,     // 访存阶段输出
    input [`BitWidth]           tmp_Data,

    output                      WB_en,          // 写回阶段写回信号
    output [`BitWidth]          Mem_Data,       // 访存阶段写回数据
    output [`BitWidth]          WB_Inst,        // 写回阶段指令
    output [`BitWidth]          WB_Data,        // 写回阶段数据
    output [`BitWidth]          WB_Addr,        // 写回阶段地址
    output [`BitWidth]          Mem_RAM_addr,   // Mem阶段操作内存的地址
    output [`BitWidth]          RAM_Data
    );                                          

    Inst_Mem inst_mem(
        .rst(rst),                              // 复位信号  
        .Mem_RAM_in(Mem_RAM_in),                // 访存阶段存储访存写使能信号                    
        .Mem_op(Mem_op),                        // 访存阶段操作码
        .Mem_Inst(Mem_Inst),                    // 访存阶段指令
        .Mem_Data(Mem_Data),                    // 访存阶段写回数据
        .Mem_Addr(Mem_Addr),                    // 访存阶段写回地址
        .Mem_Output(Mem_Output),                // 访存阶段输出
        .Mem_RAM_addr(Mem_RAM_addr),            // Mem阶段操作内存的地址
        .RAM_Data(RAM_Data),
        .tmp_Data(tmp_Data)
    );

    Mem_WB mem_wb(
        .clk(clk),                              // 时钟信号
        .rst(rst),                              // 复位信号
        .Mem_WB_en(Mem_WB_en),                  // 访存阶段写回信号
        .Mem_Inst(Mem_Inst),                    // 访存阶段指令
        .Mem_Data(Mem_Data), 
        .Mem_Addr(Mem_Addr), 

        .WB_en(WB_en),                          // 写回阶段写回信号
        .WB_Inst(WB_Inst),                      // 写回阶段指令
        .WB_Data(WB_Data),
        .WB_Addr(WB_Addr)
    );
endmodule
