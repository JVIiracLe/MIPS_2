`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 19:50:50
// Design Name: 
// Module Name: instruction memory
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


module instruction_memory(
    input [31:0] pc,
    input clk,
    output reg [31:0] current_instruction // текущая инструкция
);

reg [31:0] instruction_memory[63:0]; // память инструкций размером 32 бита, в количестве 64 штук

always @(posedge clk) begin
    current_instruction <= instruction_memory[pc >> 2]; // в зависимости от pc выбирается текущая инструкция
end

endmodule
