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
	output [6:0] Segment7_0,
	output [6:0] Segment7_1
    );

	wire CLK10K; 
	
	initial
	begin
		LED <= 4'b0000;
		User_Input0 <= 4'b0000;
		User_Input1 <= 4'b0000;
	end
	
	assign CLK_In = CLK10K;
	assign User_Input0 = Slide_Switch;
	assign User_Input1 = Button;

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
                    S15 = 4'd15; // operation execution

	always @(posedge CLK_In)
	begin
		case(State)
		S0 :
		begin
			LED <= 4'b0000;
			Segment
		end
	end
	
	CLK10Mto10K clk10mto10k(CLK, Reset, CLK10K);
	SegmentGenerator sg(CLK10K, Reset, Result, Segment7_0, Segment7_1);

endmodule
