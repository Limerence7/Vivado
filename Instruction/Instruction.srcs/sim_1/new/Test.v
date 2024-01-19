`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/15 14:32:47
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


module Test
    #(parameter BitWidth = 32)
    ();

    reg                    clk;           // 时钟信号
    reg                    rstn;          // 复位信号
    reg                    en;            // 使能信号
    reg                    clr;           // 清零信号

    wire                   ZF;            // 零标志位
    wire                   CF;            // 进借位标志位
    wire                   OF;            // 溢出标志位
    wire                   SF;            // 符号标志位
    wire                   PF;            // 奇偶标志位

    wire                   Write_Signal;  // 写信号

    wire [BitWidth-1:0]    PC;            // 程序计数器
    wire [BitWidth-1:0]    Inst_code;     // 指令字
    wire [5:0]             op_code;       // 操作码
    wire [4:0]             Rs_addr;       // 源操作数1地址
    wire [4:0]             Rt_addr;       // 源操作数2地址
    wire [4:0]             Rd_addr;       // 目的操作数地址
    wire [4:0]             shamt;         // 移位指令用到的位移量
    wire [5:0]             funct;         // 功能码
    wire [BitWidth-1:0]    immediate;     // 指令中的立即数（扩展到32位）
    wire [BitWidth-1:0]    jump_addr;     // 跳转到的地址（扩展到32位）

    wire [BitWidth-1:0]    op_data1;      // 操作数1的值
    wire [BitWidth-1:0]    op_data2;      // 操作数2的值
    wire [BitWidth-1:0]    des_addr;      // 要存放数据的寄存器地址
    
    wire [BitWidth-1:0]    ALU_data;      // 运算结果

    always #50 clk = ~clk;                // 每过50ns翻转一次时钟信号

    initial 
    begin
        clk = 1'b0; clr = 1'b1;           // 时钟信号初始为0，清零信号为1
        rstn = 1'b0; en = 1'b1;           // 复位信号为0，使能信号为1
        #25;                              // 延时25ns

        clr = 1'b0;                       // 清零信号标记为0
    end

    Instruction tb_Instruction(
        .clk(clk),
        .rstn(rstn),
        .en(en),
        .clr(clr),

        .PC(PC),
        .Inst_code(Inst_code),
        .op_code(op_code),
        .Rs_addr(Rs_addr),
        .Rt_addr(Rt_addr),
        .Rd_addr(Rd_addr),
        .shamt(shamt),
        .funct(funct),
        .immediate(immediate),
        .jump_addr(jump_addr),

        .op_data1(op_data1),
        .op_data2(op_data2),
        .des_addr(des_addr),
        
        .Write_Signal(Write_Signal),
        .ZF(ZF),
        .CF(CF),
        .OF(OF),
        .SF(SF),
        .PF(PF),
        .ALU_data(ALU_data)
    );

endmodule
