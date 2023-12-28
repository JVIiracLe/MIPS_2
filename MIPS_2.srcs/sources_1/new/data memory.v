`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 19:50:50
// Design Name: 
// Module Name: data memory
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


module data_memory(
    input [31:0] addr, // ����� ����� ��� ������ ��� ������
    input [31:0] data_in, // ������ ��� ������ � ������
    input we, // write enable ������ ���������� ������/������
    input re, // read enable
    input clk,
    output reg [31:0] data_out // ������, ����������� �� ������
    );

reg [31:0] data_memory [63:0]; // ������ ������ �������� 32 ����, � ���������� 64 ����

always @(posedge clk) begin
    data_memory[addr] <= data_in; // ������ ������ � ������
    data_out <= data_memory[addr]; // ������ ������ �� ������
end

endmodule
