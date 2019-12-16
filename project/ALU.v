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
           overflow <= {1'b0, OperandA} + {1'b0, OperandB};   // 9비트로 확장하여 오버플로우 레지스터에 넣어준다.
            if( overflow[8] == 1 ) //오버플로우의 MSB가 1이면, 8비트를 초과하는 뜻이므로 오버플로우가 발생하는 것이다.
            begin   
               Result <= 16'b0000_0000_0000_0000;	//Result의 값을 0으로 표현해준다.
            end
            else
            begin
               Result <= OperandA + OperandB;	//오버플로우가 아니면, 그대로 더해준다.
            end
         end
         
      sub:
         begin	
            Result <= (OperandA - OperandB);					
            if(OperandB > OperandA) Result <= 16'b0000_0000_0000_0000;
				//OperandB가 OperandA보다 크면, 음수가 나오게 되어 오버플로우가 발생한다. 0으로 표현한다.
         end

      div:	//나눗셈, 기본 동작 외의 오버플로우와 Nan 등은 고려하지 않은 상태
         begin 
				Result[7:0] <= (OperandA / OperandB);
				Result[15:8] <= (OperandA % OperandB);
         end

      mul:	//곱셈
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
				//Shift를 할 때마다 자동적으로 shift 된 부분은 0으로 채워진다.
         end

      shift_r:
         begin 
            Result <= (OperandA >> OperandB);
				//shift를 할 때마다 자동적으로 shift 된 부분은 0으로 채워진다.
         end
			
		default:
			begin
				Result <= 16'b0000_0000_0000_0000;
			end
      endcase
   end


endmodule
