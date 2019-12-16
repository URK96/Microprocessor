`timescale 1ns / 1ps

 module ALU(
	input [7:0] OperandA,
	input [7:0] OperandB,
	input [2:0] Instruction_alu,
	output reg [15:0] Result
    );

	 reg [8:0] overflow;
    
    parameter[2:0] add = 3'b000,
                   sub = 3'b001,
                   div = 3'b010,
                   mul = 3'b011,
                   or_ = 3'b100,
                   not_ = 3'b101,
                   shift_l = 3'b110,
                   shift_r = 3'b111;
      
   initial begin
      overflow = 9'b0_0000_0000;
      Result = 16'b0000_0000_0000_0000;
   end
	
   always @ (*)
   begin
      case(Instruction_alu)
      
		add: 
         begin
           overflow <= {1'b0, OperandA} + {1'b0, OperandB};   // 9��Ʈ�� Ȯ���Ͽ� �����÷ο� �������Ϳ� �־��ش�.
            if( overflow[8] == 1 ) //�����÷ο��� MSB�� 1�̸�, 8��Ʈ�� �ʰ��ϴ� ���̹Ƿ� �����÷ο찡 �߻��ϴ� ���̴�.
            begin   
               Result <= 16'b0000_0000_0000_0000;	//Result�� ���� 0���� ǥ�����ش�.
            end
            else
            begin
               Result <= OperandA + OperandB;	//�����÷ο찡 �ƴϸ�, �״�� �����ش�.
            end
         end
         
      sub:
         begin	
            Result <= (OperandA - OperandB);					
            if(OperandB > OperandA) Result <= 16'b0000_0000_0000_0000;
				//OperandB�� OperandA���� ũ��, ������ ������ �Ǿ� �����÷ο찡 �߻��Ѵ�. 0���� ǥ���Ѵ�.
         end

      div:	//������, �⺻ ���� ���� �����÷ο�� Nan ���� ������� ���� ����
         begin 
				Result[7:0] <= (OperandA / OperandB);
				Result[15:8] <= (OperandA % OperandB);
         end

      mul:	//����
         begin
				Result <= (OperandA * OperandB);
         end

      or_:	
         begin
            Result <= (OperandA | OperandB);
         end

      not_:
         begin
            Result <= (~OperandA);
         end

      shift_l:
         begin
            Result <= (OperandA << OperandB);
				//Shift�� �� ������ �ڵ������� shift �� �κ��� 0���� ä������.
         end

      shift_r:
         begin 
            Result <= (OperandA >> OperandB);
				//shift�� �� ������ �ڵ������� shift �� �κ��� 0���� ä������.
         end
			
		default:
			begin
				Result <= 16'b0000_0000_0000_0000;
			end
      endcase
   end


endmodule
