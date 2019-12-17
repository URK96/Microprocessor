`timescale 1ns / 1ps

 module ALU(
	input [7:0] OperandA,
	input [7:0] OperandB,
	input [2:0] Instruction_alu,
	output reg [15:0] Result
    );

   // overflow ������ �ӽ� register
	reg [8:0] overCheckR;
   // Shift ���� Ȯ��� �ӽ� register
	reg [15:0] shiftTempR;

   parameter[2:0] add = 3'b000,
                  sub = 3'b001,
                  div = 3'b010,
                  mul = 3'b011,
                  or_ = 3'b100,
                  not_ = 3'b101,
                  shift_l = 3'b110,
                  shift_r = 3'b111;
      
   initial begin
      overCheckR = 9'd0;
		shiftTempR = 16'd0;
      Result = 16'd0;
   end
	
   always @ (*)
   begin
      case(Instruction_alu)
         add: 
         begin
            overCheckR <= {1'b0, OperandA} + {1'b0, OperandB};
            // Add Overflow�� �����Ͽ� Overflow �� 0���� ��� ���
            if (overCheckR[8] == 1'b1)
            begin
               Result <= 16'd0;
            end
            else
            begin
               Result <= {7'd0, overCheckR};
            end
         end
            
         sub:
         begin
            //OperandB�� OperandA���� ũ��, ������ ������ �Ǿ� �����÷ο찡 �߻��Ѵ�. 0���� ǥ���Ѵ�.
            if (OperandB > OperandA) 
            begin
               Result <= 16'b0000_0000_0000_0000;
            end
            else
            begin
               Result <= (OperandA - OperandB);
            end
         end
         // ������
         div:
         begin
            // 0���� ������ ��� ���� 0���� ��� ���
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
         // ����
         mul:
         begin
            Result <= (OperandA * OperandB);
         end
         // OR ����
         or_:
         begin
            Result <= (OperandA | OperandB);
         end
         // NOT ����
         not_:
         begin
            Result <= (~OperandA);
         end
         // Left Shift ����
         shift_l:
         begin
            shiftTempR <= {8'd0, OperandA};
            Result <= (shiftTempR << OperandB);
         end
         // Right Shift ����
         shift_r:
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
