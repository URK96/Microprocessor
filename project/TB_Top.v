`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:27:40 12/17/2019
// Design Name:   Top
// Module Name:   E:/URK96/Working/Project/FPGA/Microprocessor/project/TB_Top.v
// Project Name:  Microprocessor
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TB_Top;

	// Inputs
	reg CLK_REF;
	reg [3:0] SlideSwitch;
	reg [3:0] Button;

	// Outputs
	wire [7:0] Segment7_0;
	wire [7:0] Segment7_1;
	wire [3:0] LED;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.CLK_REF(CLK_REF), 
		.SlideSwitch(SlideSwitch), 
		.Button(Button), 
		.Segment7_0(Segment7_0), 
		.Segment7_1(Segment7_1), 
		.LED(LED)
	);

	initial begin
		// Initialize Inputs
		CLK_REF = 0;
		SlideSwitch = 0;
		Button = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		SlideSwitch = 4'b0010;
		// Add stimulus here

	end
	
	always #4 CLK_REF <= ~CLK_REF;
      
endmodule

