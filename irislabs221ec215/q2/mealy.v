`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 10:21:52
// Design Name: 
// Module Name: mealy
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


module mealy(out,in,rst,clk);
output out;
input in,clk,rst;
reg out;
reg [2:0]state;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100,s5=3'b101,s6=3'b110,s7=3'b111;
always @(posedge clk or negedge rst)
if(rst==0) begin state=s0; out=0;end
else begin
case(state)
s0:if(in==0) begin out=0; state=s5;end
else begin out=0;state=s1;end
s1:if(in==0) begin out=0; state=s2;end
else begin out=0;state=s1;end
s2:if(in==0) begin out=0; state=s3;end
else begin out=0;state=s6;end
s3:if(in==0) begin out=0; state=s5;end
else begin out=1;state=s4;end
s4:if(in==0) begin out=0; state=s7;end
else begin out=0;state=s1;end   
s5:if(in==0) begin out=0; state=s5;end
else begin out=0;state=s6;end
s6:if(in==0) begin out=0; state=s7;end
else begin out=0;state=s1;end
s7:if(in==0) begin out=1; state=s3;end
else begin out=0;state=s6;end
default:state=s0;
endcase
end
endmodule
