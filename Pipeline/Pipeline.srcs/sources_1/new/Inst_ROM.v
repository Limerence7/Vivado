`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/18 21:30:58
// Design Name: 
// Module Name: Inst_ROM
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

module Inst_ROM(
    input                       Inst_en,            // 读指令使能信号
    input [`BitWidth]           Inst_addr,          // 指令存放地址
    output reg [`BitWidth]      Inst_code           // 指令字
    );

    reg [`BitWidth]             InstROM[`Reg_Nums]; // 存放所有指令的寄存器

    initial begin
        InstROM[8'h00]=32'h00223820;  //add $3,$1,$2 $3=20//数据冒险;
        InstROM[8'h01]=32'h00661822;  //sub $2,$0,12 $2=12
        InstROM[8'h02]=32'h00820824;  //and $1,$0,8 $1=8 001000 00000 00001 0000000000001000
        InstROM[8'h03]=32'h010f5026;  //or $4,$2,$1 $4=4
        InstROM[8'h04]=32'h01071026;  //xor $5,$1,$2
        InstROM[8'h05]=32'h021f3027;  //nxor $6,$1,$2
        InstROM[8'h06]=32'h10220002;  //beq $1,$2,2 不跳转
        InstROM[8'h07]=32'h00221820;  //add $3,$1,$2 $3=20
        InstROM[8'h08]=32'h00412022;  //sub $4,$2,$1 $4=4
        InstROM[8'h09]=32'h14220004;  //bnq $1,$2,3 //跳转
        InstROM[8'h0A]=32'hAD02000A;  // sw $2 10($8) memory[$8+10]=12
        InstROM[8'h0B]=32'h00441020;  //add $2,$4,2//lw数据冒险;
        InstROM[8'h0C]=32'h20210004;  //addi $1,$1,4 //00100000001000010000000000000100;
        InstROM[8'h0D]=32'h8D04000A;  //lw $4 10($8) $4=12;
        InstROM[8'h0E]=32'h00222824;  //and $5,$1,$2
        InstROM[8'h0F]=32'h14220006;  //beq $1,$2,6
        InstROM[8'h10]=32'h30470009;  //andi $2,9,$7//控制冒险
        InstROM[8'h11]=32'hXXXXXXXX;
        InstROM[8'h12]=32'hXXXXXXXX;
        InstROM[8'h13]=32'hXXXXXXXX;
        InstROM[8'h14]=32'hXXXXXXXX;
        InstROM[8'h15]=32'h00000020;
        InstROM[8'h16]=32'h00000020;
        InstROM[8'h17]=32'h00000020;
        InstROM[8'h18]=32'h00000020;
        InstROM[8'h19]=32'h00000020;
        InstROM[8'h1A]=32'h00000020;
        InstROM[8'h1B]=32'h00000020;
        InstROM[8'h1D]=32'h00000020;
        InstROM[8'h1E]=32'h00000020;
        InstROM[8'h1F]=32'h00000020;
    end

    always @(*) begin                               // 每当指令地址发生变化
        if (Inst_en == `InsDisable) begin           // 如果读指令使能信号为0
            Inst_code <= `Zero;                     // 就赋为空指令
        end
        else begin
            Inst_code <= InstROM[Inst_addr];        // 从特定地址取出指令 
        end
    end
endmodule
