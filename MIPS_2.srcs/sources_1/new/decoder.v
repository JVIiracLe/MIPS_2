`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2023 19:50:50
// Design Name: 
// Module Name: decoder
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


module decoder(
    input clk,
    input [31:0] current_instruction,
    output [4:0] rs, rt, rd,
    output [5:0] func, opcode, // �� ����� ������� ���������, ���� � ����� ��� ������ I � R
    output [15:0] imm // �� ����� ��������� � �������� ���� I
);
// ����� �� ������� �� ���� rs � rt ��� ����� ��� ��� ����
assign rs = current_instruction[25:21];
assign rt = current_instruction[20:16];

// ����������� ���� ���������� � ������������ rd, func, opcode � imm
assign opcode = current_instruction[31:26]; // ����� ��� ���� ����� ����������

assign rd = current_instruction[15:11];
assign func = current_instruction[5:0];
assign imm = current_instruction[15:0];

/*
// �����������, �������� �� ���������� ����� R
wire isTypeR = (opcode == 6'b000000);
assign rd = isTypeR ? current_instruction[15:11] : 5'b0; // rd ������ ��� ���� R
assign func = isTypeR ? current_instruction[5:0] : 6'b0; // func ������ ��� ���� R
assign imm = isTypeR ? 16'b0 : current_instruction[15:0]; // imm ������ ��� ���� I
*/
endmodule 
