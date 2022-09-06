`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 13:23:46
// Design Name: 
// Module Name: tb_as
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

// as(x, y, s, control, cout);
module tb_as;
reg signed [3:0] x,y;
reg control;
wire signed [3:0] s;
wire cout;

as as(.x(x), .y(y), .s(s), .control(control), .cout(cout));

initial begin
x = 4'd5; y = 4'd3; control = 1'b1;
#10; x = 4'd7; y = 4'd2;
#10; x = 4'd6; y = -4'd5; control =1'b0;
#10; $finish; 
end
endmodule
