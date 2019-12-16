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
            Result <= {7'd0, {1'b0, OperandA} + {1'b0, OperandB}};
         end
            
         sub:
         begin
            if (OperandB > OperandA) //OperandB�� OperandA���� ũ��, ������ ������ �Ǿ� �����÷ο찡 �߻��Ѵ�. 0���� ǥ���Ѵ�.
            begin
               Result <= 16'b0000_0000_0000_0000;
            end
            else
            begin
               Result <= (OperandA - OperandB);
            end
         end

         div:	//������
         begin
            if (OperandB == 0) 
            begin
               Result <= 16'd0;
            end
            else
            begin 
               Result[7:0] <= (OperandA / OperandB);
               Result[15:8] <= (OperandA % OperandB);
            end
         end

         mul:	//����
         begin
            Result <= (OperandA * OperandB);
         end

         or_:	// OR ����
         begin
            Result <= (OperandA | OperandB);
         end

         not_: // NOT ����
         begin
            Result <= (~OperandA);
         end

         shift_l: // Left Shift ����
         begin
            Result <= (OperandA << OperandB);
         end

         shift_r: // Right Shift ����
         begin 
            Result <= (OperandA >> OperandB);
         end
            
         default:
         begin
            Result <= 16'b0000_0000_0000_0000;
         end
      endcase
   end


endmodule
