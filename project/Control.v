`timescale 1ns / 1ps

module Control(
	input CLK_In,
	input [3:0] User_Input0, // Slide Switch
	input [3:0] User_Input1, // Button
	output reg [15:0] Instruction,
	output reg [3:0] State
    );
	 
	parameter [3:0] S0 = 4'd0,
		S1 = 4'd1,
		S2 = 4'd2,
		S3 = 4'd3,
		S4 = 4'd4,
		S5 = 4'd5,
		S6 = 4'd6,
		S8 = 4'd8,
		S9 = 4'd9,
		S10 = 4'd10,
		S12 = 4'd12,
		S15 = 4'd15;

	reg nState, ntState;
	reg [3:0] tAddr;

	initial
	begin
		nState = S1;
		ntState = S1;
		tAddr = 4'd0;
	end
	
	always @(posedge CLK_In)
	begin
		if (User_Input1 == 4'b1000)
		begin
			nState <= S0;
			ntState <= S1;
		end
		else
		begin
			case (State)
			begin
				S0:
				begin
					if (User_Input1 == 4'd0)
					begin
						nState <= ntState;
					end
					else
					begin
						nState <= S0;
					end
				end

				S1:
				begin
					if (User_Input1 == 4'b0001)
					begin
						if (User_Input0 == 4'b0010)
						begin
							nState <= S0;
							ntState <= S2;
						end
						else if (User_Input0 == 4'b0100)
						begin
							nState <= S0;
							ntState <= S5;
						end
						else if (User_Input0 == 4'b1000)
						begin
							nState <= S0;
							ntState <= S8;
						end
						else
						begin
							nState <= S1;
						end
					end
					else
					begin
						nState <= S1;
					end
				end

				S2:
				begin
					Instruction <= {}
					if (User_Input1 == 4'b0001)
					begin
						tAddr <= User_Input0;
						nState <= S0;
						ntState <= S3;
					end
					else
					begin
						nState <= S2;
					end
				end

				S3:
				begin
					if (User_Input1 == 4'b0001)
					begin
						Instruction <= {4'd0, User_Input0, 3'b000, tAddr, 1'b1};
						nState <= S0;
						ntState <= S4;
					end
					else
					begin
						nState <= S3;
					end
				end

				S4:
				begin
					Instruction <= {4'd0, tAddr, 3'b000, 4'd0, 1'b0};

					if (User_Input1 == 4'b0001)
					begin
						nState <= S0;
						ntState <= S1;
					end
					else
					begin
						nState <= S4;
					end
				end

				S5:
				begin
					if (User_Input1 == 4'b0001)
					begin
						tAddr <= User_Input0;
						Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};
						nState <= S0;
						ntState <= S6;
					end
					else
					begin
						nState <= S5;
					end
				end

				S6:
				begin
					if (User_Input1 == 4'b0001)
					begin

					end
				end
			endcase
		end
	end

	always @(posedge CLK_In)
	begin
		State <= nState;
	end
	
endmodule
