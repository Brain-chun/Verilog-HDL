module sim_counter_10LED (clk, reset_n, LED_sw, out0,out1,out2,out3,out4,out5,out6,out7,out8,out9);
 input reset_n, clk, LED_sw;
 output reg out0,out1,out2,out3,out4,out5,out6,out7,out8,out9;
 
 reg [27:0] s_counter;
 reg [2:0] LED_count;
 
 always @(posedge clk or negedge reset_n)
 begin
	if (!reste_n) begin s_counter<= 0 ; LED_count <= 0; end
	else
	begin
			if( 28'd25000000 ==s_counter )
			begin
			s_counter <= 0;
				if (LED_count == 3'd6) begin LED_count <=0 ; end
				else begin LED_count <= LED_count +1 ; end
			end
			else begin s_counter <= s_counter + 1 ; end
	end
 end
 
 
always @(posedge clk)
begin
		if(LED_sw ==1 )
		begin
		case(LED_count)
		3'd0 :begin out0 = 1; out1 = 1; out2 = 1; out3 = 1; out4 = 1; out5 = 1; out6 = 1; out7 = 1; out8 = 1; out9 = 1; end
		3'd1 :begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 1; out9 = 1; end
		3'd2 :begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 1; out7 = 1; out8 = 0; out9 = 0; end
		3'd3 :begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 1; out5 = 1; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		3'd4 :begin out0 = 0; out1 = 0; out2 = 1; out3 = 1; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		3'd5 :begin out0 = 1; out1 = 1; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		3'd6 :begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		default : begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		endcase
		end
		
		else
		begin
		case(LED_count)
		3'd0 :begin out0 = 1; out1 = 1; out2 = 1; out3 = 1; out4 = 1; out5 = 1; out6 = 1; out7 = 1; out8 = 1; out9 = 1; end
		3'd5 :begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 1; out9 = 1; end
		3'd4 :begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 1; out7 = 1; out8 = 0; out9 = 0; end
		3'd3 :begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 1; out5 = 1; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		3'd2 :begin out0 = 0; out1 = 0; out2 = 1; out3 = 1; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		3'd1 :begin out0 = 1; out1 = 1; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		3'd6 :begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		default : begin out0 = 0; out1 = 0; out2 = 0; out3 = 0; out4 = 0; out5 = 0; out6 = 0; out7 = 0; out8 = 0; out9 = 0; end
		endcase
		end
end
endnodule
