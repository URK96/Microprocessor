`timescale 1ns / 1ps

module SegmentTimer(
    input CLK,
    input [15:0] Result,
    output [7:0] Segment7_0, // 오른쪽 Segment 모듈용
    output [7:0] Segment7_1 // 왼쪽 Segment 모듈용
    );

    // 각 Segment의 BCD 값
    wire [3:0] digit_1000, digit_100, digit_10, digit_1;
    // 표시할 Segment 값
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
    // Segment CAT 신호용
    assign Segment7_0[0] = CLK ? 1'b1 : 1'b0;
    assign Segment7_1[0] = CLK ? 1'b1 : 1'b0;

    BCD7Segment seg1000to100(digit_1000_100, seg_1000_100);
    BCD7Segment seg10to1(digit_10_1, seg_10_1);

endmodule
