`timescale 1ns / 1ps

module RAM(
	input [15:0] Write_data,	 // ALU Result
	input [3:0] Write_addr,		 // Instruction[4~1], ������ ����� Address
	input [3:0] Aaddr,			 // Instruction[15~12], OperandA�� �ҷ��� Address
	input [3:0] Baddr,			 // Instruction[11~8], OperandB�� �ҷ��� Address Ȥ�� ����� �Է� ��
	input [2:0] Instruction_alu,// Instruction[7~5], Control block���� �ɰ����� ����
	input CLK_In,
	input Write_Enable,			 // Instruction[0]
	output reg [7:0] OperandA,	 // Aaddr�� �ش��ϴ� �� ��ȯ
	output reg [7:0] OperandB	 // Baddr�� �ش��ϴ� �� ��ȯ
    );

    reg [7:0] RAM [0:15];	// 16���� �ּҸ� ���� 8bit �������� RAM[0] ~ RAM[15]
    integer i;
	 
    initial begin				// RAM �޸� �ʱ�ȭ
      for(i=0; i<16; i=i+1) 
         begin
            RAM[i] = 0;
         end
      OperandA = 0;
      OperandB = 0;
    end    
    
    always @(posedge CLK_In)
    begin
		RAM[0] <= 8'b0000_0000;	// RAM Register[0]�� 0���� ����
		OperandA <= RAM[Aaddr];	//RAM�� Aaddr���� 8��Ʈ ¥�� OperandA�� �����Ͱ� ����.
         
		if(Instruction_alu==3'b110 | Instruction_alu==3'b111)   // ����� �Է� �޴� Instruction
		begin 
		OperandB <= {4'b0000, Baddr};	// ����� �Է�, 4��Ʈ�� Baddr�� ���� 8��Ʈ�� Ȯ����� OperandB�� �����Ѵ�.		
			if (Write_Enable) 			// Write_Enable�� HIGH�� ��, RAM Register�� ���� ����
			begin
				RAM[Write_addr] <= Write_data[7:0]; // ���� �ʿ�, Write_Data�� 16bit�� �ٲ���� ������
			end
		end
		
      else if (Instruction_alu==3'b010)	// ����, RAM[14]�� ��� ���� 8bit ���� & RAM[15]�� ���� 8bit ����
		begin
			RAM[14] <= Write_data[15:8];
			RAM[15] <= Write_data[7:0];
		end
		
      else if (Instruction_alu==3'b011)	// ������, RAM[14]�� �� ���� & RAM[15]�� ������ ����
		begin
			RAM[14] <= Write_data[7:0];		// ���ǻ� ���� 8bit�� ���̶�� ǥ��
			RAM[15] <= Write_data[15:8];
		end
		
		else     //����� �Է��� �ƴ�, Baddr�� �ּҰ��� ������ �Ǹ�,
		begin
			OperandB <= RAM[Baddr]; // OperandB�� Baddr�� �ּҸ� ���� RAM�� ���� �־��ش�.
			if (Write_Enable) // Opcode[0]�� Write_Enable�� HIGH�� �Ǹ�
			begin
				RAM[Write_addr] <= Write_data[7:0];
				//Write_data�� ���� Write_addr�� �ּҸ� ���� RAM�� �־��ش�.
			end
		end
	end
	
endmodule
