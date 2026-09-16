module unified_mul_drop_l0_shared_core(input [22:0] fx,fy, input divide_mode, output signed [28:0] value);
wire signed [6:0] rx={~fx[22],fx[21:16]}, ry={~fy[22],fy[21:16]};
reg signed [8:0] a;
reg signed [8:0] b;
reg signed [16:0] t;
always @* begin
case (divide_mode)
1'd0: begin a=9'sd192; b=9'sd192; t=17'sd37056; end
1'd1: begin a=9'sd89; b=9'sd89; t=17'sd16992; end
default: begin a=0; b=0; t=0; end
endcase
end

wire signed [15:0] px=rx*a, py=ry*b;
wire signed [18:0] ex=px,ey=py,ec=t;
wire signed [18:0] signed_y=divide_mode ? -ey : ey;
wire signed [18:0] p=ec+ex+signed_y;
wire signed [28:0] extended=p;
assign value=extended <<< 9;
endmodule
module unified_mul_drop_l0_shared(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
unified_mul_drop_l0_shared_core shared_core(fx,fy,divide_mode,core_value);
reg [22:0] normalized_fraction;
reg signed [2:0] exponent_adjust;
always @* begin
if (core_value[24]) begin normalized_fraction=core_value[23:1]; exponent_adjust=3'sd1; end
else if (core_value[23]) begin normalized_fraction=core_value[22:0]; exponent_adjust=3'sd0; end
else if (core_value[22]) begin normalized_fraction={core_value[21:0],1'b0}; exponent_adjust=-3'sd1; end
else begin normalized_fraction={core_value[20:0],2'b0}; exponent_adjust=-3'sd2; end
end
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(divide_mode),
.fraction_x(fx),.fraction_y(fy),.result_fraction(normalized_fraction),
.exponent_adjust(exponent_adjust),.result(result));
endmodule
