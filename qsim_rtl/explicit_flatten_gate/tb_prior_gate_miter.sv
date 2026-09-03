`timescale 1ns/1ps

module tb_prior_gate_miter;
    parameter integer CASES = 10000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] rtl_out;
    wire [31:0] gate_out;
    integer i;
    integer seed;
    integer mismatches;

`ifdef DESIGN_QIAD
    qiad_prior_fp32_paceio rtl_dut (.x(x), .y(y), .out(rtl_out));
    qiad_prior_fp32_paceio_gate gate_dut (.x(x), .y(y), .out(gate_out));
`elsif DESIGN_FANZED
    fanzed_prior_fp32_paceio rtl_dut (.x(x), .y(y), .out(rtl_out));
    fanzed_prior_fp32_paceio_gate gate_dut (.x(x), .y(y), .out(gate_out));
`elsif DESIGN_TRUNCAPP
    truncapp_fp32_paceio rtl_dut (.x(x), .y(y), .out(rtl_out));
    truncapp_fp32_paceio_gate gate_dut (.x(x), .y(y), .out(gate_out));
`elsif DESIGN_LEAD
    lead_fp32_paceio_comb rtl_dut (.x(x), .y(y), .out(rtl_out));
    lead_fp32_paceio_comb_gate gate_dut (.x(x), .y(y), .out(gate_out));
`else
    initial $fatal(1, "A DESIGN_* macro is required");
`endif

    initial begin
        seed = 6321;
        mismatches = 0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        #1;
        for (i = 0; i < CASES; i = i + 1) begin
            x = 32'h3f800000 | ($random(seed) & 32'h007fffff);
            y = 32'h3f800000 | ($random(seed) & 32'h007fffff);
            #1;
            if (gate_out !== rtl_out) begin
                if (mismatches < 10)
                    $display("Mismatch i=%0d x=%h y=%h rtl=%h gate=%h",
                             i, x, y, rtl_out, gate_out);
                mismatches = mismatches + 1;
            end
        end
        if (mismatches != 0)
            $fatal(1, "Prior-work flattened gate mismatch: %0d/%0d",
                   mismatches, CASES);
        $display("PRIOR_FLATTEN_GATE_MITER PASS: %0d vectors", CASES);
        $finish;
    end
endmodule
