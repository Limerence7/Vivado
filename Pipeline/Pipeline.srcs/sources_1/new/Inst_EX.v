`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/19 19:42:48
// Design Name: 
// Module Name: Inst_EX
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

module Inst_EX(
    input [`op_Width]           EX_op,          // 执行阶段操作码
    input [`shamt_Width]        EX_shamt,       // 执行阶段移位码 
    input [`funct_Width]        EX_funct,       // 执行阶段功能码
    input [`BitWidth]           EX_data1,       // 执行阶段操作数1    
    input [`BitWidth]           EX_data2,       // 执行阶段操作数2

    output reg                  EX_WB_en,       // 执行阶段写回信号
    output reg                  EX_RAM_in,      // 执行阶段存储访存写使能信号
    output reg                  EX_RAM_out,     // 执行阶段存储访存读使能信号

    output reg [`BitWidth]      EX_Data         // 执行阶段要写回的数据
    );
    
    reg                         carry_over;     // 最高位进位
    reg                         ZF;             // 零标志
    reg                         CF;             // 进借位标志(只对无符号数运算有意义)
    reg                         OF;             // 溢出标志(只对有符号数运算有意义)
    reg                         SF;             // 符号标志(只对有符号数运算有意义)
    reg                         PF;             // 奇偶标志

    always @(*) begin
        if (EX_op == `R_TYPE) begin
            case(EX_funct)
                6'b100000: begin {carry_over, EX_Data} = EX_data1 + EX_data2; end
                6'b100010: begin {carry_over, EX_Data} = EX_data1 - EX_data2; end
                6'b100100: begin EX_Data = EX_data1 & EX_data2; end
                6'b100101: begin EX_Data = EX_data1 | EX_data2; end
                6'b100110: begin EX_Data = EX_data1 ^ EX_data2; end
                6'b100111: begin EX_Data = ~(EX_data1 | EX_data2); end
            endcase

            EX_WB_en = `WBEnable;
        end
        else if (EX_op == `J_TYPE) begin
            //
            EX_WB_en = `WBDisable;
        end
        else begin
            EX_RAM_out = `DISABLE; EX_RAM_in = `DISABLE;
            case (EX_op)
                6'b100011: begin EX_RAM_out = `ENABLE; end
                6'b101011: begin EX_RAM_in = `ENABLE; end
            endcase
            EX_WB_en = `WBDisable;
        end

        ZF = (EX_Data == 0);                   //F全为0，则ZF=1
        CF = carry_over;                        //进位借位标志
        OF = EX_data1[`SIZE] ^ EX_data2[`SIZE] ^ EX_Data[`SIZE] ^ carry_over;  //溢出标志公式
        SF = EX_Data[`SIZE];                   //符号标志,取F的最高位
        PF = ~^EX_Data;                        //奇偶标志，F有奇数个1，则F=1；偶数个1，则F=0
    end
endmodule
