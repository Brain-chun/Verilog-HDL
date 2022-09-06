`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 10:57:21
// Design Name: 
// Module Name: rc_adder
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


module rc_adder(x, y, s, cin, cout);
input [3:0] x, y;
input cin;
output [3:0] s;
output cout;
wire [2:0] c;
f_adder fa_0(.x(x[0]), .y(y[0]), .cin(cin), .s(s[0]), .cout(c[0]));
f_adder fa_1(.x(x[1]), .y(y[1]), .cin(c[0]), .s(s[1]), .cout(c[1]));
f_adder fa_2(.x(x[2]), .y(y[2]), .cin(c[1]), .s(s[2]), .cout(c[2]));
f_adder fa_3(.x(x[3]), .y(y[3]), .cin(c[2]), .s(s[3]), .cout(cout));
endmodule
