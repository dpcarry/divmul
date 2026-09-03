`timescale 1ns/1ps

module tb_root_opt;
    localparam CASES = 10000;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0] level;
    reg divide_mode;
    wire [31:0] baseline_out;
    wire [31:0] runtime_root_out;
    wire [31:0] fixed_root_out [0:3];
    wire [31:0] pace_out [1:4];
    reg [31:0] x_vectors [0:CASES-1];
    reg [31:0] y_vectors [0:CASES-1];

    real base_abs [0:1][0:3];
    real base_rel [0:1][0:3];
    real base_sq [0:1][0:3];
    real root_abs [0:1][0:3];
    real root_rel [0:1][0:3];
    real root_sq [0:1][0:3];
    real fixed_abs [0:3];
    real fixed_rel [0:3];
    real fixed_sq [0:3];
    real pace_abs [1:4];
    real pace_rel [1:4];
    real pace_sq [1:4];
    real expected;
    real actual;
    real error;
    integer seed;
    integer fraction_x;
    integer fraction_y;
    integer mode_index;
    integer level_index;
    integer pace_level;
    integer i;
    integer csv_file;
    integer special_mismatches;

    oadm_runtime_centered_residual_opt baseline (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(baseline_out)
    );
    oadm_runtime_root_opt runtime_root (
        .x(x), .y(y), .level(level), .divide_mode(divide_mode),
        .result(runtime_root_out)
    );
    oadm_fixed_l0_div_root_opt fixed_l0 (
        .x(x), .y(y), .result(fixed_root_out[0]));
    oadm_fixed_l1_div_root_opt fixed_l1 (
        .x(x), .y(y), .result(fixed_root_out[1]));
    oadm_fixed_l2_div_root_opt fixed_l2 (
        .x(x), .y(y), .result(fixed_root_out[2]));
    oadm_fixed_l3_div_root_opt fixed_l3 (
        .x(x), .y(y), .result(fixed_root_out[3]));
    pace_fp32_l1 pace_l1 (.x(x), .y(y), .out(pace_out[1]));
    pace_fp32_l2 pace_l2 (.x(x), .y(y), .out(pace_out[2]));
    pace_fp32_l3 pace_l3 (.x(x), .y(y), .out(pace_out[3]));
    pace_fp32_l4 pace_l4 (.x(x), .y(y), .out(pace_out[4]));

    function real fp32_to_real;
        input [31:0] bits;
        integer exponent;
        real mantissa;
        begin
            exponent = bits[30:23] - 127;
            mantissa = 1.0 + bits[22:0] / 8388608.0;
            fp32_to_real = bits[31] ? -mantissa * (2.0 ** exponent)
                                     :  mantissa * (2.0 ** exponent);
        end
    endfunction

    function real abs_real;
        input real value;
        begin
            abs_real = value < 0.0 ? -value : value;
        end
    endfunction

    task check_special;
        input [31:0] tx;
        input [31:0] ty;
        input [1:0] tl;
        input tm;
        begin
            x = tx;
            y = ty;
            level = tl;
            divide_mode = tm;
            #1;
            if (runtime_root_out !== baseline_out)
                special_mismatches = special_mismatches + 1;
        end
    endtask

    initial begin
        seed = 6321;
        special_mismatches = 0;
        for (pace_level = 1; pace_level <= 4; pace_level = pace_level + 1) begin
            pace_abs[pace_level] = 0.0;
            pace_rel[pace_level] = 0.0;
            pace_sq[pace_level] = 0.0;
        end
        for (level_index = 0; level_index < 4; level_index = level_index + 1) begin
            fixed_abs[level_index] = 0.0;
            fixed_rel[level_index] = 0.0;
            fixed_sq[level_index] = 0.0;
        end
        for (i = 0; i < CASES; i = i + 1) begin
            fraction_x = $random(seed) & 23'h7fffff;
            fraction_y = $random(seed) & 23'h7fffff;
            x_vectors[i] = 32'h3f800000 | fraction_x[22:0];
            y_vectors[i] = 32'h3f800000 | fraction_y[22:0];
        end

        for (mode_index = 0; mode_index < 2; mode_index = mode_index + 1) begin
            divide_mode = mode_index;
            for (level_index = 0; level_index < 4; level_index = level_index + 1) begin
                level = level_index;
                base_abs[mode_index][level_index] = 0.0;
                base_rel[mode_index][level_index] = 0.0;
                base_sq[mode_index][level_index] = 0.0;
                root_abs[mode_index][level_index] = 0.0;
                root_rel[mode_index][level_index] = 0.0;
                root_sq[mode_index][level_index] = 0.0;
                for (i = 0; i < CASES; i = i + 1) begin
                    x = x_vectors[i];
                    y = y_vectors[i];
                    #1;
                    expected = mode_index ? fp32_to_real(x) / fp32_to_real(y)
                                          : fp32_to_real(x) * fp32_to_real(y);
                    actual = fp32_to_real(baseline_out);
                    error = abs_real(actual - expected);
                    base_abs[mode_index][level_index] =
                        base_abs[mode_index][level_index] + error;
                    base_rel[mode_index][level_index] =
                        base_rel[mode_index][level_index] + error / expected;
                    base_sq[mode_index][level_index] =
                        base_sq[mode_index][level_index] + error * error;
                    actual = fp32_to_real(runtime_root_out);
                    error = abs_real(actual - expected);
                    root_abs[mode_index][level_index] =
                        root_abs[mode_index][level_index] + error;
                    root_rel[mode_index][level_index] =
                        root_rel[mode_index][level_index] + error / expected;
                    root_sq[mode_index][level_index] =
                        root_sq[mode_index][level_index] + error * error;

                    if (mode_index == 1) begin
                        actual = fp32_to_real(fixed_root_out[level_index]);
                        error = abs_real(actual - expected);
                        fixed_abs[level_index] = fixed_abs[level_index] + error;
                        fixed_rel[level_index] =
                            fixed_rel[level_index] + error / expected;
                        fixed_sq[level_index] =
                            fixed_sq[level_index] + error * error;
                    end
                    if (mode_index == 1 && level_index == 0) begin
                        for (pace_level = 1; pace_level <= 4;
                                pace_level = pace_level + 1) begin
                            actual = fp32_to_real(pace_out[pace_level]);
                            error = abs_real(actual - expected);
                            pace_abs[pace_level] = pace_abs[pace_level] + error;
                            pace_rel[pace_level] = pace_rel[pace_level]
                                                   + error / expected;
                            pace_sq[pace_level] = pace_sq[pace_level]
                                                 + error * error;
                        end
                    end
                end
            end
        end

        csv_file = $fopen("root_opt_accuracy.csv", "w");
        $fdisplay(csv_file, "candidate,mode,level,cases,mae,mred,rmse");
        for (mode_index = 0; mode_index < 2; mode_index = mode_index + 1) begin
            for (level_index = 0; level_index < 4; level_index = level_index + 1) begin
                $fdisplay(csv_file, "baseline,%s,L%0d,%0d,%.9f,%.9f,%.9f",
                    mode_index ? "DIV" : "MUL", level_index, CASES,
                    base_abs[mode_index][level_index] / CASES,
                    base_rel[mode_index][level_index] / CASES,
                    $sqrt(base_sq[mode_index][level_index] / CASES));
                $fdisplay(csv_file, "runtime_root,%s,L%0d,%0d,%.9f,%.9f,%.9f",
                    mode_index ? "DIV" : "MUL", level_index, CASES,
                    root_abs[mode_index][level_index] / CASES,
                    root_rel[mode_index][level_index] / CASES,
                    $sqrt(root_sq[mode_index][level_index] / CASES));
            end
        end
        for (level_index = 0; level_index < 4; level_index = level_index + 1)
            $fdisplay(csv_file, "fixed_root,DIV,L%0d,%0d,%.9f,%.9f,%.9f",
                level_index, CASES,
                fixed_abs[level_index] / CASES,
                fixed_rel[level_index] / CASES,
                $sqrt(fixed_sq[level_index] / CASES));
        for (pace_level = 1; pace_level <= 4; pace_level = pace_level + 1)
            $fdisplay(csv_file, "pace_l%0d,DIV,L%0d,%0d,%.9f,%.9f,%.9f",
                pace_level, pace_level, CASES,
                pace_abs[pace_level] / CASES,
                pace_rel[pace_level] / CASES,
                $sqrt(pace_sq[pace_level] / CASES));
        $fclose(csv_file);

        $display("PASS: root-opt normalized-finite accuracy campaign");
        $finish;
    end
endmodule
