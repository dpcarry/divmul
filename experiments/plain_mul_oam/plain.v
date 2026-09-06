// Direct full-precision midpoint plane. No residual recoding, bias, or
// intermediate truncation. Only the final FP32 fraction is truncated.
module plain_mul_plane #(parameter integer LEVEL=0)(
    input wire [31:0] x,y, output wire [31:0] result
);
    wire [22:0] fx,fy;
    wire [23:0] mx={1'b1,fx}, my={1'b1,fy};
    wire [2:0] ix=fx >> (23-LEVEL), iy=fy >> (23-LEVEL);
    wire [4:0] kx=16+(1 << (3-LEVEL))+(ix << (4-LEVEL));
    wire [4:0] ky=16+(1 << (3-LEVEL))+(iy << (4-LEVEL));
    wire [28:0] px=mx*ky, py=my*kx;
    wire [9:0] kk=kx*ky;
    // All three terms share scale 2^31; products retain every input bit.
    wire [33:0] wn={1'b0,px,4'b0}+{1'b0,py,4'b0}-{1'b0,kk,23'b0};
    reg [22:0] fraction;
    reg signed [2:0] adjust;
    always @* begin
        if(wn[32]) begin fraction=wn[31:9]; adjust=3'sd1; end
        else if(wn[31]) begin fraction=wn[30:8]; adjust=3'sd0; end
        else begin fraction=wn[29:7]; adjust=-3'sd1; end
    end
    fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b0),
        .fraction_x(fx),.fraction_y(fy),.result_fraction(fraction),
        .exponent_adjust(adjust),.result(result));
endmodule
