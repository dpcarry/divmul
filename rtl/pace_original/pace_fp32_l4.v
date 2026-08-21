module pace_fp32_l4 (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] out
);
    wire [22:0] mantissa_x;
    wire [22:0] mantissa_y;
    wire [22:0] mantissa_out;
    wire shift;

    Mantissa_Div_L4_Kec #(.MANTISSA_WIDTH(23)) mantissa_div (
        .Mantissa_X(mantissa_x),
        .Mantissa_Y(mantissa_y),
        .Mantissa_Out(mantissa_out),
        .Shift(shift)
    );

    FP_DIV_WRAPPER_32 fp_wrapper (
        .x(x),
        .y(y),
        .out(out),
        .mantissa_x(mantissa_x),
        .mantissa_y(mantissa_y),
        .mantissa_out(mantissa_out),
        .shift(~shift)
    );
endmodule
