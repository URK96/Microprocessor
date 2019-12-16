`timescale 1ns / 1ps

module SegmentGenerator(
	input CLK,
	input Reset,
	input [15:0] Result,
	output reg [7:0] Segment7_0,
	output reg [7:0] Segment7_1
    );
	
	reg [7:0] F4;
	reg [7:0] B4;

	always @(posedge CLK)
	begin
		if (Reset)
		begin
			F4 <= 8'b0000_0000;
			B4 <= 8'b0000_0000;
		end
		else
		begin
			F4 <= Result[15:8];
			B4 <= Result[7:0];
		end
	end
	
	BCD7Segment F4BCD(F4, Segment_0);
	BCD7Segment B4BCD(B4, Segment_1);

endmodule
