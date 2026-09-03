`timescale 1ns/1ps

module tb_l2_specialized_gate_miter;
    parameter integer CASES = 100000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] reference_result;
    wire [31:0] gate_result;
    integer i;
    integer seed;
    integer mismatches;

    oadm_fixed_l2_div_paceio_opt reference (
        .x(x), .y(y), .result(reference_result)
    );
`ifdef REDUCED_SIGNED_SCALE
    oadm_fixed_l2_div_specialized_reduced_signed_scale_paceio_gate gate_dut (
        .x(x), .y(y), .result(gate_result)
    );
`elsif REDUCED_SCALE
    oadm_fixed_l2_div_specialized_reduced_scale_paceio_gate gate_dut (
        .x(x), .y(y), .result(gate_result)
    );
`else
    oadm_fixed_l2_div_specialized_paceio_gate gate_dut (
        .x(x), .y(y), .result(gate_result)
    );
`endif

    task check_outputs;
        begin
            #1;
            if (gate_result !== reference_result) begin
                if (mismatches < 10)
                    $display("MISMATCH i=%0d x=%h y=%h ref=%h gate=%h",
                        i, x, y, reference_result, gate_result);
                mismatches = mismatches + 1;
            end
        end
    endtask

    initial begin
        seed = 6321;
        mismatches = 0;

        x = 32'h3f800000;
        y = 32'h3f800000;
        check_outputs();
        x = 32'h3fffffff;
        y = 32'h3f800000;
        check_outputs();
        x = 32'h3f800000;
        y = 32'h3fffffff;
        check_outputs();

        for (i = 0; i < CASES; i = i + 1) begin
            x = {$random(seed) & 1'b1,
                 (($random(seed) & 8'hfd) + 1'b1),
                 $random(seed) & 23'h7fffff};
            y = {$random(seed) & 1'b1,
                 (($random(seed) & 8'hfd) + 1'b1),
                 $random(seed) & 23'h7fffff};
            check_outputs();
        end

        if (mismatches != 0)
            $fatal(1, "L2 specialized gate mismatch: %0d", mismatches);
        $display("L2_SPECIALIZED_GATE_MITER PASS: %0d vectors", CASES + 3);
        $finish;
    end
endmodule
