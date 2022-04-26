`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2022 00:09:26
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


module decoder(input [5:0]add,input clk,
               output reg [7:0]row,col);
               
      always@(posedge clk)
      begin
      case(add[2:0])
      3'b000 : row = 8'b00000001;
      3'b001 : row = 8'b00000010;
      3'b010 : row = 8'b00000100;
      3'b011 : row = 8'b00001000;
      3'b100 : row = 8'b00010000;
      3'b101 : row = 8'b00100000;
      3'b110 : row = 8'b01000001;
      3'b111 : row = 8'b10000001;
      endcase
      
      case(add[5:3])
      3'b000 : col = 8'b00000001;
      3'b001 : col = 8'b00000010;
      3'b010 : col = 8'b00000100;
      3'b011 : col = 8'b00001000;
      3'b100 : col = 8'b00010000;
      3'b101 : col = 8'b00100000;
      3'b110 : col = 8'b01000000;
      3'b111 : col = 8'b10000000;
      endcase
      
      end
endmodule
