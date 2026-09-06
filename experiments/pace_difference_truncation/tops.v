module pace_z_l1_d0(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l1 #(.MANTISSA_WIDTH(23),.DROP(0)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l1_d4(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l1 #(.MANTISSA_WIDTH(23),.DROP(4)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l1_d8(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l1 #(.MANTISSA_WIDTH(23),.DROP(8)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l1_d12(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l1 #(.MANTISSA_WIDTH(23),.DROP(12)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l1_d14(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l1 #(.MANTISSA_WIDTH(23),.DROP(14)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l1_d15(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l1 #(.MANTISSA_WIDTH(23),.DROP(15)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l1_d16(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l1 #(.MANTISSA_WIDTH(23),.DROP(16)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l1_d17(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l1 #(.MANTISSA_WIDTH(23),.DROP(17)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l1_d18(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l1 #(.MANTISSA_WIDTH(23),.DROP(18)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l2_d0(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l2 #(.MANTISSA_WIDTH(23),.DROP(0)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l2_d4(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l2 #(.MANTISSA_WIDTH(23),.DROP(4)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l2_d8(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l2 #(.MANTISSA_WIDTH(23),.DROP(8)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l2_d12(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l2 #(.MANTISSA_WIDTH(23),.DROP(12)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l2_d14(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l2 #(.MANTISSA_WIDTH(23),.DROP(14)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l2_d15(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l2 #(.MANTISSA_WIDTH(23),.DROP(15)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l2_d16(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l2 #(.MANTISSA_WIDTH(23),.DROP(16)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l2_d17(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l2 #(.MANTISSA_WIDTH(23),.DROP(17)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l2_d18(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l2 #(.MANTISSA_WIDTH(23),.DROP(18)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l3_d0(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l3 #(.MANTISSA_WIDTH(23),.DROP(0)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l3_d4(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l3 #(.MANTISSA_WIDTH(23),.DROP(4)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l3_d8(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l3 #(.MANTISSA_WIDTH(23),.DROP(8)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l3_d12(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l3 #(.MANTISSA_WIDTH(23),.DROP(12)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l3_d14(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l3 #(.MANTISSA_WIDTH(23),.DROP(14)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l3_d15(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l3 #(.MANTISSA_WIDTH(23),.DROP(15)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l3_d16(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l3 #(.MANTISSA_WIDTH(23),.DROP(16)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l3_d17(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l3 #(.MANTISSA_WIDTH(23),.DROP(17)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l3_d18(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l3 #(.MANTISSA_WIDTH(23),.DROP(18)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l4_d0(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l4 #(.MANTISSA_WIDTH(23),.DROP(0)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l4_d4(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l4 #(.MANTISSA_WIDTH(23),.DROP(4)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l4_d8(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l4 #(.MANTISSA_WIDTH(23),.DROP(8)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l4_d12(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l4 #(.MANTISSA_WIDTH(23),.DROP(12)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l4_d14(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l4 #(.MANTISSA_WIDTH(23),.DROP(14)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l4_d15(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l4 #(.MANTISSA_WIDTH(23),.DROP(15)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l4_d16(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l4 #(.MANTISSA_WIDTH(23),.DROP(16)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l4_d17(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l4 #(.MANTISSA_WIDTH(23),.DROP(17)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule

module pace_z_l4_d18(input wire [31:0] x,y, output wire [31:0] out);
wire [22:0] mx,my,mz;
wire shift;
pace_ztrunc_l4 #(.MANTISSA_WIDTH(23),.DROP(18)) core(mx,my,mz,shift);
FP_DIV_WRAPPER_32 wrapper(.x(x),.y(y),.out(out),.mantissa_x(mx),.mantissa_y(my),
    .mantissa_out(mz),.shift(~shift));
endmodule
