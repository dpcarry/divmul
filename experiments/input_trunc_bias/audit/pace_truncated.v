module audit_pace_l1_b5(input wire [31:0] x,y, output wire [31:0] result);
    wire [4:0] fx,fy,fz;
    wire shift;
    Mantissa_Div_L1 #(.MANTISSA_WIDTH(5)) core(fx,fy,fz,shift);
    FP_DIV_WRAPPER_32 #(.width_trunc(18)) wrapper(
        .x(x),.y(y),.out(result),.mantissa_x(fx),.mantissa_y(fy),
        .mantissa_out(fz),.shift(~shift));
endmodule

module audit_pace_l3_b6(input wire [31:0] x,y, output wire [31:0] result);
    wire [5:0] fx,fy,fz;
    wire shift;
    Mantissa_Div_L3 #(.MANTISSA_WIDTH(6)) core(fx,fy,fz,shift);
    FP_DIV_WRAPPER_32 #(.width_trunc(17)) wrapper(
        .x(x),.y(y),.out(result),.mantissa_x(fx),.mantissa_y(fy),
        .mantissa_out(fz),.shift(~shift));
endmodule
