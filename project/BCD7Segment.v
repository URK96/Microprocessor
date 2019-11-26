`timescale 1ns / 1ps

module BCD7Segment(
	input [3:0] BCD,
	output reg [7:0] Segment
    );

	always @(BCD)
	begin
		case (BCD)
			4'd0 : Segment = 8'b01111110;
			4'd1 : Segment = 8'b00110000;
			4'd2 : Segment = 8'b01101101;
			4'd3 : Segment = 8'b01111001;
			4'd4 : Segment = 8'b00110011;
			4'd5 : Segment = 8'b01011011;
			4'd6 : Segment = 8'b01011111;
			4'd7 : Segment = 8'b01110000;
			4'd8 : Segment = 8'b01111111;
			4'd9 : Segment = 8'b01111011;
			default : Segment = 8'b00000000;
		endcase
	end

endmodule
