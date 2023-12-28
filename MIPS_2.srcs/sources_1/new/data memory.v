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
    input [31:0] addr, // адрес памти для чтения или записи
    input [31:0] data_in, // данные для записи в память
    input we, // write enable сигнал управления записи/чтения
    input re, // read enable
    input clk,
    output reg [31:0] data_out // данные, прочитанные из памяти
    );

reg [31:0] data_memory [63:0]; // память данных размером 32 бита, в количестве 64 штук

always @(posedge clk) begin
    data_memory[addr] <= data_in; // запись данных в память
    data_out <= data_memory[addr]; // чтение данных из памяти
end

endmodule
