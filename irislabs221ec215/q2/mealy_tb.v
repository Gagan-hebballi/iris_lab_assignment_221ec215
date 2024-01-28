`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 10:35:59
// Design Name: 
// Module Name: mealy_tb
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


module mealy_tb();
reg in,rst,clk;
wire out;
mealy uut(.out(out),.in(in),.rst(rst),.clk(clk));
initial
begin
clk=1'b0;#5
   forever
    #5 clk=~clk;
end
initial 
begin
in=1'b1;
rst=0;#10
rst=1;
in=1'b1;#10
in=1'b1;#10
in=1'b1;#10
in=1'b0;#10
in=1'b0;#10
in=1'b1;#10
in=1'b0;#10
in=1'b1;#10
in=1'b0;#10
in=1'b1;#10
in=1'b0;#10
in=1'b0;#10
in=1'b1;#10
in=1'b0;#10
in=1'b0;#10
$finish;
end
endmodule