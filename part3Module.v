`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:13:21 11/11/2016 
// Design Name: 
// Module Name:    part3Module 
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
module part3Module(
	input inclk,
	output reg [7:0] segment=0,
	output reg [3:0] enable=0
    );

	wire clk1;
	clockModule1 c2(inclk,clk1);
	
	reg [3:0] cnt1=0;

	
	always@(posedge clk1)
		begin
			enable[0] <= 1;
			enable[1] <= 1;
			enable[2] <= 1;
			enable[3] <= 0;
			segment[0]<=1;
			segment[1]<=1;
			segment[2]<=1;
			segment[3]<=1;
			segment[4]<=1;
			segment[5]<=1;
			segment[6]<=1;
			segment[7]<=1;
			cnt1<=cnt1+1;
			
			if(cnt1==0)	begin
				segment[0]<=0;
			end
			if(cnt1==1)	begin 
				segment[5]<=0;
			end			
			if(cnt1==2)	begin 
				segment[4]<=0;
			end			
			if(cnt1==3)	begin 
				segment[3]<=0;
			end			
			if(cnt1==4)	begin 
				segment[2]<=0;
			end			
			if(cnt1==5)	begin
				segment[1]<=0;
				cnt1<=0;
			end	

			


		end


endmodule
