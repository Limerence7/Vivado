`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/19 22:55:37
// Design Name: 
// Module Name: Mem_WB
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


module Mem_WB(
    input                           clk,
    input                           rst,
    input                           Mem_WB_en, 
    input [`BitWidth]               Mem_Inst, 
    input [`BitWidth]               Mem_Data, 
    input [`BitWidth]               Mem_Addr, 

    output reg                      WB_en,
    output reg [`BitWidth]          WB_Inst,
    output reg [`BitWidth]          WB_Data,
    output reg [`BitWidth]          WB_Addr
    );

    always @(posedge clk or negedge rst) begin
        if (rst == `RstDisable) begin
            WB_en <= `WBEnable;
            WB_Inst <= `ADD_Inst;
            WB_Data <= `Zero;
            WB_Addr <= `Zero;
        end
        else begin
            WB_en <= Mem_WB_en;
            WB_Inst <= Mem_Inst;
            WB_Data <= Mem_Data;
            WB_Addr <= Mem_Addr;
        end
        
    end
endmodule

