module unified_div_drop_l2_shared_core(input [22:0] fx,fy, input divide_mode, output signed [28:0] value);
wire signed [4:0] rx={~fx[20],fx[19:16]}, ry={~fy[20],fy[19:16]};
reg signed [6:0] a;
reg signed [6:0] b;
reg signed [14:0] t;
always @* begin
case ({divide_mode,fy[22:21],fx[22:21]})
5'd0: begin a=7'sd36; b=7'sd36; t=15'sd5220; end
5'd1: begin a=7'sd36; b=7'sd44; t=15'sd6376; end
5'd2: begin a=7'sd36; b=7'sd52; t=15'sd7532; end
5'd3: begin a=7'sd36; b=7'sd60; t=15'sd8688; end
5'd4: begin a=7'sd44; b=7'sd36; t=15'sd6376; end
5'd5: begin a=7'sd44; b=7'sd44; t=15'sd7788; end
5'd6: begin a=7'sd44; b=7'sd52; t=15'sd9200; end
5'd7: begin a=7'sd44; b=7'sd60; t=15'sd10612; end
5'd8: begin a=7'sd52; b=7'sd36; t=15'sd7532; end
5'd9: begin a=7'sd52; b=7'sd44; t=15'sd9200; end
5'd10: begin a=7'sd52; b=7'sd52; t=15'sd10868; end
5'd11: begin a=7'sd52; b=7'sd60; t=15'sd12536; end
5'd12: begin a=7'sd60; b=7'sd36; t=15'sd8688; end
5'd13: begin a=7'sd60; b=7'sd44; t=15'sd10612; end
5'd14: begin a=7'sd60; b=7'sd52; t=15'sd12536; end
5'd15: begin a=7'sd60; b=7'sd60; t=15'sd14460; end
5'd16: begin a=7'sd29; b=7'sd29; t=15'sd4111; end
5'd17: begin a=7'sd29; b=7'sd35; t=15'sd5024; end
5'd18: begin a=7'sd29; b=7'sd41; t=15'sd5938; end
5'd19: begin a=7'sd29; b=7'sd48; t=15'sd6851; end
5'd20: begin a=7'sd23; b=7'sd19; t=15'sd3366; end
5'd21: begin a=7'sd23; b=7'sd23; t=15'sd4114; end
5'd22: begin a=7'sd23; b=7'sd28; t=15'sd4862; end
5'd23: begin a=7'sd23; b=7'sd32; t=15'sd5610; end
5'd24: begin a=7'sd20; b=7'sd14; t=15'sd2837; end
5'd25: begin a=7'sd20; b=7'sd17; t=15'sd3468; end
5'd26: begin a=7'sd20; b=7'sd20; t=15'sd4098; end
5'd27: begin a=7'sd20; b=7'sd23; t=15'sd4729; end
5'd28: begin a=7'sd17; b=7'sd10; t=15'sd2464; end
5'd29: begin a=7'sd17; b=7'sd13; t=15'sd3011; end
5'd30: begin a=7'sd17; b=7'sd15; t=15'sd3559; end
5'd31: begin a=7'sd17; b=7'sd17; t=15'sd4106; end
default: begin a=0; b=0; t=0; end
endcase
end

wire signed [11:0] px=rx*a, py=ry*b;
wire signed [16:0] ex=px,ey=py,ec=t;
wire signed [16:0] signed_y=divide_mode ? -ey : ey;
wire signed [16:0] p=ec+ex+signed_y;
wire signed [28:0] extended=p;
assign value=extended <<< 11;
endmodule
module unified_div_drop_l2_shared(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
unified_div_drop_l2_shared_core shared_core(fx,fy,divide_mode,core_value);
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
