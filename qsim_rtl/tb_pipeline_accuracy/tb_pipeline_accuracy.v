`timescale 1ns/1ps

module tb_pipeline_accuracy;
    localparam LEVEL_COUNT = 5;
    localparam RANDOM_CASES = 10000;
    localparam DIRECTED_CASES = 7;
    localparam TOTAL_CASES = RANDOM_CASES + DIRECTED_CASES;
    localparam PIPE_DEPTH = 6;

    reg clk;
    reg [31:0] x;
    reg [31:0] y;
    reg [2:0] level;
    reg divide_mode;
    wire [31:0] result;

    real x_vectors [0:TOTAL_CASES-1];
    real y_vectors [0:TOTAL_CASES-1];
    real sum_abs [0:2*LEVEL_COUNT-1];
    real sum_sq [0:2*LEVEL_COUNT-1];
    real sum_abs_rel [0:2*LEVEL_COUNT-1];
    real sum_sq_rel [0:2*LEVEL_COUNT-1];
    real max_abs_rel [0:2*LEVEL_COUNT-1];
    real worst_x [0:2*LEVEL_COUNT-1];
    real worst_y [0:2*LEVEL_COUNT-1];
    real worst_expected [0:2*LEVEL_COUNT-1];
    real worst_actual [0:2*LEVEL_COUNT-1];
    integer case_count [0:2*LEVEL_COUNT-1];

    integer failures;
    integer mode_index;
    integer level_index;
    integer case_index;
    integer stat_index;
    integer seed;
    integer fraction_x;
    integer fraction_y;
    integer summary_file;
    real represented_x;
    real represented_y;
    real expected;
    real actual;
    real signed_error;
    real abs_error;
    real abs_relative_error;

    oadm_dm_pipe #(.PIPE_MASK(7'h5f)) dut (
        .clk(clk), .x(x), .y(y), .level(level),
        .divide_mode(divide_mode), .result(result)
    );

    always #1 clk = ~clk;

    function real abs_real;
        input real value;
        begin
            abs_real = value < 0.0 ? -value : value;
        end
    endfunction

    function [31:0] fp32_from_mantissa;
        input real value;
        integer fraction;
        begin
            fraction = $rtoi((value - 1.0) * 8388608.0);
            fp32_from_mantissa = {1'b0, 8'd127, fraction[22:0]};
        end
    endfunction

    function real fp32_mantissa_to_real;
        input [31:0] bits;
        begin
            fp32_mantissa_to_real =
                1.0 + ($itor(bits[22:0]) / 8388608.0);
        end
    endfunction

    function real fp32_to_real;
        input [31:0] bits;
        integer exponent;
        real mantissa;
        real scale;
        begin
            exponent = bits[30:23];
            if (exponent == 0) begin
                fp32_to_real = 0.0;
            end else if (exponent == 255) begin
                fp32_to_real = 1.0e30;
            end else begin
                mantissa = 1.0 + ($itor(bits[22:0]) / 8388608.0);
                scale = 1.0;
                if (exponent >= 127)
                    repeat (exponent - 127) scale = scale * 2.0;
                else
                    repeat (127 - exponent) scale = scale / 2.0;
                fp32_to_real = bits[31] ? -(mantissa * scale)
                                        : mantissa * scale;
            end
        end
    endfunction

    task initialize_vectors;
        begin
            x_vectors[0] = 1.0;      y_vectors[0] = 1.0;
            x_vectors[1] = 1.999999; y_vectors[1] = 1.999999;
            x_vectors[2] = 1.25;     y_vectors[2] = 1.75;
            x_vectors[3] = 1.125;    y_vectors[3] = 1.875;
            x_vectors[4] = 1.9375;   y_vectors[4] = 1.0625;
            x_vectors[5] = 1.000001; y_vectors[5] = 1.999999;
            x_vectors[6] = 1.999999; y_vectors[6] = 1.000001;
            seed = 6321;
            for (case_index = DIRECTED_CASES;
                 case_index < TOTAL_CASES;
                 case_index = case_index + 1) begin
                fraction_x = $random(seed) & 23'h7fffff;
                fraction_y = $random(seed) & 23'h7fffff;
                x_vectors[case_index] =
                    1.0 + ($itor(fraction_x) / 8388608.0);
                y_vectors[case_index] =
                    1.0 + ($itor(fraction_y) / 8388608.0);
            end
        end
    endtask

    task check_case;
        input integer requested_mode;
        input integer requested_level;
        input real requested_x;
        input real requested_y;
        begin
            @(negedge clk);
            x = fp32_from_mantissa(requested_x);
            y = fp32_from_mantissa(requested_y);
            level = requested_level[2:0];
            divide_mode = requested_mode[0];
            represented_x = fp32_mantissa_to_real(x);
            represented_y = fp32_mantissa_to_real(y);
            expected = requested_mode
                     ? represented_x / represented_y
                     : represented_x * represented_y;

            repeat (PIPE_DEPTH) @(posedge clk);
            #0.4;
            if (^result === 1'bx) begin
                failures = failures + 1;
                if (failures <= 20)
                    $display("FAIL_XZ mode=%0d level=%0d x=%h y=%h",
                             requested_mode, requested_level, x, y);
            end else begin
                actual = fp32_to_real(result);
                signed_error = actual - expected;
                abs_error = abs_real(signed_error);
                abs_relative_error = abs_error / abs_real(expected);
                stat_index = requested_mode * LEVEL_COUNT + requested_level;
                case_count[stat_index] = case_count[stat_index] + 1;
                sum_abs[stat_index] = sum_abs[stat_index] + abs_error;
                sum_sq[stat_index] =
                    sum_sq[stat_index] + signed_error * signed_error;
                sum_abs_rel[stat_index] =
                    sum_abs_rel[stat_index] + abs_relative_error;
                sum_sq_rel[stat_index] = sum_sq_rel[stat_index]
                    + abs_relative_error * abs_relative_error;
                if (abs_relative_error > max_abs_rel[stat_index]) begin
                    max_abs_rel[stat_index] = abs_relative_error;
                    worst_x[stat_index] = represented_x;
                    worst_y[stat_index] = represented_y;
                    worst_expected[stat_index] = expected;
                    worst_actual[stat_index] = actual;
                end
            end
        end
    endtask

    task print_summary;
        integer summary_index;
        integer summary_mode;
        integer summary_level;
        real count;
        real mae;
        real mred;
        real rmse;
        real relative_rmse;
        real max_relative_error;
        begin
            summary_file = $fopen("accuracy_summary.csv", "w");
            $fdisplay(summary_file,
                "mode,level,cases,mae,mred_pct,rmse,rmse_rel_pct,max_rel_pct,worst_x,worst_y,worst_expected,worst_actual");
            $display("");
            $display("OADM P6 RTL accuracy against exact real x*y or x/y");
            $display("mode level cases MAE MRED_pct RMSE RMSE_rel_pct MaxRE_pct worst_x worst_y expected actual");
            for (summary_index = 0;
                 summary_index < 2 * LEVEL_COUNT;
                 summary_index = summary_index + 1) begin
                summary_mode = summary_index / LEVEL_COUNT;
                summary_level = summary_index % LEVEL_COUNT;
                count = case_count[summary_index];
                mae = sum_abs[summary_index] / count;
                mred = 100.0 * sum_abs_rel[summary_index] / count;
                rmse = $sqrt(sum_sq[summary_index] / count);
                relative_rmse =
                    100.0 * $sqrt(sum_sq_rel[summary_index] / count);
                max_relative_error = 100.0 * max_abs_rel[summary_index];
                $display("%s %0d %0d %.9f %.6f %.9f %.6f %.6f %.9f %.9f %.9f %.9f",
                    summary_mode ? "DIV" : "MUL", summary_level,
                    case_count[summary_index], mae, mred, rmse,
                    relative_rmse, max_relative_error,
                    worst_x[summary_index], worst_y[summary_index],
                    worst_expected[summary_index], worst_actual[summary_index]);
                $fdisplay(summary_file,
                    "%s,%0d,%0d,%.9f,%.6f,%.9f,%.6f,%.6f,%.9f,%.9f,%.9f,%.9f",
                    summary_mode ? "DIV" : "MUL", summary_level,
                    case_count[summary_index], mae, mred, rmse,
                    relative_rmse, max_relative_error,
                    worst_x[summary_index], worst_y[summary_index],
                    worst_expected[summary_index], worst_actual[summary_index]);
            end
            $fclose(summary_file);
            $display("");
        end
    endtask

    initial begin
        clk = 1'b0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        level = 0;
        divide_mode = 0;
        failures = 0;
        initialize_vectors();
        for (stat_index = 0; stat_index < 2 * LEVEL_COUNT;
             stat_index = stat_index + 1) begin
            sum_abs[stat_index] = 0.0;
            sum_sq[stat_index] = 0.0;
            sum_abs_rel[stat_index] = 0.0;
            sum_sq_rel[stat_index] = 0.0;
            max_abs_rel[stat_index] = 0.0;
            worst_x[stat_index] = 0.0;
            worst_y[stat_index] = 0.0;
            worst_expected[stat_index] = 0.0;
            worst_actual[stat_index] = 0.0;
            case_count[stat_index] = 0;
        end

        for (mode_index = 0; mode_index < 2;
             mode_index = mode_index + 1)
            for (level_index = 0; level_index < LEVEL_COUNT;
                 level_index = level_index + 1)
                for (case_index = 0; case_index < TOTAL_CASES;
                     case_index = case_index + 1)
                    check_case(mode_index, level_index,
                               x_vectors[case_index], y_vectors[case_index]);

        print_summary();
        if (failures == 0)
            $display("PASS: P6 RTL L0-L4 accuracy campaign completed");
        else
            $display("FAIL: %0d X/Z results", failures);
        $finish;
    end
endmodule
