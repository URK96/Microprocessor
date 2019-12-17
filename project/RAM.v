`timescale 1ns / 1ps

module RAM(
	input [15:0] Write_data,	 // ALU Result
	input [3:0] Write_addr,		 // Instruction[4~1], 연산결과 저장될 Address
	input [3:0] Aaddr,			 // Instruction[15~12], OperandA를 불러올 Address
	input [3:0] Baddr,			 // Instruction[11~8], OperandB를 불러올 Address 혹은 사용자 입력 값
	input [3:0] State,
	input [2:0] Instruction_alu,// Instruction[7~5], Control block에서 쪼개져서 들어옴
	input CLK_In,
	input Write_Enable,			 // Instruction[0]
	output reg [7:0] OperandA,	 // Aaddr에 해당하는 값 반환
	output reg [7:0] OperandB	 // Baddr에 해당하는 값 반환
    );

    reg [7:0] RAM [0:15];	// 16개의 주소를 가진 8bit 레지스터 RAM[0] ~ RAM[15]
    integer i;
	 
    initial // RAM 메모리 초기화
	begin				
    	for(i = 0; i < 16; i = i + 1) 
		begin
			RAM[i] = 8'd0;
		end

		OperandA = 8'd0;
		OperandB = 8'd0;
    end    
    
    always @(posedge CLK_In)
    begin
		RAM[0] <= 8'b0000_0000;	// RAM[0]은 0으로 고정
		OperandA <= RAM[Aaddr];	// RAM의 Aaddr에는 8비트 짜리 OperandA의 데이터가 들어간다.
		// 사용자 입력 또는 Shift Instruction
		if((State >= 4'd1 && State <= 4'd12) || Instruction_alu == 3'b110 || Instruction_alu == 3'b111)  
		begin
			OperandB <= {4'b0000, Baddr};	// 사용자 입력, 4비트의 Baddr의 값을 8비트로 확장시켜 OperandB에 저장한다.	

			if (Write_Enable)
			begin
				if (State >= 4'd1 && State <= 4'd6)
				begin
					RAM[Write_addr] <= Baddr; 
				end
				else
				begin
					RAM[Write_addr] <= Write_data[7:0];
				end
			end
		end
		// 곱셈, RAM[14]에 결과 상위 8bit 저장 & RAM[15]에 하위 8bit 저장
      	else if (Instruction_alu == 3'b010)	
		begin
			OperandB <= RAM[Baddr];

			RAM[15] <= Write_data[15:8];
			RAM[14] <= Write_data[7:0];
		end
		// 나눗셈, RAM[14]에 몫 저장 & RAM[15]에 나머지 저장
      	else if (Instruction_alu == 3'b011)	
		begin
			OperandB <= RAM[Baddr];

			RAM[15] <= Write_data[7:0];
			RAM[14] <= Write_data[15:8];
		end
		// 사용자 입력과 Shift 연산이 아닌, Baddr의 주소값이 들어올 때
		else 
		begin
			OperandB <= RAM[Baddr]; // OperandB에 Baddr의 주소를 갖는 RAM의 값 대입

			if (Write_Enable) 
			begin
				RAM[Write_addr] <= Write_data[7:0];
			end
		end
	end
	
endmodule
