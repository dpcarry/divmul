module LOD
#(
    parameter width=23//length
)
`define w(x) [(x)-1:0]
(
    input  `w(width) in,
    output `w(width) out
);
    //leading one detector, from AM-lib
    //only keep the highest one bit
    // method explanation: https://www.edaboard.com/threads/solutions-for-leading-one-detector.201958/post-850697
    genvar i;
    generate
        wire `w(width) in_r;
        for (i=0; i<width; i=i+1) begin: ReverseIn
            assign in_r[i] = in[width-1-i];
        end
    endgenerate

    wire [width-1:0] in_r_change;
    wire [width-1:0] out_r;
    assign in_r_change  = (~in_r) + 1;
    assign out_r = in_r & in_r_change;

    genvar j;
    generate
        for (j=0; j<width; j=j+1) begin: ReverseResult
            assign out[j] = out_r[width-1-j];
        end
    endgenerate

endmodule

