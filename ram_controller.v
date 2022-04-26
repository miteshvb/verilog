`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.04.2022 01:15:55
// Design Name: 
// Module Name: ram_controller
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


module ram_controller(input [5:0]add,
                      input [63:0] data,
                      input  wr,clk,rst,
                      output reg [7:0]byte,
                      output reg bit);
                      
       wire [7:0] row, col;
       wire [63:0] data_wire;
       wire [7:0]byte_o;
       wire bite_o;
       
       shiftreg s1(.d(data[63:0]),.clk(clk),.wr(wr),.rst(rst),.q(data_wire[63:0]));
       decoder d1(.add(add[5:0]),.clk(clk),.row(row[7:0]),.col(col[7:0]));
       row_buff r1(.row(row[7:0]),.col(col[7:0]),.clk(clk),.data(data_wire[63:0]),.byte(byte_o[7:0]),.bit(bit_o));
       
       always@(posedge clk)
       begin
       byte <= byte_o;
       bit <= bit_o;
       end
       
                      
endmodule
