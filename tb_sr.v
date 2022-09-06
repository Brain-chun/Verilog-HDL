`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 14:23:15
// Design Name: 
// Module Name: tb_sr
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

//shift_reg(in, clk, out, rst);
module tb_sr;
reg in, clk, rst;
wire out;

shift_reg shift_reg(.in(in), .clk(clk), .rst(rst), .out(out));

initial begin 
rst = 1'b0; clk = 1'b0;
#10; rst = 1'b1;
#10; rst = 1'b0;
end

always begin
#5 clk = ~clk;
end

initial begin 
in = 1'b0;
#40; in = 1'b1;
#10; in = 1'b0;
#10; in = 1'b1;
#10; in = 1'b1;
#10; in = 1'b1;
#10; in = 1'b0;
#10; in = 1'b0;
#10; in = 1'b0;
#10; $finish;
end
endmodule
