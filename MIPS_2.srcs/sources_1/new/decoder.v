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
    output [5:0] func, opcode, // на выход индексы регистров, фанк и опкод для команд I и R
    output [15:0] imm // на выход константа в командах типа I
);
// какой бы команда не была rs и rt все равно вот эти биты
assign rs = current_instruction[25:21];
assign rt = current_instruction[20:16];

// Определение типа инструкции и присваивание rd, func, opcode и imm
assign opcode = current_instruction[31:26]; // Опкод для всех типов инструкций

assign rd = current_instruction[15:11];
assign func = current_instruction[5:0];
assign imm = current_instruction[15:0];

/*
// Определение, является ли инструкция типом R
wire isTypeR = (opcode == 6'b000000);
assign rd = isTypeR ? current_instruction[15:11] : 5'b0; // rd только для типа R
assign func = isTypeR ? current_instruction[5:0] : 6'b0; // func только для типа R
assign imm = isTypeR ? 16'b0 : current_instruction[15:0]; // imm только для типа I
*/
endmodule 
