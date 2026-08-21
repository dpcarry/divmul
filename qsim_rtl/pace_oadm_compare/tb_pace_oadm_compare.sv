`timescale 1ns/1ps

module tb_pace_oadm_compare;
    localparam CASES = 10000;
    reg [31:0] x;
    reg [31:0] y;
    reg [1:0] oadm_level;
    wire [31:0] oadm_out;
    wire [31:0] pace_l1_out;
    wire [31:0] pace_l2_out;
    wire [31:0] pace_l3_out;
    wire [31:0] pace_l4_out;
    wire [31:0] oadm_paceio_l0_out;
    wire [31:0] oadm_paceio_l1_out;
    wire [31:0] oadm_paceio_l2_out;
    wire [31:0] oadm_paceio_l3_out;
    reg [31:0] x_vectors [0:CASES-1];
    reg [31:0] y_vectors [0:CASES-1];

    real sum_abs_oadm [0:3];
    real sum_rel_oadm [0:3];
    real sum_sq_oadm [0:3];
    real sum_abs_pace [0:3];
    real sum_rel_pace [0:3];
    real sum_sq_pace [0:3];
    real expected;
    real actual_oadm;
    real actual_pace;
    real error_oadm;
    real error_pace;
    integer seed;
    integer fraction_x;
    integer fraction_y;
    integer i;
    integer level_index;
    integer csv_file;
    integer paceio_mismatches;

    oadm_runtime_div_opt oadm (
        .x(x), .y(y), .level(oadm_level), .result(oadm_out)
    );
    pace_fp32_l1 pace_l1 (.x(x), .y(y), .out(pace_l1_out));
    pace_fp32_l2 pace_l2 (.x(x), .y(y), .out(pace_l2_out));
    pace_fp32_l3 pace_l3 (.x(x), .y(y), .out(pace_l3_out));
    pace_fp32_l4 pace_l4 (.x(x), .y(y), .out(pace_l4_out));
    oadm_fixed_l0_div_paceio_opt oadm_paceio_l0 (
        .x(x), .y(y), .result(oadm_paceio_l0_out));
    oadm_fixed_l1_div_paceio_opt oadm_paceio_l1 (
        .x(x), .y(y), .result(oadm_paceio_l1_out));
    oadm_fixed_l2_div_paceio_opt oadm_paceio_l2 (
        .x(x), .y(y), .result(oadm_paceio_l2_out));
    oadm_fixed_l3_div_paceio_opt oadm_paceio_l3 (
        .x(x), .y(y), .result(oadm_paceio_l3_out));

    function real fp32_to_real;
        input [31:0] bits;
        integer exponent;
        real mantissa;
        begin
            exponent = bits[30:23] - 127;
            mantissa = 1.0 + (bits[22:0] / 8388608.0);
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

    function [31:0] pace_result;
        input integer index;
        begin
            case (index)
                0: pace_result = pace_l1_out;
                1: pace_result = pace_l2_out;
                2: pace_result = pace_l3_out;
                default: pace_result = pace_l4_out;
            endcase
        end
    endfunction

    function [31:0] oadm_paceio_result;
        input integer index;
        begin
            case (index)
                0: oadm_paceio_result = oadm_paceio_l0_out;
                1: oadm_paceio_result = oadm_paceio_l1_out;
                2: oadm_paceio_result = oadm_paceio_l2_out;
                default: oadm_paceio_result = oadm_paceio_l3_out;
            endcase
        end
    endfunction

    initial begin
        seed = 6321;
        paceio_mismatches = 0;
        for (i = 0; i < CASES; i = i + 1) begin
            fraction_x = $random(seed) & 23'h7fffff;
            fraction_y = $random(seed) & 23'h7fffff;
            x_vectors[i] = 32'h3f800000 | fraction_x[22:0];
            y_vectors[i] = 32'h3f800000 | fraction_y[22:0];
        end
        if ((x_vectors[0] == y_vectors[0])
                || (x_vectors[0] == x_vectors[1])) begin
            $fatal(1, "random vector generation did not advance");
        end
        for (level_index = 0; level_index < 4; level_index = level_index + 1) begin
            sum_abs_oadm[level_index] = 0.0;
            sum_rel_oadm[level_index] = 0.0;
            sum_sq_oadm[level_index] = 0.0;
            sum_abs_pace[level_index] = 0.0;
            sum_rel_pace[level_index] = 0.0;
            sum_sq_pace[level_index] = 0.0;
            oadm_level = level_index;
            for (i = 0; i < CASES; i = i + 1) begin
                x = x_vectors[i];
                y = y_vectors[i];
                #1;
                if (oadm_paceio_result(level_index) !== oadm_out) begin
                    paceio_mismatches = paceio_mismatches + 1;
                end
                expected = fp32_to_real(x) / fp32_to_real(y);
                actual_oadm = fp32_to_real(oadm_out);
                actual_pace = fp32_to_real(pace_result(level_index));
                error_oadm = abs_real(actual_oadm - expected);
                error_pace = abs_real(actual_pace - expected);
                sum_abs_oadm[level_index] = sum_abs_oadm[level_index] + error_oadm;
                sum_rel_oadm[level_index] = sum_rel_oadm[level_index]
                                           + error_oadm / expected;
                sum_sq_oadm[level_index] = sum_sq_oadm[level_index]
                                          + error_oadm * error_oadm;
                sum_abs_pace[level_index] = sum_abs_pace[level_index] + error_pace;
                sum_rel_pace[level_index] = sum_rel_pace[level_index]
                                           + error_pace / expected;
                sum_sq_pace[level_index] = sum_sq_pace[level_index]
                                          + error_pace * error_pace;
            end
        end

        csv_file = $fopen("error_comparison.csv", "w");
        $fdisplay(csv_file, "design,level,cases,mae,mred,rmse");
        for (level_index = 0; level_index < 4; level_index = level_index + 1) begin
            $display("OADM L%0d MAE=%.9f MRED=%.9f RMSE=%.9f",
                level_index, sum_abs_oadm[level_index] / CASES,
                sum_rel_oadm[level_index] / CASES,
                $sqrt(sum_sq_oadm[level_index] / CASES));
            $display("PACE L%0d MAE=%.9f MRED=%.9f RMSE=%.9f",
                level_index + 1, sum_abs_pace[level_index] / CASES,
                sum_rel_pace[level_index] / CASES,
                $sqrt(sum_sq_pace[level_index] / CASES));
            $fdisplay(csv_file, "OADM,L%0d,%0d,%.9f,%.9f,%.9f",
                level_index, CASES, sum_abs_oadm[level_index] / CASES,
                sum_rel_oadm[level_index] / CASES,
                $sqrt(sum_sq_oadm[level_index] / CASES));
            $fdisplay(csv_file, "PACE,L%0d,%0d,%.9f,%.9f,%.9f",
                level_index + 1, CASES, sum_abs_pace[level_index] / CASES,
                sum_rel_pace[level_index] / CASES,
                $sqrt(sum_sq_pace[level_index] / CASES));
        end
        $fclose(csv_file);
        if (paceio_mismatches != 0) begin
            $fatal(1, "%0d PACE-I/O wrapper mismatches", paceio_mismatches);
        end
        $display("PASS: PACE-I/O OADM wrappers match full OADM on all normal vectors");
        $finish;
    end
endmodule
