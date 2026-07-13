`timescale 1ns/1ps

module tb_oadm_divmul;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0]  level;
    reg        divide_mode;
    wire [31:0] result;

    integer failures;
    integer mode;
    integer lvl;
    integer sample;
    integer stat_idx;
    real xv;
    real yv;
    real expected;
    real actual;
    real rel_error;
    real abs_error;
    reg [31:0] expected_bits;
    reg [31:0] actual_bits;

    real sum_rel_error [0:7];
    real sum_sq_rel_error [0:7];
    real sum_abs_error [0:7];
    real sum_sq_abs_error [0:7];
    real max_rel_error [0:7];
    real max_abs_error [0:7];
    real worst_x [0:7];
    real worst_y [0:7];
    real worst_expected [0:7];
    real worst_actual [0:7];
    integer case_count [0:7];

    oadm_dm dut (
        .x(x),
        .y(y),
        .level(level),
        .divide_mode(divide_mode),
        .result(result)
    );

    initial $sdf_annotate("../../dc/oadm_dm/oadm_dm.syn.sdf", dut);

    function real abs_real;
        input real value;
        begin
            abs_real = (value < 0.0) ? -value : value;
        end
    endfunction

    function [31:0] fp32_from_unit_interval;
        input real value;
        integer fraction;
        begin
            if (value < 1.0) begin
                value = 1.0;
            end else if (value >= 2.0) begin
                value = 1.999999;
            end
            fraction = $rtoi((value - 1.0) * 8388608.0);
            fp32_from_unit_interval = {1'b0, 8'd127, fraction[22:0]};
        end
    endfunction

    function real fp32_to_real;
        input [31:0] bits;
        integer exponent;
        integer fraction;
        real mantissa;
        real scale;
        begin
            exponent = bits[30:23];
            fraction = bits[22:0];

            if (exponent == 0) begin
                fp32_to_real = 0.0;
            end else if (exponent == 255) begin
                fp32_to_real = 1.0e30;
            end else begin
                mantissa = 1.0 + ($itor(fraction) / 8388608.0);
                scale = 1.0;
                if (exponent >= 127) begin
                    repeat (exponent - 127) scale = scale * 2.0;
                end else begin
                    repeat (127 - exponent) scale = scale / 2.0;
                end
                fp32_to_real = bits[31] ? -(mantissa * scale)
                                        :  (mantissa * scale);
            end
        end
    endfunction

    function [31:0] fp32_from_positive_real;
        input real value;
        integer exponent;
        integer fraction;
        real normalized;
        begin
            if (value <= 0.0) begin
                fp32_from_positive_real = 32'h00000000;
            end else begin
                normalized = value;
                exponent = 127;
                while (normalized >= 2.0) begin
                    normalized = normalized / 2.0;
                    exponent = exponent + 1;
                end
                while (normalized < 1.0) begin
                    normalized = normalized * 2.0;
                    exponent = exponent - 1;
                end
                fraction = $rtoi((normalized - 1.0) * 8388608.0);
                fp32_from_positive_real = {1'b0, exponent[7:0], fraction[22:0]};
            end
        end
    endfunction

    task record_case;
        input integer requested_level;
        input integer requested_divide_mode;
        input real x_real;
        input real y_real;
        input real expected_real;
        input real actual_real;
        input real abs_error_real;
        input real rel_error_real;
        begin
            stat_idx = requested_divide_mode * 4 + requested_level;
            case_count[stat_idx] = case_count[stat_idx] + 1;
            sum_rel_error[stat_idx] = sum_rel_error[stat_idx] + rel_error_real;
            sum_sq_rel_error[stat_idx] =
                sum_sq_rel_error[stat_idx] + rel_error_real * rel_error_real;
            sum_abs_error[stat_idx] = sum_abs_error[stat_idx] + abs_error_real;
            sum_sq_abs_error[stat_idx] =
                sum_sq_abs_error[stat_idx] + abs_error_real * abs_error_real;

            if (rel_error_real > max_rel_error[stat_idx]) begin
                max_rel_error[stat_idx] = rel_error_real;
                max_abs_error[stat_idx] = abs_error_real;
                worst_x[stat_idx] = x_real;
                worst_y[stat_idx] = y_real;
                worst_expected[stat_idx] = expected_real;
                worst_actual[stat_idx] = actual_real;
            end
        end
    endtask

    task check_case;
        input real x_real;
        input real y_real;
        input integer requested_level;
        input requested_divide_mode;
        begin
            x = fp32_from_unit_interval(x_real);
            y = fp32_from_unit_interval(y_real);
            level = requested_level[1:0];
            divide_mode = requested_divide_mode;
            #5;

            if (^result === 1'bx) begin
                $display("FAIL_XZ mode=%s level=%0d x=%f y=%f result=%h",
                    requested_divide_mode ? "DIV" : "MUL",
                    requested_level, x_real, y_real, result);
                failures = failures + 1;
            end else begin
                expected = requested_divide_mode ? (x_real / y_real)
                                                 : (x_real * y_real);
                actual = fp32_to_real(result);
                abs_error = abs_real(actual - expected);
                rel_error = abs_error / expected;
                expected_bits = fp32_from_positive_real(expected);
                actual_bits = result;

                record_case(requested_level, requested_divide_mode,
                            x_real, y_real, expected, actual,
                            abs_error, rel_error);
            end
        end
    endtask

    task print_summary;
        integer i;
        integer summary_mode;
        integer summary_level;
        real mean_abs;
        real mean_rel;
        real rmse_abs;
        real rmse_rel;
        begin
            $display("");
            $display("OADM post-synthesis accuracy summary against exact real x*y or x/y");
            $display("mode level cases mean_abs_err rmse_abs_err max_abs_err mean_rel_pct rmse_rel_pct max_rel_pct worst_x worst_y expected actual");
            for (i = 0; i < 8; i = i + 1) begin
                summary_mode = i / 4;
                summary_level = i % 4;
                mean_abs = sum_abs_error[i] / case_count[i];
                rmse_abs = $sqrt(sum_sq_abs_error[i] / case_count[i]);
                mean_rel = sum_rel_error[i] / case_count[i];
                rmse_rel = $sqrt(sum_sq_rel_error[i] / case_count[i]);
                $display("%s %0d %0d %.9f %.9f %.9f %.6f %.6f %.6f %.9f %.9f %.9f %.9f",
                    summary_mode ? "DIV" : "MUL",
                    summary_level,
                    case_count[i],
                    mean_abs,
                    rmse_abs,
                    max_abs_error[i],
                    mean_rel * 100.0,
                    rmse_rel * 100.0,
                    max_rel_error[i] * 100.0,
                    worst_x[i],
                    worst_y[i],
                    worst_expected[i],
                    worst_actual[i]);
            end
            $display("");
            $display("CSV: mode,level,cases,mean_abs_err,rmse_abs_err,max_abs_err,mean_rel_pct,rmse_rel_pct,max_rel_pct,worst_x,worst_y,expected,actual");
            for (i = 0; i < 8; i = i + 1) begin
                summary_mode = i / 4;
                summary_level = i % 4;
                mean_abs = sum_abs_error[i] / case_count[i];
                rmse_abs = $sqrt(sum_sq_abs_error[i] / case_count[i]);
                mean_rel = sum_rel_error[i] / case_count[i];
                rmse_rel = $sqrt(sum_sq_rel_error[i] / case_count[i]);
                $display("CSV,%s,%0d,%0d,%.9f,%.9f,%.9f,%.6f,%.6f,%.6f,%.9f,%.9f,%.9f,%.9f",
                    summary_mode ? "DIV" : "MUL",
                    summary_level,
                    case_count[i],
                    mean_abs,
                    rmse_abs,
                    max_abs_error[i],
                    mean_rel * 100.0,
                    rmse_rel * 100.0,
                    max_rel_error[i] * 100.0,
                    worst_x[i],
                    worst_y[i],
                    worst_expected[i],
                    worst_actual[i]);
            end
            $display("");
        end
    endtask

    initial begin
        failures = 0;
        $dumpfile("./oadm_dm_dc.vcd");
        $dumpvars(0, tb_oadm_divmul.dut);

        for (stat_idx = 0; stat_idx < 8; stat_idx = stat_idx + 1) begin
            sum_rel_error[stat_idx] = 0.0;
            sum_sq_rel_error[stat_idx] = 0.0;
            sum_abs_error[stat_idx] = 0.0;
            sum_sq_abs_error[stat_idx] = 0.0;
            max_rel_error[stat_idx] = 0.0;
            max_abs_error[stat_idx] = 0.0;
            worst_x[stat_idx] = 0.0;
            worst_y[stat_idx] = 0.0;
            worst_expected[stat_idx] = 0.0;
            worst_actual[stat_idx] = 0.0;
            case_count[stat_idx] = 0;
        end

        for (mode = 0; mode <= 1; mode = mode + 1) begin
            for (lvl = 0; lvl <= 3; lvl = lvl + 1) begin
                check_case(1.0,       1.0,       lvl, mode[0]);
                check_case(1.999,     1.999,     lvl, mode[0]);
                check_case(1.25,      1.75,      lvl, mode[0]);
                check_case(1.125,     1.875,     lvl, mode[0]);
                check_case(1.9375,    1.0625,    lvl, mode[0]);
                check_case(1.000001,  1.999999,  lvl, mode[0]);
                check_case(1.999999,  1.000001,  lvl, mode[0]);

                for (sample = 0; sample < 1000; sample = sample + 1) begin
                    xv = 1.0 + ($itor($random & 23'h7fffff) / 8388608.0);
                    yv = 1.0 + ($itor($random & 23'h7fffff) / 8388608.0);
                    check_case(xv, yv, lvl, mode[0]);
                end
            end
        end

        print_summary();

        if (failures != 0) begin
            $display("FAIL: %0d X/Z checks failed", failures);
            $finish;
        end
        $display("PASS: OADM post-synthesis simulation completed; inspect accuracy summary above");
        $dumpall;
        $dumpflush;
        $finish;
    end
endmodule
