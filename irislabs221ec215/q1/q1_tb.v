`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2024 00:16:40
// Design Name: 
// Module Name: q1_tb
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


module q1_tb();
reg b0,b1,b2,b3,s;
wire a0,a1,a2,a3;
q1 uut(.b0(b0),.b1(b1),.b2(b2),.b3(b3),.s(s),.a0(a0),.a1(a1),.a2(a2),.a3(a3));
initial begin
b0=1'b0;
b1=1'b1;
b2=1'b1;
b3=1'b0;
s=1'b1;
end
endmodule
