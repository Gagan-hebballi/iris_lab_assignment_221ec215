`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 23:49:16
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();
reg b0,b1,s;
wire b;
mux uut(.b0(b0),.b1(b1),.b(b),.s(s));
initial begin
b0 = 1'b0;
b1 = 1'b1;
s = 1'b1;
end
endmodule
