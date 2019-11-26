`timescale 1ns / 1ps

module IO(
	input CLK,
	input [7:0] Result,
	input [3:0] State,
	input [3:0] Slide_Switch,
	input [3:0] Button,
	output reg [3:0] User_Input0,
	output reg [3:0] User_Input1,
	output CLK_In,
	output reg [3:0] LED,
	output [7:0] Segment7_0,
	output [7:0] Segment7_1
    );

	wire CLK10K;
	
	initial
	begin
		LED <= 4'b0000;
		User_Input0 <= 4'b0000;
	end
	
	assign CLK_in = CLK10K;
	assign User_Input0 = Slide_Switch;
	assign User_Input1 = Button;
	
	CLK10Mto10K clk10mto10k(CLK, Reset, CLK10K);
	
	SegmentGenerator sg(CLK10K, Reset, Result, Segment7_0, Segment7_1);

endmodule
