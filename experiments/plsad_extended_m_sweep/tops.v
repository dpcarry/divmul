module plsad_m10_fp32_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] out
);
    plsad_fp32_paceio #(.EXACT_MSB_BITS(10)) impl (.x(x), .y(y), .out(out));
endmodule

module plsad_m12_fp32_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] out
);
    plsad_fp32_paceio #(.EXACT_MSB_BITS(12)) impl (.x(x), .y(y), .out(out));
endmodule

module plsad_m15_fp32_paceio (
    input wire [31:0] x, input wire [31:0] y, output wire [31:0] out
);
    plsad_fp32_paceio #(.EXACT_MSB_BITS(15)) impl (.x(x), .y(y), .out(out));
endmodule
