`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 14:09:03
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(in, clk, out, rst);
input in, clk, rst;
output out;

reg [3:0] q;
always @(posedge clk, posedge rst) begin
if (rst) q[3:0] <= 4'd0;
else q[3:0] <= {q[2:0],in};
end
assign out = q[3];
endmodule
