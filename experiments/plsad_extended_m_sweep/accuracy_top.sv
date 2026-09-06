module plsad_extended_m_accuracy_top (
    input  wire [31:0] x,
    input  wire [31:0] y,
    output wire [31:0] m8_out,
    output wire [31:0] m10_out,
    output wire [31:0] m12_out,
    output wire [31:0] m15_out
);
    plsad_m8_fp32_paceio m8 (.x(x), .y(y), .out(m8_out));
    plsad_m10_fp32_paceio m10 (.x(x), .y(y), .out(m10_out));
    plsad_m12_fp32_paceio m12 (.x(x), .y(y), .out(m12_out));
    plsad_m15_fp32_paceio m15 (.x(x), .y(y), .out(m15_out));
endmodule
