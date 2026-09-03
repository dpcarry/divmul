`timescale 1ns/1ps

module tb_fixed_divmul_root_opt;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    reg divide_mode;
    wire [31:0] shared_result [0:3];
    wire [31:0] div_reference [0:3];
    wire [31:0] mul_reference [0:3];
    integer mismatches [0:3];
    integer i;
    integer level;
    integer seed;

    oadm_fixed_l0_divmul_root_opt s0 (x, y, divide_mode, shared_result[0]);
    oadm_fixed_l1_divmul_root_opt s1 (x, y, divide_mode, shared_result[1]);
    oadm_fixed_l2_divmul_root_opt s2 (x, y, divide_mode, shared_result[2]);
    oadm_fixed_l3_divmul_root_opt s3 (x, y, divide_mode, shared_result[3]);
    oadm_fixed_l0_div_root_opt d0 (x, y, div_reference[0]);
    oadm_fixed_l1_div_root_opt d1 (x, y, div_reference[1]);
    oadm_fixed_l2_div_root_opt d2 (x, y, div_reference[2]);
    oadm_fixed_l3_div_root_opt d3 (x, y, div_reference[3]);
    oadm_fixed_l0_mul_root_opt m0 (x, y, mul_reference[0]);
    oadm_fixed_l1_mul_root_opt m1 (x, y, mul_reference[1]);
    oadm_fixed_l2_mul_root_opt m2 (x, y, mul_reference[2]);
    oadm_fixed_l3_mul_root_opt m3 (x, y, mul_reference[3]);

    task check_mode;
        input mode;
        begin
            divide_mode = mode;
            #1;
            for (level = 0; level < 4; level = level + 1) begin
                if (shared_result[level] !==
                        (mode ? div_reference[level] : mul_reference[level])) begin
                    if (mismatches[level] < 10)
                        $display("MISMATCH i=%0d L%0d mode=%0d x=%h y=%h shared=%h ref=%h",
                            i, level, mode, x, y, shared_result[level],
                            mode ? div_reference[level] : mul_reference[level]);
                    mismatches[level] = mismatches[level] + 1;
                end
            end
        end
    endtask

    initial begin
        seed = 6321;
        for (level = 0; level < 4; level = level + 1)
            mismatches[level] = 0;
        i = -1;
        x = 32'h3f800000;
        y = 32'h3f800000;
        check_mode(1'b0);
        check_mode(1'b1);
        for (i = 0; i < CASES; i = i + 1) begin
            x = {$random(seed) & 1'b1, $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            y = {$random(seed) & 1'b1, $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            check_mode(1'b0);
            check_mode(1'b1);
        end
        if (mismatches[0] || mismatches[1] ||
                mismatches[2] || mismatches[3])
            $fatal(1, "fixed root-opt DIV+MUL mismatches: %0d/%0d/%0d/%0d",
                mismatches[0], mismatches[1], mismatches[2], mismatches[3]);
        $display("FIXED_DIVMUL_ROOT_OPT PASS: %0d vectors per mode and level",
                 CASES + 1);
        $finish;
    end
endmodule
