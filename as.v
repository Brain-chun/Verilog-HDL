`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 13:16:17
// Design Name: 
// Module Name: as
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

//rc_adder(x, y, s, cin, cout);
module as(x, y, s, control, cout);
input [3:0] x, y;
input control;
output [3:0] s;
output cout;

wire [3:0] wire_y;

//assign wire_y = y ^ {4{control}};

assign wire_y[0] = y[0] ^ control;
assign wire_y[1] = y[1] ^ control;
assign wire_y[2] = y[2] ^ control;
assign wire_y[3] = y[3] ^ control;

rc_adder rc_adder(.x(x), .s(s), .cout(cout), .cin(control), .y(wire_y) );

endmodule
