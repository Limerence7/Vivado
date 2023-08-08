`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/18 19:05:56
// Design Name: 
// Module Name: Test
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

`include "D:\IDE\Projects\Vivado\Pipeline\Pipeline.srcs\sources_1\new\defines.v"

module Test();
    reg                       clk;          // 时钟信号
    reg                       rst;          // 复位信号
    reg                       Inst_en;      // 读指令使能信号

    initial begin                           // 初始化
        clk = `ENABLE;                      // 时钟初始为高电平
        rst = `RstEnable;                   // 复位初始为高电平
        Inst_en = `InsEnable;               // 读指令使能
    end

    always #25 clk = ~clk;                  // 每25ns翻转电平

    Pipeline pipeline(
        .clk(clk),                          // 时钟信号
        .rst(rst),                          // 复位信号
        .Inst_en(Inst_en)                   // 读指令使能信号
    );

endmodule
