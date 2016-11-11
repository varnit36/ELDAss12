`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:26:04 11/11/2016 
// Design Name: 
// Module Name:    clockModule1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module clockModule1(
	input inp_clk,
	output reg out_clk
);

	reg [24:0] cnt1=0;
	
	//cnt1<=0;
	
	initial 
		begin
			cnt1<=0;
			out_clk<=0;
		end
		
	
	always@(posedge inp_clk) 
		
		begin
		
			cnt1<=cnt1+1;
		
			if(cnt1 == 8333333)
				begin
					cnt1<=0;
					out_clk<=~out_clk;
				end
		
		end
	
	
	
	
endmodule
