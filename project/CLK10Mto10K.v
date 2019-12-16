`timescale 1ns / 1ps

module CLK10Mto10K(
	input CLK10M,
	output reg CLK10K
    );

	reg [8:0] count;

	always @(posedge CLK10M)
	begin
		if (count == 499)
		begin
			count <= 0;
			CLK10K <= ~CLK10K;
		end
		else
		begin
			count <= count + 1'b1;
		end
	end

endmodule
