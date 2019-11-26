`timescale 1ns / 1ps

module SegmentGenerator(
	input CLK,
	input Reset,
	input [7:0] Result,
	output [7:0] Segment_0,
	output [7:0] Segment_1
    );
	
	wire [3:0] F4;
	wire [3:0] B4;

	always @(posedge CLK)
	begin
		if (Reset)
		begin
			F4 <= 4'b0000;
			B4 <= 4'b0000;
		end
		else
		begin
			F4 <= Result[7:4];
			B4 <= Result[3:0];
		end
	end
	
	BCD7Segment F4BCD(F4, Segment_0);
	BCD7Segment B4BCD(B4, Segment_1);

endmodule
