
module top
#(
	parameter width=32,
	parameter width_frac = 23,
	parameter width_trunc = 0,
	parameter width_mantissa=width_frac-width_trunc
)
`define w(x) [(x)-1:0]
(
    input  `w(width) x,
    input  `w(width) y,
    output `w(width) out
);
	wire `w(width_mantissa) m_x,m_y,m_out;
	wire `w(1) shift;
	Mantissa_Div_L3#(.MANTISSA_WIDTH(width_mantissa)) u_mantissa(.Mantissa_X(m_x),.Mantissa_Y(m_y),.Mantissa_Out(m_out),.Shift(shift));
	FP_DIV_WRAPPER_32#(.width(width),.width_frac(width_frac),.width_trunc(width_trunc)) u_fp(.x(x),.y(y),.out(out),.mantissa_x(m_x),.mantissa_y(m_y),.mantissa_out(m_out),.shift(~shift));
endmodule

