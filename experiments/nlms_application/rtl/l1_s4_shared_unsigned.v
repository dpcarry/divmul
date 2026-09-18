module l1_s4_shared_unsigned_core(input [22:0] fx,fy, input divide_mode, output signed [28:0] value);
wire [5:0] rx=fx[21:16], ry=fy[21:16] ^ {6{divide_mode}};
reg [5:0] a;
reg [5:0] b;
reg [13:0] t;
always @* begin
case ({divide_mode,fy[22:22],fx[22:22]})
3'd0: begin a=6'd20; b=6'd20; t=14'd1940; end
3'd1: begin a=6'd20; b=6'd28; t=14'd2968; end
3'd2: begin a=6'd28; b=6'd20; t=14'd2968; end
3'd3: begin a=6'd28; b=6'd28; t=14'd4508; end
3'd4: begin a=6'd13; b=6'd13; t=14'd1256; end
3'd5: begin a=6'd13; b=6'd18; t=14'd1931; end
3'd6: begin a=6'd9; b=6'd7; t=14'd965; end
3'd7: begin a=6'd9; b=6'd9; t=14'd1491; end
default: begin a=0; b=0; t=0; end
endcase
end

wire [11:0] px=rx*a, py=ry*b;
wire [15:0] ex=px,ey=py,ec=t;
wire [15:0] p=ec+ex+ey;
wire signed [28:0] extended=p;
assign value=extended <<< 12;
endmodule
module l1_s4_shared_unsigned(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
l1_s4_shared_unsigned_core shared_core(fx,fy,divide_mode,core_value);
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
