module absdm_l0_separate_div(input [22:0] fx,fy, output signed [28:0] value);
wire signed [4:0] rx={~fx[22],fx[21:18]}, ry={~fy[22],fy[21:18]};
wire signed [7:0] a=8'sd89;
wire signed [7:0] b=8'sd89;
wire signed [13:0] c=14'sd4248;
wire signed [12:0] px=rx*a, py=ry*b;
wire signed [15:0] ex=px, ey=py, ec=c;
wire signed [15:0] p=ec+(ex << 0)-(ey << 0);
wire signed [28:0] p_extended=p;
assign value=p_extended <<< 11;
endmodule
module absdm_l0_separate_mul(input [22:0] fx,fy, output signed [28:0] value);
wire signed [6:0] rx={~fx[22],fx[21:16]}, ry={~fy[22],fy[21:16]};
wire signed [5:0] a=6'sd24;
wire signed [5:0] b=6'sd24;
wire signed [13:0] t=14'sd4632;

wire signed [12:0] px=rx*a, py=ry*b;
wire signed [15:0] ex=px,ey=py,ec=t;
wire signed [15:0] p=ec+ex+ey;
wire signed [28:0] extended=p;
assign value=extended <<< 12;
endmodule
module absdm_l0_separate(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
wire signed [28:0] div_value,mul_value;
absdm_l0_separate_div div_core(fx,fy,div_value);
absdm_l0_separate_mul mul_core(fx,fy,mul_value);
assign core_value=divide_mode ? div_value : mul_value;
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
