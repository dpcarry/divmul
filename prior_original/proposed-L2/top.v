`timescale 1ns / 1ps
module top
#(
	parameter width = 32
)
`define w(x) [(x)-1:0]
(
	input `w(width) x,
	input `w(width) y,
	output `w(width) out
);
FP_Div_L2 ul2(
    .X_Input(x),
    .Y_Input(y),
    .Result(out)
    );

endmodule
