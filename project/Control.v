`timescale 1ns / 1ps

module Control(
	input CLK_In,
	input [3:0] User_Input0, // Slide Switch
	input [3:0] User_Input1, // Button
	output reg [15:0] Instruction,
	output reg [3:0] State
    );
	 
	parameter [3:0] S0 = 4'd0,	// button 중복인식 방지용 state
                    S1 = 4'd1,   // Idle
                    S2 = 4'd2,   // data save1
                    S3 = 4'd3,   // data save2
                    S4 = 4'd4,   // data read3
                    S5 = 4'd5,   // data read1
                    S6 = 4'd6,   // data read2
                    S8 = 4'd8,   // Instruction input1
                    S9 = 4'd9,   // Instruction input2
                    S10 = 4'd10, // Instruction input3
                    S12 = 4'd12, // Instruction input4
					S14 = 4'd14, // Instruction Exectuion Temp State
                    S15 = 4'd15; // operation execution

	reg [3:0] nState, ntState;
	reg [3:0] tAddr;
	reg [3:0] Op1, Op2, Op3, Op4;

	initial
	begin
		nState = S1;
		ntState = S1;
		tAddr = 4'd0;
		Op1 = 4'd0;
		Op2 = 4'd0;
		Op3 = 4'd0;
		Op4 = 4'd0;
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
					Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};

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
					Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};

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
					Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};

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
					Instruction <= {tAddr, 4'd0, 3'b000, 4'd0, 1'b0};

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
					Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};

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
					Instruction <= {tAddr, 4'd0, 3'b000, 4'd0, 1'b0};

					if (User_Input1 == 4'b0001)
					begin
						nState <= S0;
						ntState <= S1;
					end
					else
					begin
						nState <= S6;
					end
				end

				S8:
				begin
					Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};

					if (User_Input1 == 4'b0001)
					begin
						Op1 <= User_Input0;
						nState <= S0;
						ntState <= S9;
					end
					else
					begin
						nState <= S8;
					end
				end

				S9:
				begin
					Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};

					if (User_Input1 == 4'b0001)
					begin
						Op2 <= User_Input0;
						nState <= S0;
						ntState <= S10;
					end
					else
					begin
						nState <= S9;
					end
				end

				S10:
				begin
					Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};

					if (User_Input1 == 4'b0001)
					begin
						Op3 <= User_Input0;
						nState <= S0;

						if (User_Input0[3:1] == 3'b010 || User_Input0[3:1] == 3'b011)
						begin
							Op4 <= 4'd0;
							ntState <= S14;
						end
						else
						begin
							ntState <= S12;
						end
					end
					else
					begin
						nState <= S10;
					end
				end

				S12:
				begin
					Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};

					if (User_Input1 == 4'b0001)
					begin
						Op4 <= User_Input0;
						nState <= S0;
						ntState <= S14;
					end
					else
					begin
						nState <= S12;
					end
				end

				S14:
				begin
					Instruction <= {Op1, Op2, Op3, Op4};
					nState <= S15;
				end

				S15:
				begin
					if (Op4[0] == 1'b1)
					begin
						tAddr <= {Op3[0], Op4[3:1]};
						Instruction <= {4'd0, tAddr, 3'b000, 4'd0, 1'b0};
					end
					else
					begin
						Instruction <= {Op1, Op2, Op3, Op4};
					end

					if (User_Input1 == 4'b0001)
					begin
						nState <= S0;
						ntState <= S1;
					end
					else
					begin
						nState <= S15;
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
