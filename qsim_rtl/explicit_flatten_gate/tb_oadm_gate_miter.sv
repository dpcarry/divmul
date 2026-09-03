`timescale 1ns/1ps

module tb_oadm_gate_miter;
    parameter integer CASES = 10000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] rtl_out;
    wire [31:0] gate_out;
    integer i;
    integer seed;
    integer mismatches;

`ifdef OADM_L0_INDEX
    oadm_l0_centered_index_div_paceio_opt rtl_dut (.x(x), .y(y), .result(rtl_out));
    oadm_l0_centered_index_div_paceio_opt_gate gate_dut (.x(x), .y(y), .result(gate_out));
`elsif OADM_L0
    oadm_fixed_l0_div_paceio_opt rtl_dut (.x(x), .y(y), .result(rtl_out));
    oadm_fixed_l0_div_paceio_opt_gate gate_dut (.x(x), .y(y), .result(gate_out));
`elsif OADM_L1
    oadm_fixed_l1_div_paceio_opt rtl_dut (.x(x), .y(y), .result(rtl_out));
    oadm_fixed_l1_div_paceio_opt_gate gate_dut (.x(x), .y(y), .result(gate_out));
`elsif OADM_L2
    oadm_fixed_l2_div_paceio_opt rtl_dut (.x(x), .y(y), .result(rtl_out));
    oadm_fixed_l2_div_paceio_opt_gate gate_dut (.x(x), .y(y), .result(gate_out));
`elsif OADM_L3
    oadm_fixed_l3_div_opt_centered_paceio rtl_dut (.x(x), .y(y), .result(rtl_out));
    oadm_fixed_l3_div_opt_centered_paceio_gate gate_dut (.x(x), .y(y), .result(gate_out));
`else
    initial $fatal(1, "An OADM_L* macro is required");
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
            $fatal(1, "OADM flattened gate mismatch: %0d/%0d",
                   mismatches, CASES);
        $display("OADM_FLATTEN_GATE_MITER PASS: %0d vectors", CASES);
        $finish;
    end
endmodule
