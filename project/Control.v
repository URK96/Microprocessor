`timescale 1ns / 1ps

module Control(
	input CLK_In,
	input [3:0] User_Input0, // Slide Switch
	input [3:0] User_Input1, // Button
	output reg [15:0] Instruction,
	output reg [3:0] State
    );
	 
	parameter [3:0] S0 = 4'd0,	// button 중복방지 state
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

	// 다음 상태 변경용 register
	reg [3:0] nState, ntState;
	// 임시 주소 저장 register
	reg [3:0] tAddr;
	// 임시 명령어 저장 register (각 4bit)
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
		// 어느 상태이던지 버튼3 입력 시 Idle (S1)으로 복귀
		if (User_Input1 == 4'b1000)
		begin
			nState <= S0;
			ntState <= S1;
		end
		// State에 따라 처리
		else
		begin
			case (State)
				// Button 중복방지 state
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
				// Idle
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
				// Data save 1
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
				// Data save 2
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
				// Data save 3
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
				// Data read 1
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
				// Data read 2
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
				// Instruction mode 1
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
				// Instruction mode 2
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
				// Instruction mode 3
				S10:
				begin
					Instruction <= {4'd0, User_Input0, 3'b000, 4'd0, 1'b0};

					if (User_Input1 == 4'b0001)
					begin
						Op3 <= User_Input0;
						nState <= S0;
						// Mul, Div 연산 시 Instruction mode 4 건너뛰기
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
				// Instruction mode 4
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
				// Intruction initial execution temp state
				S14:
				begin
					Instruction <= {Op1, Op2, Op3, Op4};
					nState <= S15;
				end
				// Instruction execution & segment display state
				S15:
				begin
					// Write enable 일 때
					if (Op4[0] == 1'b1)
					begin
						// Mul, Div 연산 외의 연산에서 RAM[0]에 저장하는 명령어의 경우
						if ((!(Op3[3:1] == 3'b010 || Op3[3:1] == 3'b011) && {Op3[0], Op4[3:1]} == 4'b0000))
						begin
							Instruction <= {Op1, Op2, Op3, Op4};
						end
						// Aaddr 또는 Baddr이 Write_addr과 동일할 경우
						else if (Op1 == {Op3[0], Op4[3:1]} || Op2 == {Op3[0], Op4[3:1]})
						begin
							tAddr <= {Op3[0], Op4[3:1]};
							Instruction <= {4'd0, tAddr, 3'b000, 4'd0, 1'b0};
						end
						else
						begin
							Instruction <= {Op1, Op2, Op3, Op4[3:1], 1'b0};
						end
					end
					// Write disable 일 때
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
