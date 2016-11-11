`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:19:30 11/11/2016 
// Design Name: 
// Module Name:    part4 
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
module part4(
	input inclk,
	input res,
	input b2,
	input b3,
	output reg [7:0] segment=0,
	output reg [3:0] enable=0
    );

	reg [25:0] cnt1 =0;
	reg [25:0] cntf =1;
	reg [3:0] cnts = 0;
	reg [25:0] t0 = 1;//2083333; //8333333
	reg [25:0] t1 = 2;//4166666; //16666666
	reg [25:0] t2 = 4;//8333332; //33333332

	//wire cf1;
	//wire cf2;
	wire cf3;
	
	//fdModule1 f3(inclk, cf1);
	//fdModule1 f4(cf1, cf2);

	clockModule2 c4(inclk,cf3);
	
	initial
		begin 
			cntf=t0;
		end

	always@(posedge cf3)
		begin
			
			enable[0] <= 1;
			enable[1] <= 1;
			enable[2] <= 1;
			enable[3] <= 0;
			
			cnt1<=cnt1+1;
			
			if(res==1)
				begin
					cnt1<=0;
					cnts<=0;
				end
		
			if(cnt1==cntf)
				begin
					cnt1<=0;
					segment[0]<=1;
					segment[1]<=1;
					segment[2]<=1;
					segment[3]<=1;
					segment[4]<=1;
					segment[5]<=1;
					segment[6]<=1;
					segment[7]<=1;
					cnts<=cnts+1;
					
					if(cnts==0)	begin
						segment[0]<=0;
					end
					if(cnts==1)	begin 
						segment[5]<=0;
					end			
					if(cnts==2)	begin 
						segment[4]<=0;
					end			
					if(cnts==3)	begin 
						segment[3]<=0;
					end			
					if(cnts==4)	begin 
						segment[2]<=0;
					end			
					if(cnts==5)	begin
						segment[1]<=0;
						cnts<=0;
					end
					
				end

			
				
			if(b2==1 && cntf==t0)
				begin
					cntf<=t1;
				end
				
			if(b2==1 && cntf==t1)
				begin
					cntf<=t2;
				end
				
			if(b2==1 && cntf==t2)
				begin
					cntf<=t0;
				end
	
			
			
			
			if(b3==1 && cntf==t0)
				begin
					cntf<=t2;
				end
				
			if(b3==1 && cntf==t1)
				begin
					cntf<=t0;
				end
				
			if(b3==1 && cntf==t2)
				begin
					cntf<=t1;
				end
	
		end
		
	
			
			
endmodule
