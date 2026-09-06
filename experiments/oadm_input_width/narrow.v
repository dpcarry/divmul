module oadm_input_narrow_plane #(
    parameter integer B=8, LEVEL=0, R=18
)(input [B-1:0] x,y, output [24:0] plane_bits);
    localparam integer E = (23-B > R) ? 23-B : R;
    localparam integer U = 23-E;
    localparam integer RW = U-LEVEL;
    localparam integer PW = RW+6;
    localparam integer S = (E-4 < 15) ? E-4 : 15;
    localparam integer SW = 25-S;
    wire [4:0] kx = (16+(1<<(3-LEVEL))) + ((x>>(B-LEVEL))<<(4-LEVEL));
    wire [4:0] ky = (16+(1<<(3-LEVEL))) + ((y>>(B-LEVEL))<<(4-LEVEL));
    // Midpoint subtraction is exact sign-bit recoding of the retained tail.
    wire [RW-1:0] xt = x>>(B-U);
    wire [RW-1:0] yt = y>>(B-U);
    wire signed [RW-1:0] rx = xt ^ (1<<(RW-1));
    wire signed [RW-1:0] ry = yt ^ (1<<(RW-1));
    wire signed [PW-1:0] px = rx * $signed({1'b0,ky});
    wire signed [PW-1:0] py = ry * $signed({1'b0,kx});
    wire [9:0] kk = kx*ky;
    wire signed [SW-1:0] px_wide = px;
    wire signed [SW-1:0] py_wide = py;
    wire [SW-1:0] kk_wide = kk;
    // Only bits [24:WN_DROP] are consumed downstream. Remove exact zero LSBs
    // and unused MSBs while preserving addition modulo 2^25.
    wire [SW-1:0] sum = (kk_wide<<(15-S))
                               + (px_wide<<<(E-4-S)) - (py_wide<<<(E-4-S));
    assign plane_bits = {sum,{S{1'b0}}};
endmodule
