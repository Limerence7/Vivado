`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/14 17:20:40
// Design Name: 
// Module Name: Instruction
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

// 顶层模块
module Instruction 
    #(parameter BitWidth = 32)                  // 定义常量为数据带宽
    (
    input                        clk,           // 时钟信号
    input                        rstn,          // 复位信号
    input                        en,            // 使能信号
    input                        clr,           // 清零信号

    output                       Write_Signal,  // 写信号

    output reg [BitWidth-1:0]    PC,            // 程序计数器
    output [BitWidth-1:0]        Inst_code,     // 指令字
    output [5:0]                 op_code,       // 操作码
    output [4:0]                 Rs_addr,       // 源操作数1地址
    output [4:0]                 Rt_addr,       // 源操作数2地址
    output [4:0]                 Rd_addr,       // 目的操作数地址
    output [4:0]                 shamt,         // 移位指令用到的位移量
    output [5:0]                 funct,         // 功能码
    output [BitWidth-1:0]        immediate,     // 指令中的立即数（扩展到32位）
    output [BitWidth-1:0]        jump_addr,     // 跳转到的地址（扩展到32位）

    output [BitWidth-1:0]        op_data1,      // 操作数1的值
    output [BitWidth-1:0]        op_data2,      // 操作数2的值
    output [BitWidth-1:0]        des_addr,      // 要存放数据的寄存器地址

    output                       ZF,            // 零标志位
    output                       CF,            // 进借位标志位
    output                       OF,            // 溢出标志位
    output                       SF,            // 符号标志位
    output                       PF,            // 奇偶标志位
    output [BitWidth-1:0]        ALU_data       // 运算结果
    );

    wire [BitWidth-1:0]          PC_Next;       // 存放下一个要访问的指令的地址
    wire [3:0]                   PC_tmp;        // 存放PC的前四位

    always @(negedge clk)                       // 每当时钟下降沿时触发
    begin
        if (clr) PC <= 32'h00000000;            // 如果清零信号为1，则把程序计数器也请零
        PC = PC_Next;                           // 实现指令计数器PC + 1操作
    end

    assign PC_Next = PC + 1;                    // 通过连续赋值，让PC_Next始终为下一个指令地址
    assign PC_tmp = PC[31:28];                  // 记录PC的高地址四位

    // 实例化模块Inst_ROM，实现取指令功能
    Inst_ROM Inst_Fetch(
        .clka(clk),
        .addra(PC),
        .douta(Inst_code)
    );


    // 实例化模块Inst_Decode，实现指令译码功能
    Inst_Decode inst_decode(
        .clk(clk),
        .PC_tmp(PC_tmp),
        .Inst_code(Inst_code),
        .op_code(op_code),
        .Rs_addr(Rs_addr),
        .Rt_addr(Rt_addr),
        .Rd_addr(Rd_addr),
        .shamt(shamt),
        .funct(funct),
        .immediate(immediate),
        .jump_addr(jump_addr),
        .des_addr(des_addr)
    );

    // 实例化模块Register，实现从寄存器中取出操作数功能
    Register register_data(
        .Write_Signal(Write_Signal),
        .op_code(op_code),
        .Rs_addr(Rs_addr),
        .Rt_addr(Rt_addr),
        .immediate(immediate),
        .op_data1(op_data1),
        .op_data2(op_data2),
        .des_addr(des_addr),
        .ALU_data(ALU_data)
    );

    // 实例化模块Inst_Exec，实现指令执行功能
    Inst_Exec inst_exec(
        .clk(clk),
        .op_code(op_code), 
        .op_data1(op_data1),
        .op_data2(op_data2),
        .shamt(shamt),   
        .funct(funct),   
        .jump_addr(jump_addr),
        .Write_Signal(Write_Signal),
        .ZF(ZF),      
        .CF(CF),      
        .OF(OF),      
        .SF(SF),      
        .PF(PF),      
        .ALU_data(ALU_data)
    );

endmodule
