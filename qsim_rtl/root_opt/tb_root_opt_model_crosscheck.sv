`timescale 1ns/1ps

module tb_root_opt_model_crosscheck;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0] level;
    reg divide_mode;
    reg [31:0] expected_runtime;
    reg [31:0] expected_fixed [0:3];
    wire [31:0] runtime_result;
    wire [31:0] fixed_result [0:3];
    integer input_file;
    integer fields;
    integer cases;
    integer mismatches;

    oadm_runtime_root_opt runtime_dut (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(runtime_result)
    );
    oadm_fixed_l0_div_root_opt fixed_l0 (
        .x(x), .y(y), .result(fixed_result[0]));
    oadm_fixed_l1_div_root_opt fixed_l1 (
        .x(x), .y(y), .result(fixed_result[1]));
    oadm_fixed_l2_div_root_opt fixed_l2 (
        .x(x), .y(y), .result(fixed_result[2]));
    oadm_fixed_l3_div_root_opt fixed_l3 (
        .x(x), .y(y), .result(fixed_result[3]));

    initial begin
        cases = 0;
        mismatches = 0;
        input_file = $fopen("root_opt_crosscheck_vectors.txt", "r");
        if (input_file == 0)
            $fatal(1, "cannot open root_opt_crosscheck_vectors.txt");
        while (!$feof(input_file)) begin
            fields = $fscanf(input_file,
                "%h %h %d %d %h %h %h %h %h\n",
                x, y, level, divide_mode, expected_runtime,
                expected_fixed[0], expected_fixed[1],
                expected_fixed[2], expected_fixed[3]);
            if (fields == 9) begin
                #1;
                if (runtime_result !== expected_runtime) begin
                    if (mismatches < 10)
                        $display("RUNTIME MODEL MISMATCH case=%0d got=%h expected=%h",
                            cases, runtime_result, expected_runtime);
                    mismatches = mismatches + 1;
                end
                for (integer fixed_level = 0;
                     fixed_level < 4; fixed_level = fixed_level + 1)
                    if (fixed_result[fixed_level]
                            !== expected_fixed[fixed_level]) begin
                        if (mismatches < 10)
                            $display("L%0d MODEL MISMATCH case=%0d got=%h expected=%h",
                                fixed_level, cases, fixed_result[fixed_level],
                                expected_fixed[fixed_level]);
                        mismatches = mismatches + 1;
                    end
                cases = cases + 1;
            end
        end
        $fclose(input_file);
        if (mismatches != 0)
            $fatal(1, "root-opt model mismatches: %0d", mismatches);
        $display("ROOT_OPT_MODEL_CROSSCHECK PASS: %0d vectors", cases);
        $finish;
    end
endmodule
