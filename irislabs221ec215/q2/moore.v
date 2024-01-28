`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2024 15:30:36
// Design Name: 
// Module Name: moore
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


module moore(out, in, rst, clk);
output out;
input in,clk,rst;
reg out;
reg[3:0] state;
parameter s0=4'b0000,s1=4'b0001,s2=4'b0010,s3=4'b0011,s4=4'b0100,s5=4'b0101,s6=4'b0110,s7=4'b0111,s8=4'b1000;
always @(posedge clk or negedge rst)
if(rst==0) begin state=s0; out=0; end
else begin
case (state)
s0: begin out=0; if(in==0) state=s5; else state=s1; end
s1: begin out=0; if(in==0) state=s2; else state=s1; end
s2: begin out=0; if(in==0) state=s3; else state=s1; end
s3: begin out=0; if(in==0) state=s5; else state=s4; end
s4: begin out=1; if(in==0) state=s7; else state=s1; end
s5: begin out=0; if(in==0) state=s5; else state=s6; end
s6: begin out=0; if(in==0) state=s7; else state=s1; end
s7: begin out=0; if(in==0) state=s8; else state=s6; end
s8: begin out=1; if(in==0) state=s5; else state=s4; end
default: state=s0;
endcase
end
endmodule