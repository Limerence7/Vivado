`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/18 17:36:33
// Design Name: 
// Module Name: Pipeline
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

module Pipeline(
    input                       clk,            // 时钟信号
    input                       rst,            // 复位信号 
    input                       Inst_en         // 读指令使能信号
    );
    // Signal
    wire                        EX_WB_en;       // 执行阶段写回信号
    wire                        Mem_WB_en;      // 访存阶段写回信号
    wire                        WB_en;          // 写回阶段的写回信号
    wire                        EX_RAM_in;      // 执行阶段存储访存写使能信号
    wire                        EX_RAM_out;     // 执行阶段存储访存读使能信号
    wire                        Mem_RAM_in;     // 访存阶段存储访存写使能信号
    wire                        Mem_RAM_out;    // 访存阶段存储访存读使能信号

    // Array
    wire [`PC_Sel]              sel_nextpc;     // PC选择信号（独热码）
    wire [`BitWidth]            PC_offset;      // 分支指令跳转地址
    wire [`BitWidth]            PC_link;        // 直接跳转指令跳转地址
    wire [`BitWidth]            PC_reg;         // 寄存器堆存放的跳转指令
    wire [`BitWidth]            pc;             // 程序计数器
    wire [`BitWidth]            Inst_code;      // 指令字

    wire [`BitWidth]            ID_PC;          // ID阶段的程序计数器        
    wire [`BitWidth]            ID_Inst;        // ID阶段的指令字
    wire [`BitWidth]            ID_RAM_addr;    // ID阶段操作内存的地址
    wire [`BitWidth]            ID_Reg_addr;    // ID阶段操作寄存器的地址
    wire [`BitWidth]            op_data1;       // ID阶段操作数1
    wire [`BitWidth]            op_data2;       // ID阶段操作数2

    wire [`op_Width]            EX_op;          // 执行阶段操作码   
    wire [`shamt_Width]         EX_shamt;       // 执行阶段移位码  
    wire [`funct_Width]         EX_funct;       // 执行阶段功能码 
    wire [`BitWidth]            EX_Inst;        // 执行阶段指令   
    wire [`BitWidth]            EX_data1;       // 执行阶段操作数1 
    wire [`BitWidth]            EX_data2;       // 执行阶段操作数2 
    wire [`BitWidth]            EX_Addr;        // 执行阶段写回地址
    wire [`BitWidth]            EX_Data;        // 执行阶段要写回的数据
    wire [`BitWidth]            EX_RAM_addr;    // EX阶段操作内存的地址
    wire [`BitWidth]            EX_Reg_addr;    // EX阶段操作寄存器的地址

    wire [`op_Width]            Mem_op;         // 访存阶段操作码
    wire [`BitWidth]            Mem_Inst;       // 访存阶段指令
    wire [`BitWidth]            Mem_Data;       // 访存阶段写回数据
    wire [`BitWidth]            Mem_Addr;       // 访存阶段写回地址
    wire [`BitWidth]            Mem_Output;     // 访存阶段输出 
    wire [`BitWidth]            Mem_RAM_addr;   // Mem阶段操作内存的地址
    wire [`BitWidth]            Mem_Reg_addr;   // Mem阶段操作寄存器的地址

    
    wire [`BitWidth]            WB_Inst;        // 写回阶段指令
    wire [`BitWidth]            WB_Data;        // 写回阶段数据
    wire [`BitWidth]            WB_Addr;        // 写回阶段地址

    wire [`BitWidth]            Reg_Data;       // 寄存器堆的数据
    wire [`BitWidth]            RAM_Data;       // 内存的数据
    wire [`BitWidth]            tmp_Data;       // 存放访存中间数据
              

    assign tmp_Data = (Mem_RAM_in == `ENABLE) ? Reg_Data : RAM_Data;

    IF if_process(
        .clk(clk),                              // 时钟信号
        .rst(rst),                              // 复位信号
        .Inst_en(Inst_en),                      // 读指令使能信号
        .sel_nextpc(sel_nextpc),                // PC选择信号（独热码）
        .PC_offset(PC_offset),                  // 分支指令跳转地址
        .PC_link(PC_link),                      // 直接跳转指令跳转地址
        .PC_reg(PC_reg),                        // 寄存器堆存放的跳转指令
        .pc(pc),                                // IF阶段的程序计数器
        .Inst_code(Inst_code),                  // IF阶段的指令字
        .ID_PC(ID_PC),                          // ID阶段的程序计数器
        .ID_Inst(ID_Inst)                       // ID阶段的指令字  
    );

    ID id_process(
        .clk(clk),                              // 时钟信号
        .rst(rst),                              // 复位信号

        .WB_en(WB_en),                          // 写回使能信号
        .WB_Data(WB_Data),                      // 写回阶段的写回数据
        .WB_Addr(WB_Addr),                      // 写回阶段的写回地址

        .ID_Inst(ID_Inst),                      // ID阶段指令
        .ID_PC(ID_PC),                          // ID阶段程序计数器
        .ID_RAM_addr(ID_RAM_addr),              // ID阶段操作内存的地址
        .ID_Reg_addr(ID_Reg_addr),              // ID阶段操作寄存器的地址
        .op_data1(op_data1),                    // ID阶段操作数1
        .op_data2(op_data2),                    // ID阶段操作数2

        .EX_op(EX_op),                          // 执行阶段操作码
        .EX_shamt(EX_shamt),                    // 执行阶段移位码              
        .EX_funct(EX_funct),                    // 执行阶段功能码
        .EX_Addr(EX_Addr),                      // 执行阶段写回地址
        .EX_Inst(EX_Inst),                      // 执行阶段指令
        .EX_data1(EX_data1),                    // 执行阶段操作数1  
        .EX_data2(EX_data2),                    // 执行阶段操作数2
        .EX_RAM_addr(EX_RAM_addr),              // EX阶段操作内存的地址
        .EX_Reg_addr(EX_Reg_addr),              // EX阶段操作寄存器的地址

        .Mem_RAM_out(Mem_RAM_out),              // 访存阶段存储访存读使能信号
        .Mem_Reg_addr(Mem_Reg_addr),            // Mem阶段操作寄存器的地址
        .Reg_Data(Reg_Data),
        .tmp_Data(tmp_Data)

    );

    EX ex_process(
        .clk(clk),                              // 时钟信号
        .rst(rst),                              // 复位信号
        .EX_WB_en(EX_WB_en),                    // 执行阶段写回信号
        .EX_RAM_in(EX_RAM_in),                  // 执行阶段存储访存写使能信号
        .EX_RAM_out(EX_RAM_out),                // 执行阶段存储访存读使能信号
        .EX_op(EX_op),                          // 执行阶段操作码
        .EX_shamt(EX_shamt),                    // 执行阶段移位码 
        .EX_funct(EX_funct),                    // 执行阶段功能码
        .EX_Inst(EX_Inst),                      // 执行阶段指令
        .EX_data1(EX_data1),                    // 执行阶段操作数1
        .EX_data2(EX_data2),                    // 执行阶段操作数2
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

    MEM mem(
        .clk(clk),                              // 时钟信号
        .rst(rst),                              // 复位信号
        .Mem_WB_en(Mem_WB_en),                  // 访存阶段写回信号    
        .Mem_RAM_in(Mem_RAM_in),                // 访存阶段存储访存写使能信号                    
        .Mem_op(Mem_op),                        // 访存阶段操作码
        .Mem_Inst(Mem_Inst),                    // 访存阶段指令
        .Mem_Data(Mem_Data),                    // 访存阶段写回数据
        .Mem_Addr(Mem_Addr),                    // 访存阶段写回地址
        .Mem_Output(Mem_Output),                // 访存阶段输出
        .WB_Inst(WB_Inst),                      // 写回阶段指令
        .WB_en(WB_en),
        .WB_Data(WB_Data),
        .WB_Addr(WB_Addr),
        .Mem_RAM_addr(Mem_RAM_addr),            // Mem阶段操作内存的地址
        .RAM_Data(RAM_Data),
        .tmp_Data(tmp_Data)
    );

endmodule
