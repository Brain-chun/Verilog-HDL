`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 10:48:55
// Design Name: 
// Module Name: tb_h_adder
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


module tb_h_adder;
reg x, y;
wire s, c;

h_adder h_adder(.x(x), .y(y), .s(s), .c(c));
initial begin
x = 1'b0; y = 1'b0;
#10; y = 1'b1;
#10; x = 1'b0; y = 1'b0;
#10 y = 1'b1;
$finish;
end
endmodule
