`timescale 1ns / 1ps

 module ALU(
	input [7:0] OperandA,
	input [7:0] OperandB,
	input [2:0] Instruction_alu,
	output reg [15:0] Result
    );

   // overflow 감지용 임시 register
	reg [8:0] overCheckR;
   // Shift 연산 확장용 임시 register
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
            // Add Overflow를 감지하여 Overflow 시 0으로 결과 출력
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
            //OperandB가 OperandA보다 크면, 음수가 나오게 되어 오버플로우가 발생한다. 0으로 표현한다.
            if (OperandB > OperandA) 
            begin
               Result <= 16'b0000_0000_0000_0000;
            end
            else
            begin
               Result <= (OperandA - OperandB);
            end
         end
         // 나눗셈
         div:
         begin
            // 0으로 나누는 경우 전부 0으로 결과 출력
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
         // 곱셈
         mul:
         begin
            Result <= (OperandA * OperandB);
         end
         // OR 연산
         or_:
         begin
            Result <= (OperandA | OperandB);
         end
         // NOT 연산
         not_:
         begin
            Result <= (~OperandA);
         end
         // Left Shift 연산
         shift_l:
         begin
            shiftTempR <= {8'd0, OperandA};
            Result <= (shiftTempR << OperandB);
         end
         // Right Shift 연산
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
