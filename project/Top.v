`timescale 1ns / 1ps

module Top(
    input CLK_REF,
    input [3:0] SlideSwitch,
    input [3:0] Button,
    output [7:0] Segment7_0,
    output [7:0] Segment7_1,
    output [3:0] LED
    );

    wire [15:0] Instruction;
    wire [7:0] OperandA, OperandB;
    wire [15:0] Result;
    wire [3:0] State;
    wire [3:0] User_Input0, User_Input1;
    wire CLK_In;
    wire CLK_10M;

    CLK125M_CLK10M convertCLK(CLK_REF, CLK_10M);

    RAM ram(Result, Instruction[4:1], Instruction[15:12], Instruction[11:8], State, Instruction[7:5], CLK_In, Instruction[0], OperandA, OperandB);
    ALU alu(OperandA, OperandB, Instruction[7:5], Result);
    IO io(CLK_10M, Result, State, SlideSwitch, Button, User_Input0, User_Input1, CLK_In, LED, Segment7_0, Segment7_1);
    Control control(CLK_In, User_Input0, User_Input1, Instruction, State);

endmodule
