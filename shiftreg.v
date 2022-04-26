`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.04.2022 20:08:41
// Design Name: 
// Module Name: shiftreg
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


module  shiftreg #(parameter width = 63) 
                (input [width:0]d, input clk,wr,rst,
                output reg [width:0]q);
//reg [width:0]q;
//reg [width:0]store;
    reg [width:0]temp;
    
    always@(posedge clk or posedge rst)
      begin
      
      if(rst)
      begin
      //store[width:0] <= 0;
      temp[width:0] <= 0;
      end
      
      else if(wr)
         begin
         temp[width:0] <= d[width:0];
         end
      
      else
        begin
        q[width:0] <= temp[width:0];
        temp[width:0] <= q[width:0];
        end
      
       
      q[width:0] <= temp[width:0];
      
      end
endmodule
