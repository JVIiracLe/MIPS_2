`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 19:50:50
// Design Name: 
// Module Name: registers
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


module registers(
    input clk,
    input [4:0] rs_in, rt_in, rd_in, // индексы регистров (два для чтения, один для записи)
    input [31:0] data_in, // данные для записи
    output reg [31:0] rs_out, rt_out // данные из первого и второго регистров
    );

reg [31:0] registers[31:0]; // 32 штуки регистров, по 32 бита каждый

// чтение из регистров
assign rs_out = registers[rs_in]; // данные определенного регистра будет передаваться на выход
assign rt_out = registers[rt_in];


always @(posedge clk) begin
    if (rd_in != 0)
        registers[rd_in] <= data_in;
end

endmodule
