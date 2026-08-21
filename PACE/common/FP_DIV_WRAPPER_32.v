module FP_DIV_WRAPPER_32
#(
    parameter width      = 32,
    parameter width_frac = 23,
    parameter width_exp  = width-width_frac-1,//1 for sign bit
    parameter width_trunc= 0,// trunc LSB bits, so actual mantissa width=width_frac-trunc
    parameter width_mantissa=width_frac-width_trunc,
    parameter exp_bias   = (1<<(width_exp-1))-1,
    parameter width_shift = 1
)
`define w(x) [(x)-1:0]
(
    //float IO interface
    //direction: high(width-1) -> sign exp frac -> low(0)
    input  `w(width) x,
    input  `w(width) y,
    output `w(width) out,

	//mantissa div port, note the hidden 1 is also hidden
	output `w(width_mantissa) mantissa_x,
	output `w(width_mantissa) mantissa_y,
	input  `w(width_mantissa) mantissa_out,
	input  `w(width_shift)shift //  [1,2) / [1,2) -> (0.5,2), if ans<1, an addition shift left is required, meanwhile exp-=1
);
    //unpack input data
    assign             mantissa_x = x[width_frac-1 -: width_mantissa];//width_mantissa MSB bits of frac part
    assign             mantissa_y = y[width_frac-1 -: width_mantissa];
    wire `w(width_exp) exp_x       = x[width_frac +: width_exp];
    wire `w(width_exp) exp_y       = y[width_frac +: width_exp];
    wire               sign_x      = x[width-1];
    wire               sign_y      = y[width-1];

    // output generate
	//sign
    wire sign_out=sign_x ^ sign_y;
	//exp
    reg `w(width_exp) exp_out;
    //{exp_bias[exp_bias-1:1], ~shift} <=> exp_bias - shift
    always @(*) begin
        if(width_shift==1) //normal
        /* verilator lint_off WIDTHTRUNC */
            exp_out = exp_x - exp_y + {exp_bias[width_exp-1:1], ~shift}; 
        /* verilator lint_on WIDTHTRUNC */
        else //special case, shift more than one bit, e.g. FaNZeD
            exp_out = exp_x - exp_y + exp_bias - {{(width_exp-width_shift){1'b0}},shift};
    end
    //mantissa
	//mantissa_out generated through outer mantissa divider
    //the truncated bits set to 0
    wire `w(width_frac) frac_out={mantissa_out,{(width_trunc){1'b0}}};
    //repack output data
    assign out = {sign_out, exp_out, frac_out};
endmodule

