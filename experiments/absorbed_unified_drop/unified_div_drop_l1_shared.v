module unified_div_drop_l1_shared_core(input [22:0] fx,fy, input divide_mode, output signed [28:0] value);
wire signed [5:0] rx={~fx[21],fx[20:16]}, ry={~fy[21],fy[20:16]};
reg signed [7:0] a;
reg signed [7:0] b;
reg signed [15:0] t;
always @* begin
case ({divide_mode,fy[22:22],fx[22:22]})
3'd0: begin a=8'sd80; b=8'sd80; t=16'sd12880; end
3'd1: begin a=8'sd80; b=8'sd112; t=16'sd18016; end
3'd2: begin a=8'sd112; b=8'sd80; t=16'sd18016; end
3'd3: begin a=8'sd112; b=8'sd112; t=16'sd25200; end
3'd4: begin a=8'sd52; b=8'sd52; t=16'sd8300; end
3'd5: begin a=8'sd52; b=8'sd73; t=16'sd11620; end
3'd6: begin a=8'sd37; b=8'sd26; t=16'sd5880; end
3'd7: begin a=8'sd37; b=8'sd37; t=16'sd8232; end
default: begin a=0; b=0; t=0; end
endcase
end

wire signed [13:0] px=rx*a, py=ry*b;
wire signed [17:0] ex=px,ey=py,ec=t;
wire signed [17:0] signed_y=divide_mode ? -ey : ey;
wire signed [17:0] p=ec+ex+signed_y;
wire signed [28:0] extended=p;
assign value=extended <<< 10;
endmodule
module unified_div_drop_l1_shared(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
unified_div_drop_l1_shared_core shared_core(fx,fy,divide_mode,core_value);
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
