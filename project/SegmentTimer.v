`timescale 1ns / 1ps

module SegmentTimer(
    input CLK,
    input [15:0] Result,
    output [7:0] Segment7_0,
    output [7:0] Segment7_1
    );

    reg [15:0] timer;

    wire [3:0] digit_1000, digit_100, digit_10, digit_1;
    wire [6:0] seg_1000_100, seg_10_1;

    wire [3:0] digit_1000_100, digit_10_1;

    assign digit_1000 = Result[15:12];
    assign digit_100 = Result[11:8];
    assign digit_10 = Result[7:4];
    assign digit_1 = Result[3:0];
    
    assign digit_1000_100 = CLK ? digit_1000 : digit_100;
    assign digit_10_1 = CLK ? digit_10 : digit_1;

    assign Segment7_0[7:1] = seg_10_1;
    assign Segment7_1[7:1] = seg_1000_100;
    assign Segment7_0[0] = CLK ? 1'b1 : 1'b0;
    assign Segment7_1[0] = CLK ? 1'b1 : 1'b0;

    always
    begin
        timer <= Result;
    end

    BCD7Segment seg1000to100(digit_1000_100, seg_1000_100);
    BCD7Segment seg10to1(digit_10_1, seg_10_1);

endmodule
