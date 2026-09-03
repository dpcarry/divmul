`timescale 1ns/1ps

module tb_root_opt_model_crosscheck;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0] level;
    reg divide_mode;
    reg [31:0] expected_runtime;
    reg [31:0] expected_l2;
    wire [31:0] runtime_result;
    wire [31:0] l2_result;
    integer input_file;
    integer fields;
    integer cases;
    integer mismatches;

    oadm_runtime_root_opt runtime_dut (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(runtime_result)
    );
    oadm_fixed_l2_div_root_opt l2_dut (
        .x(x), .y(y), .result(l2_result)
    );

    initial begin
        cases = 0;
        mismatches = 0;
        input_file = $fopen("root_opt_crosscheck_vectors.txt", "r");
        if (input_file == 0)
            $fatal(1, "cannot open root_opt_crosscheck_vectors.txt");
        while (!$feof(input_file)) begin
            fields = $fscanf(input_file, "%h %h %d %d %h %h\n",
                x, y, level, divide_mode, expected_runtime, expected_l2);
            if (fields == 6) begin
                #1;
                if (runtime_result !== expected_runtime
                        || l2_result !== expected_l2) begin
                    if (mismatches < 10)
                        $display("MODEL MISMATCH case=%0d runtime=%h/%h l2=%h/%h",
                            cases, runtime_result, expected_runtime,
                            l2_result, expected_l2);
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
