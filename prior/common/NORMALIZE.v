module NORMALIZE
#(
	parameter width=23,
	parameter log_width=$clog2(width)
)
`define w(x) [(x)-1:0]
(
	input `w(width) x,
	output `w(width) out,
	output `w(log_width) num0
);
	ZERO_CNT#(.width(width)) lod(.x(x),.num0(num0));

	SHIFTER#(.width(width)) shifter(
		.x        ( x        ),
		.shift    ( num0     ),
		.left     (1'b1      ),
		.out      ( out      )
	);

endmodule
