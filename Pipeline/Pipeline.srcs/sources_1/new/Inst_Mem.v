`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/19 22:32:23
// Design Name: 
// Module Name: Inst_Mem
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

module Inst_Mem(
    input                           rst,      
    input                           Mem_RAM_in,     // 访存阶段存储访存写使能信号          

    input [`op_Width]               Mem_op,
    input [`BitWidth]               Mem_Inst,
    input [`BitWidth]               Mem_Data,
    input [`BitWidth]               Mem_Addr,
    input [`BitWidth]               Mem_RAM_addr,   // Mem阶段操作内存的地址
    input [`BitWidth]               tmp_Data,

    output [`BitWidth]              RAM_Data,
    output reg [`BitWidth]          Mem_Output
    );

    reg [`BitWidth]                 Mem_RAM[`RAM_Nums];

    integer i;
    initial begin
        for(i = 0; i < 64; i = i + 1)
                Mem_RAM[i] = i;  
    end

    always @(*) begin
        if (Mem_RAM_in == `ENABLE)
            Mem_RAM[Mem_RAM_addr] = tmp_Data;
    end

    assign RAM_Data = Mem_RAM[Mem_RAM_addr];
endmodule
