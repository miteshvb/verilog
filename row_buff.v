`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2022 00:55:41
// Design Name: 
// Module Name: row_buff
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


module row_buff(input [7:0]row,col, 
                input clk,
                input [63:0]data,
                output reg [7:0]byte, 
                output reg bit);
                
                always@(posedge clk)
                begin
                case(row[7:0])
                8'b00000001: byte[7:0] = data[7:0];
                8'b00000010: byte[7:0] = data[15:8];
                8'b00000100: byte[7:0] = data[23:16];
                8'b00001000: byte[7:0] = data[31:24];
                8'b00010000: byte[7:0] = data[39:32];
                8'b00100000: byte[7:0] = data[47:40];
                8'b01000000: byte[7:0] = data[55:48];
                8'b10000000: byte[7:0] = data[63:56];
                default : byte[7:0] = 0;
                endcase
                
                case(col[7:0])
                8'b00000001: bit = byte[0];
                8'b00000010: bit = byte[1];
                8'b00000100: bit = byte[2];
                8'b00001000: bit = byte[3];
                8'b00010000: bit = byte[4];
                8'b00100000: bit = byte[5];
                8'b01000000: bit = byte[6];
                8'b10000000: bit = byte[7];
                default : bit = 0;
                endcase
                end
endmodule
