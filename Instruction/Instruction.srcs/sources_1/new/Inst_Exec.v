`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/16 12:01:55
// Design Name: 
// Module Name: Inst_Exec
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


module Inst_Exec
    #(parameter BitWidth = 32)                 // 定义常量为数据带宽
    (
    input                       clk,           // 时钟信号
    input [5:0]                 op_code,       // 操作码
    input [BitWidth-1:0]        op_data1,      // 操作数1的值
    input [BitWidth-1:0]        op_data2,      // 操作数2的值
    input [4:0]                 shamt,         // 移位指令用到的位移量
    input [5:0]                 funct,         // 功能码
    input [BitWidth-1:0]        jump_addr,     // 跳转到的地址（扩展到32位）

    output reg                  Write_Signal,  // 写信号
    output reg                  ZF,            // 零标志位
    output reg                  CF,            // 进借位标志位
    output reg                  OF,            // 溢出标志位
    output reg                  SF,            // 符号标志位
    output reg                  PF,            // 奇偶标志位
    output reg [BitWidth-1:0]   ALU_data       // 运算结果
    );

    reg                         carry_over;    // 是否进位

    always @(*)
    begin
        carry_over = 0;                        // 进位开始赋值为0

        if (op_code == 6'b000000)
        begin
            case(funct)
                6'b100000: begin {carry_over, ALU_data} = op_data1 + op_data2; end      // 加法指令      
                6'b100010: begin {carry_over, ALU_data} = op_data1 - op_data2; end      // 减法指令
                6'b100100: begin ALU_data = op_data1 & op_data2; end                    // 与指令
                6'b100101: begin ALU_data = op_data1 | op_data2; end                    // 或指令
                6'b100110: begin ALU_data = op_data1 ^ op_data2; end                    // 非指令
                6'b100111: begin ALU_data = ~(op_data1 | op_data2); end                 // 或非指令
            endcase

            ZF = (ALU_data == 0);               //F全为0，则ZF=1
            CF = carry_over;                    //进位借位标志
            OF = op_data1[BitWidth-1]^op_data2[BitWidth-1]^ALU_data[BitWidth-1]^carry_over; //溢出标志公式
            SF = ALU_data[BitWidth-1];          //符号标志,取F的最高位
            PF = ~^ALU_data;                    //奇偶标志，ALU_data有奇数个1，则F=1；偶数个1，则F=0
            Write_Signal = 1'b1;                // 如果是运算指令，把读信号标志为1
        end
        else begin
            Write_Signal = 1'b0;                // 否则标志为0
        end
    end


endmodule
