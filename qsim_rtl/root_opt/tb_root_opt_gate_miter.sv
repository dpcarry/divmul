`timescale 1ns/1ps

module tb_root_opt_gate_miter;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0] level;
    reg divide_mode;
    wire [31:0] runtime_reference;
    wire [31:0] runtime_gate;
    wire [31:0] l2_reference;
    wire [31:0] l2_gate;
    integer seed;
    integer i;
    integer runtime_mismatches;
    integer l2_mismatches;

    oadm_runtime_root_opt runtime_ref (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(runtime_reference)
    );
    oadm_runtime_root_opt_gate runtime_dut (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(runtime_gate)
    );
    oadm_fixed_l2_div_root_opt l2_ref (
        .x(x), .y(y), .result(l2_reference)
    );
    oadm_fixed_l2_div_root_opt_gate l2_dut (
        .x(x), .y(y), .result(l2_gate)
    );

    task check_outputs;
        begin
            #1;
            if (runtime_gate !== runtime_reference) begin
                if (runtime_mismatches < 10)
                    $display("RUNTIME MISMATCH i=%0d mode=%0d level=%0d x=%h y=%h ref=%h gate=%h",
                        i, divide_mode, level, x, y,
                        runtime_reference, runtime_gate);
                runtime_mismatches = runtime_mismatches + 1;
            end
            if (l2_gate !== l2_reference) begin
                if (l2_mismatches < 10)
                    $display("L2 MISMATCH i=%0d x=%h y=%h ref=%h gate=%h",
                        i, x, y, l2_reference, l2_gate);
                l2_mismatches = l2_mismatches + 1;
            end
        end
    endtask

    initial begin
        seed = 6321;
        runtime_mismatches = 0;
        l2_mismatches = 0;
        i = -1;

        x = 32'h3f800000; y = 32'h3f800000;
        level = 2'd0; divide_mode = 1'b0; check_outputs();
        x = 32'h3fffffff; y = 32'h3f800000;
        level = 2'd3; divide_mode = 1'b1; check_outputs();
        x = 32'h00000000; y = 32'h00000000;
        level = 2'd2; divide_mode = 1'b1; check_outputs();
        x = 32'h7f800000; y = 32'h7f800000;
        level = 2'd1; divide_mode = 1'b1; check_outputs();
        x = 32'h7fc00001; y = 32'h3f800000;
        level = 2'd3; divide_mode = 1'b0; check_outputs();

        for (i = 0; i < CASES; i = i + 1) begin
            x = {$random(seed) & 1'b1,
                 (($random(seed) & 8'hfd) + 1'b1),
                 $random(seed) & 23'h7fffff};
            y = {$random(seed) & 1'b1,
                 (($random(seed) & 8'hfd) + 1'b1),
                 $random(seed) & 23'h7fffff};
            level = $random(seed) & 2'b11;
            divide_mode = $random(seed) & 1'b1;
            check_outputs();
        end

        if (runtime_mismatches != 0 || l2_mismatches != 0)
            $fatal(1, "root-opt gate mismatches: runtime=%0d l2=%0d",
                runtime_mismatches, l2_mismatches);
        $display("ROOT_OPT_GATE_MITER PASS: %0d vectors per DUT", CASES + 5);
        $finish;
    end
endmodule
