`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.01.2024 23:39:48
// Design Name: 
// Module Name: q1
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


module q1(input b0,b1,b2,b3,s, output a0,a1,a2,a3 );
begin
mux uut1(.b0(b0),.b1(b3),.b(a0),.s(s));
mux uut2(.b0(b1),.b1(b0),.b(a1),.s(s));
mux uut3(.b0(b2),.b1(b1),.b(a2),.s(s));
mux uut4(.b0(b3),.b1(b2),.b(a3),.s(s));
end
endmodule
