`timescale 1ns / 1ps

module RAM(
	input [15:0] Write_data,	 // ALU Result
	input [3:0] Write_addr,		 // Instruction[4~1], 연산결과 저장될 Address
	input [3:0] Aaddr,			 // Instruction[15~12], OperandA를 불러올 Address
	input [3:0] Baddr,			 // Instruction[11~8], OperandB를 불러올 Address 혹은 사용자 입력 값
	input [2:0] Instruction_alu,// Instruction[7~5], Control block에서 쪼개져서 들어옴
	input CLK_In,
	input Write_Enable,			 // Instruction[0]
	output reg [7:0] OperandA,	 // Aaddr에 해당하는 값 반환
	output reg [7:0] OperandB	 // Baddr에 해당하는 값 반환
    );

    reg [7:0] RAM [0:15];	// 16개의 주소를 가진 8bit 레지스터 RAM[0] ~ RAM[15]
    integer i;
	 
    initial begin				// RAM 메모리 초기화
      for(i=0; i<16; i=i+1) 
         begin
            RAM[i] = 0;
         end
      OperandA = 0;
      OperandB = 0;
    end    
    
    always @(posedge CLK_In)
    begin
		RAM[0] <= 8'b0000_0000;	// RAM Register[0]은 0으로 고정
		OperandA <= RAM[Aaddr];	//RAM의 Aaddr에는 8비트 짜리 OperandA의 데이터가 들어간다.
         
		if(Instruction_alu==3'b110 | Instruction_alu==3'b111)   // 사용자 입력 받는 Instruction
		begin 
		OperandB <= {4'b0000, Baddr};	// 사용자 입력, 4비트의 Baddr의 값을 8비트로 확장시켜 OperandB에 저장한다.		
			if (Write_Enable) 			// Write_Enable이 HIGH일 때, RAM Register에 쓰기 가능
			begin
				RAM[Write_addr] <= Write_data[7:0]; // 수정 필요, Write_Data가 16bit로 바뀌었기 때문에
			end
		end
		
      else if (Instruction_alu==3'b010)	// 곱셈, RAM[14]에 결과 상위 8bit 저장 & RAM[15]에 하위 8bit 저장
		begin
			RAM[14] <= Write_data[15:8];
			RAM[15] <= Write_data[7:0];
		end
		
      else if (Instruction_alu==3'b011)	// 나눗셈, RAM[14]에 몫 저장 & RAM[15]에 나머지 저장
		begin
			RAM[14] <= Write_data[7:0];		// 편의상 하위 8bit를 몫이라고 표현
			RAM[15] <= Write_data[15:8];
		end
		
		else     //사용자 입력이 아닌, Baddr의 주소값이 들어오게 되면,
		begin
			OperandB <= RAM[Baddr]; // OperandB에 Baddr의 주소를 갖는 RAM의 값을 넣어준다.
			if (Write_Enable) // Opcode[0]인 Write_Enable이 HIGH가 되면
			begin
				RAM[Write_addr] <= Write_data[7:0];
				//Write_data의 값을 Write_addr의 주소를 갖는 RAM에 넣어준다.
			end
		end
	end
	
endmodule
