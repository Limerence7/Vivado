`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/18 17:40:12
// Design Name: 
// Module Name: defines
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

// 使能信号
`define ENABLE 1'b1             // 使能
`define DISABLE 1'b0            

`define RstEnable 1'b1          // 复位使能
`define RstDisable 1'b0

`define WriteEnable 1'b1        // 写使能
`define WriteDisable 1'b0

`define ReadEnable 1'b1         // 读使能
`define ReadDisable 1'b0

`define InsEnable 1'b1          // 指令使能
`define InsDisable 1'b0

`define WBEnable 1'b1			// 写回使能
`define WBDisable 1'b0

`define Zero 32'h00000000   // 32位0的表示

// 选择信号
`define PC_Sel 3:0

// 寄存器数据
`define BitWidth 31:0
`define SIZE 31
`define Reg_Nums 0:31
`define RAM_Nums 0:63

`define ADD_Inst 32'b000000_00000_00000_00000_100000;

// 指令相关部分宽度
`define op_Width 5:0
`define shamt_Width 4:0
`define funct_Width 5:0

// 指令类型
`define R_TYPE 6'b000000
`define J_TYPE 6'b000010


// add sub and or xor sll srl jr addi addiu lw sw beq bne j

// 