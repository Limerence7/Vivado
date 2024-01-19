`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/16 11:21:27
// Design Name: 
// Module Name: Register
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


module Register
    #(parameter BitWidth = 32)                  // 定义常量为数据带宽
    (
    input [5:0]                 op_code,        // 操作码
    input [4:0]                 Rs_addr,        // 源操作数1地址
    input [4:0]                 Rt_addr,        // 源操作数2地址
    input [BitWidth-1:0]        immediate,      // 指令中的立即数（扩展到32位）
    input [BitWidth-1:0]        ALU_data,       // 运算结果
    input [BitWidth-1:0]        des_addr,       // 目的地址
    input                       Write_Signal,   // 写信号

    output [BitWidth-1:0]       op_data1,       // 操作数1的值
    output [BitWidth-1:0]       op_data2        // 操作数2的值
    ); 

    reg [BitWidth-1:0]          Register[0:31]; // 寄存器堆

    integer i;                                  // 整数用来计数
    initial                                     // 只运行一次初始化
    begin                                       
        for (i = 0; i < 32; i = i + 1)          // 初始化寄存器堆
            Register[i] <= i;                   // reg[i]的值为i
    end

    always @(des_addr or ALU_data)              // 如果写入地址和写入值发生变化
    begin
        if (Write_Signal == 1'b1)               // 如果写信号为1
            Register[des_addr] = ALU_data;      // 则把计算结果写入寄存器
    end

    assign op_data1 = Register[Rs_addr];        // 操作数一可以直接取出
    // 操作数二，根据操作码，选择为寄存器的值或者立即数
    assign op_data2 = (op_code == 6'b000000) ? Register[Rs_addr] : immediate;

endmodule
