`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:57 11/11/2016 
// Design Name: 
// Module Name:    clocktestModule 
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
module clocktestModule(
	input in_clk,
	output f0clk,
	output f1clk,
	output f2clk
    );

	clockModule c1(in_clk, f0clk);
	fdModule f1(f0clk, f1clk);
	fdModule f2(f1clk,f2clk);

endmodule
