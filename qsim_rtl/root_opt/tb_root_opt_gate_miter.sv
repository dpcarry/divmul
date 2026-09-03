`timescale 1ns/1ps

module tb_root_opt_gate_miter;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0] level;
    reg divide_mode;
    wire [31:0] runtime_reference;
    wire [31:0] runtime_gate;
    wire [31:0] fixed_reference [0:3];
    wire [31:0] fixed_gate [0:3];
    integer seed;
    integer i;
    integer runtime_mismatches;
    integer fixed_mismatches [0:3];
    integer fixed_level;

    oadm_runtime_root_opt runtime_ref (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(runtime_reference)
    );
    oadm_runtime_root_opt_gate runtime_dut (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(runtime_gate)
    );
    oadm_fixed_l0_div_root_opt fixed_l0_ref (
        .x(x), .y(y), .result(fixed_reference[0]));
    oadm_fixed_l1_div_root_opt fixed_l1_ref (
        .x(x), .y(y), .result(fixed_reference[1]));
    oadm_fixed_l2_div_root_opt fixed_l2_ref (
        .x(x), .y(y), .result(fixed_reference[2]));
    oadm_fixed_l3_div_root_opt fixed_l3_ref (
        .x(x), .y(y), .result(fixed_reference[3]));
    oadm_fixed_l0_div_root_opt_gate fixed_l0_dut (
        .x(x), .y(y), .result(fixed_gate[0]));
    oadm_fixed_l1_div_root_opt_gate fixed_l1_dut (
        .x(x), .y(y), .result(fixed_gate[1]));
    oadm_fixed_l2_div_root_opt_gate fixed_l2_dut (
        .x(x), .y(y), .result(fixed_gate[2]));
    oadm_fixed_l3_div_root_opt_gate fixed_l3_dut (
        .x(x), .y(y), .result(fixed_gate[3]));

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
            for (fixed_level = 0; fixed_level < 4;
                 fixed_level = fixed_level + 1)
                if (fixed_gate[fixed_level] !== fixed_reference[fixed_level]) begin
                    if (fixed_mismatches[fixed_level] < 10)
                        $display("L%0d MISMATCH i=%0d x=%h y=%h ref=%h gate=%h",
                            fixed_level, i, x, y,
                            fixed_reference[fixed_level], fixed_gate[fixed_level]);
                    fixed_mismatches[fixed_level] =
                        fixed_mismatches[fixed_level] + 1;
                end
        end
    endtask

    initial begin
        seed = 6321;
        runtime_mismatches = 0;
        for (fixed_level = 0; fixed_level < 4;
             fixed_level = fixed_level + 1)
            fixed_mismatches[fixed_level] = 0;
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

        if (runtime_mismatches != 0 || fixed_mismatches[0] != 0
                || fixed_mismatches[1] != 0 || fixed_mismatches[2] != 0
                || fixed_mismatches[3] != 0)
            $fatal(1,
                "root-opt gate mismatches: runtime=%0d fixed=%0d/%0d/%0d/%0d",
                runtime_mismatches, fixed_mismatches[0], fixed_mismatches[1],
                fixed_mismatches[2], fixed_mismatches[3]);
        $display("ROOT_OPT_GATE_MITER PASS: %0d vectors per DUT", CASES + 5);
        $finish;
    end
endmodule
