`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:39:16 11/11/2016 
// Design Name: 
// Module Name:    fdModule1 
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
module fdModule1(
	input iclk,
	output reg oclk
    );

	initial 
		begin
			oclk<=0;
		end

	always@(posedge iclk)
		begin
			oclk=~oclk;
		end

endmodule
