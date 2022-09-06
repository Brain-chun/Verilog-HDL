`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 11:01:33
// Design Name: 
// Module Name: f_adder
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


module f_adder(cin, x, y, s, cout);
input cin, x, y;
output s, cout;
wire t0, t1,t2;
h_adder ha0(.x(cin), .y(t0), .s(s), .c(t1));
h_adder ha1(.x(x), .y(y), .s(t0), .c(t2));
assign cout = t1 | t2;
endmodule
