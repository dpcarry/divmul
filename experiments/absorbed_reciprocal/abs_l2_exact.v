module abs_l2_exact(input [31:0] x,y, output [31:0] result);
wire [22:0] fx,fy;
wire signed [4:0] rx={~fx[20],fx[19:16]}, ry={~fy[20],fy[19:16]};
reg signed [12:0] a;
reg signed [13:0] b;
reg signed [20:0] c;
always @* begin
case ({fy[22:21],fx[22:21]})
4'd0: begin a=13'sd3654; b=14'sd3654; c=21'sd526176; end
4'd1: begin a=13'sd3654; b=14'sd4466; c=21'sd643104; end
4'd2: begin a=13'sd3654; b=14'sd5278; c=21'sd760032; end
4'd3: begin a=13'sd3654; b=14'sd6090; c=21'sd876960; end
4'd4: begin a=13'sd2992; b=14'sd2448; c=21'sd430848; end
4'd5: begin a=13'sd2992; b=14'sd2992; c=21'sd526592; end
4'd6: begin a=13'sd2992; b=14'sd3536; c=21'sd622336; end
4'd7: begin a=13'sd2992; b=14'sd4080; c=21'sd718080; end
4'd8: begin a=13'sd2522; b=14'sd1746; c=21'sd363168; end
4'd9: begin a=13'sd2522; b=14'sd2134; c=21'sd443872; end
4'd10: begin a=13'sd2522; b=14'sd2522; c=21'sd524576; end
4'd11: begin a=13'sd2522; b=14'sd2910; c=21'sd605280; end
4'd12: begin a=13'sd2190; b=14'sd1314; c=21'sd315360; end
4'd13: begin a=13'sd2190; b=14'sd1606; c=21'sd385440; end
4'd14: begin a=13'sd2190; b=14'sd1898; c=21'sd455520; end
4'd15: begin a=13'sd2190; b=14'sd2190; c=21'sd525600; end
default: begin a=0; b=0; c=0; end
endcase
end
wire signed [18:0] px=rx*a, py=ry*b;
wire signed [22:0] ex=px, ey=py, ec=c;
wire signed [22:0] p=ec+(ex << 0)-(ey << 0);
wire signed [28:0] p_extended=p;
wire signed [28:0] value=p_extended <<< 4;
reg [22:0] frac;
reg signed [2:0] adjust;
always @* begin
if (value[23]) begin frac=value[22:0]; adjust=0; end
else if (value[22]) begin frac={value[21:0],1'b0}; adjust=-3'sd1; end
else begin frac={value[20:0],2'b0}; adjust=-3'sd2; end
end
fp32_normal_finite_wrapper wrapper(.x(x),.y(y),.divide_mode(1'b1),
.fraction_x(fx),.fraction_y(fy),.result_fraction(frac),.exponent_adjust(adjust),.result(result));
endmodule
