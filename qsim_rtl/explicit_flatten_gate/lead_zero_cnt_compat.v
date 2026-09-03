module ZERO_CNT #(
    parameter width = 23,
    parameter log_width = $clog2(width)
) (
    input wire [width-1:0] x,
    output wire [log_width-1:0] num0
);
    wire [width-1:0] leading_one;
    LOD #(.width(width)) u_lod (.in(x), .out(leading_one));
    LOD_ENC #(.width(width)) u_enc (.l_one(leading_one), .num0(num0));
endmodule
