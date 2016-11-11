`timescale 1ms / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:55:07 11/10/2016
// Design Name:   clockModule
// Module Name:   C:/Users/Varnit Jain/lab12/fixture_CM.v
// Project Name:  lab12
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clockModule
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fixture_CM;

	// Outputs
	reg clk;

	// Instantiate the Unit Under Test (UUT)
	clockModule uut (
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk=0;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

