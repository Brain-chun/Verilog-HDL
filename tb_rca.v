`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/10 11:04:37
// Design Name: 
// Module Name: tb_rca
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
module tb_rca;
reg [3:0] x,y;
reg cin;
wire [3:0] s;
wire cout;

//module rc_adder(x, y, s, cin, cout);
rc_adder rc_adder(.x(x), .y(y), .cin(cin), .s(s), .cout(cout));

initial begin
x = 4'b0101; y = 4'b1010; cin = 1'b0;
#10; x = 4'b1100; y = 4'b1011;
#10; $finish;
end

endmodule
