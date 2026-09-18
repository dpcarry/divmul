module ur_fp32_l2_unsigned_core(input [22:0] fx,fy, input divide_mode, output signed [28:0] value);
wire [4:0] rx=fx[20:16], ry=fy[20:16] ^ {5{divide_mode}};
reg [6:0] a;
reg [6:0] b;
reg [14:0] t;
always @* begin
case ({divide_mode,fy[22:21],fx[22:21]})
5'd0: begin a=7'd36; b=7'd36; t=15'd4068; end
5'd1: begin a=7'd36; b=7'd44; t=15'd5096; end
5'd2: begin a=7'd36; b=7'd52; t=15'd6124; end
5'd3: begin a=7'd36; b=7'd60; t=15'd7152; end
5'd4: begin a=7'd44; b=7'd36; t=15'd5096; end
5'd5: begin a=7'd44; b=7'd44; t=15'd6380; end
5'd6: begin a=7'd44; b=7'd52; t=15'd7664; end
5'd7: begin a=7'd44; b=7'd60; t=15'd8948; end
5'd8: begin a=7'd52; b=7'd36; t=15'd6124; end
5'd9: begin a=7'd52; b=7'd44; t=15'd7664; end
5'd10: begin a=7'd52; b=7'd52; t=15'd9204; end
5'd11: begin a=7'd52; b=7'd60; t=15'd10744; end
5'd12: begin a=7'd60; b=7'd36; t=15'd7152; end
5'd13: begin a=7'd60; b=7'd44; t=15'd8948; end
5'd14: begin a=7'd60; b=7'd52; t=15'd10744; end
5'd15: begin a=7'd60; b=7'd60; t=15'd12540; end
5'd16: begin a=7'd29; b=7'd29; t=15'd3212; end
5'd17: begin a=7'd29; b=7'd35; t=15'd4035; end
5'd18: begin a=7'd29; b=7'd41; t=15'd4859; end
5'd19: begin a=7'd29; b=7'd48; t=15'd5667; end
5'd20: begin a=7'd23; b=7'd19; t=15'd2713; end
5'd21: begin a=7'd23; b=7'd23; t=15'd3401; end
5'd22: begin a=7'd23; b=7'd28; t=15'd4074; end
5'd23: begin a=7'd23; b=7'd32; t=15'd4762; end
5'd24: begin a=7'd20; b=7'd14; t=15'd2307; end
5'd25: begin a=7'd20; b=7'd17; t=15'd2893; end
5'd26: begin a=7'd20; b=7'd20; t=15'd3478; end
5'd27: begin a=7'd20; b=7'd23; t=15'd4064; end
5'd28: begin a=7'd17; b=7'd10; t=15'd2042; end
5'd29: begin a=7'd17; b=7'd13; t=15'd2544; end
5'd30: begin a=7'd17; b=7'd15; t=15'd3062; end
5'd31: begin a=7'd17; b=7'd17; t=15'd3579; end
default: begin a=0; b=0; t=0; end
endcase
end

wire [11:0] px=rx*a, py=ry*b;
wire [16:0] ex=px,ey=py,ec=t;
wire [16:0] p=ec+ex+ey;
wire signed [28:0] extended=p;
assign value=extended <<< 11;
endmodule
module ur_fp32_l2_unsigned(input [31:0] x,y,input divide_mode,output [31:0] result);
wire [22:0] fx,fy;
wire signed [28:0] core_value;
ur_fp32_l2_unsigned_core shared_core(fx,fy,divide_mode,core_value);
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
