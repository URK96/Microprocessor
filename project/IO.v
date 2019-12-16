`timescale 1ns / 1ps

module IO(
	input CLK,
	input [15:0] Result,
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
	reg [15:0] eResult;
	
	initial
	begin
		eResult <= 16'd0;
		LED <= 4'b0000;
		User_Input0 <= 4'b0000;
		User_Input1 <= 4'b0000;
	end
	
	assign CLK_In = CLK10K;

    parameter [3:0] S0 = 4'd0,
                    S1 = 4'd1,   // Idle
                    S2 = 4'd2,   // data save1
                    S3 = 4'd3,   // data save2
                    S4 = 4'd4,   // data save3
                    S5 = 4'd5,   // data read1
                    S6 = 4'd6,   // data read2
                    S8 = 4'd8,   // Instruction input1
                    S9 = 4'd9,   // Instruction input2
                    S10 = 4'd10, // Instruction input3
                    S12 = 4'd12, // Instruction input4
					S14 = 4'd14, // Instruction Execution temp State
                    S15 = 4'd15; // operation execution

	always @(posedge CLK_In)
	begin
		User_Input0 <= Slide_Switch;
		User_Input1 <= Button; 

		case(State)
			S0:
			begin
				LED <= 4'b0000;
			end

			S1:
			begin
				eResult <= {12'd0, Result[3:0]};
			end

			S2:
			begin
				eResult <= {4'd0, Result[3:0], 8'd0};
			end

			S3:
			begin
				eResult <= {eResult[15:8], 4'd0, Result[3:0]};
			end

			S4:
			begin
				LED <= 4'b1111;
				eResult <= {eResult[15:8], 4'd0, Result[3:0]};
			end

			S5:
			begin
				eResult <= {4'd0, Result[3:0], 8'd0};
			end

			S6:
			begin
				LED <= 4'b1111;
				eResult <= {eResult[15:8], Result[7:0]};
			end

			S8:
			begin
				LED <= 4'b1000;
				eResult <= {Result[3:0], 12'd0};
			end

			S9:
			begin
				LED <= 4'b0100;
				eResult <= {eResult[15:12], Result[3:0], 8'd0};
			end

			S10:
			begin
				LED <= 4'b0010;
				eResult <= {eResult[15:8], Result[3:0], 4'd0};
			end

			S12:
			begin
				LED <= 4'b0001;
				eResult <= {eResult[15:4], Result[3:0]};
			end

			S15:
			begin
				LED <= 4'b1111;
				eResult <= Result;
			end

			default:
			begin
			end
		endcase
	end
	
	CLK10Mto10K clk10mto10k(CLK, CLK10K);
	SegmentTimer segTimer(CLK_In, eResult, Segment7_0, Segment7_1);

endmodule
