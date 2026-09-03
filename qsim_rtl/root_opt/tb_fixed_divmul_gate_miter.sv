`timescale 1ns/1ps

module tb_fixed_divmul_gate_miter;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    reg divide_mode;
    wire [31:0] rtl_result [0:3];
    wire [31:0] gate_result [0:3];
    integer mismatches [0:3];
    integer i;
    integer level;
    integer seed;

    oadm_fixed_l0_divmul_root_opt r0 (x, y, divide_mode, rtl_result[0]);
    oadm_fixed_l1_divmul_root_opt r1 (x, y, divide_mode, rtl_result[1]);
    oadm_fixed_l2_divmul_root_opt r2 (x, y, divide_mode, rtl_result[2]);
    oadm_fixed_l3_divmul_root_opt r3 (x, y, divide_mode, rtl_result[3]);
    oadm_fixed_l0_divmul_root_opt_gate g0 (x, y, divide_mode, gate_result[0]);
    oadm_fixed_l1_divmul_root_opt_gate g1 (x, y, divide_mode, gate_result[1]);
    oadm_fixed_l2_divmul_root_opt_gate g2 (x, y, divide_mode, gate_result[2]);
    oadm_fixed_l3_divmul_root_opt_gate g3 (x, y, divide_mode, gate_result[3]);

    task check_outputs;
        begin
            #1;
            for (level = 0; level < 4; level = level + 1) begin
                if (gate_result[level] !== rtl_result[level]) begin
                    if (mismatches[level] < 10)
                        $display("GATE MISMATCH i=%0d L%0d mode=%0d x=%h y=%h rtl=%h gate=%h",
                            i, level, divide_mode, x, y,
                            rtl_result[level], gate_result[level]);
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
        divide_mode = 1'b0;
        check_outputs();
        divide_mode = 1'b1;
        check_outputs();
        for (i = 0; i < CASES; i = i + 1) begin
            x = {$random(seed) & 1'b1, $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            y = {$random(seed) & 1'b1, $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            divide_mode = $random(seed) & 1'b1;
            check_outputs();
        end
        if (mismatches[0] || mismatches[1] ||
                mismatches[2] || mismatches[3])
            $fatal(1, "fixed root-opt DIV+MUL gate mismatches: %0d/%0d/%0d/%0d",
                mismatches[0], mismatches[1], mismatches[2], mismatches[3]);
        $display("FIXED_DIVMUL_ROOT_OPT_GATE PASS: %0d vectors per level",
                 CASES + 2);
        $finish;
    end
endmodule
