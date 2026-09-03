`timescale 1ns/1ps

module tb_gate_miter;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] reference [0:11];
    wire [31:0] gate_result [0:11];
    integer mismatches [0:11];
    integer seed;
    integer i;
    integer design_index;

    oadm_fixed_l0_mul_root_opt_accuracy r0(x, y, reference[0]);
    oadm_fixed_l0_mul_root_opt_accuracy_gate g0(x, y, gate_result[0]);
    oadm_fixed_l0_mul_root_opt r1(x, y, reference[1]);
    oadm_fixed_l0_mul_root_opt_gate g1(x, y, gate_result[1]);
    oadm_fixed_l0_mul_root_opt_aggressive r2(x, y, reference[2]);
    oadm_fixed_l0_mul_root_opt_aggressive_gate g2(x, y, gate_result[2]);
    oadm_fixed_l1_mul_root_opt_accuracy r3(x, y, reference[3]);
    oadm_fixed_l1_mul_root_opt_accuracy_gate g3(x, y, gate_result[3]);
    oadm_fixed_l1_mul_root_opt r4(x, y, reference[4]);
    oadm_fixed_l1_mul_root_opt_gate g4(x, y, gate_result[4]);
    oadm_fixed_l1_mul_root_opt_aggressive r5(x, y, reference[5]);
    oadm_fixed_l1_mul_root_opt_aggressive_gate g5(x, y, gate_result[5]);
    oadm_fixed_l2_mul_root_opt_accuracy r6(x, y, reference[6]);
    oadm_fixed_l2_mul_root_opt_accuracy_gate g6(x, y, gate_result[6]);
    oadm_fixed_l2_mul_root_opt r7(x, y, reference[7]);
    oadm_fixed_l2_mul_root_opt_gate g7(x, y, gate_result[7]);
    oadm_fixed_l2_mul_root_opt_aggressive r8(x, y, reference[8]);
    oadm_fixed_l2_mul_root_opt_aggressive_gate g8(x, y, gate_result[8]);
    oadm_fixed_l3_mul_root_opt_accuracy r9(x, y, reference[9]);
    oadm_fixed_l3_mul_root_opt_accuracy_gate g9(x, y, gate_result[9]);
    oadm_fixed_l3_mul_root_opt r10(x, y, reference[10]);
    oadm_fixed_l3_mul_root_opt_gate g10(x, y, gate_result[10]);
    oadm_fixed_l3_mul_root_opt_aggressive r11(x, y, reference[11]);
    oadm_fixed_l3_mul_root_opt_aggressive_gate g11(x, y, gate_result[11]);

    task check_outputs;
        begin
            #1;
            for (design_index = 0; design_index < 12;
                 design_index = design_index + 1)
                if (gate_result[design_index] !== reference[design_index]) begin
                    if (mismatches[design_index] < 10)
                        $display("MISMATCH design=%0d i=%0d x=%h y=%h ref=%h gate=%h",
                            design_index, i, x, y, reference[design_index],
                            gate_result[design_index]);
                    mismatches[design_index] = mismatches[design_index] + 1;
                end
        end
    endtask

    initial begin
        seed = 6321;
        for (design_index = 0; design_index < 12;
             design_index = design_index + 1)
            mismatches[design_index] = 0;

        i = -2; x = 32'h3f800000; y = 32'h3f800000; check_outputs();
        i = -1; x = 32'h3fffffff; y = 32'h3fffffff; check_outputs();
        for (i = 0; i < CASES; i = i + 1) begin
            x = {$random(seed) & 1'b1,
                 $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            y = {$random(seed) & 1'b1,
                 $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            check_outputs();
        end

        for (design_index = 0; design_index < 12;
             design_index = design_index + 1)
            if (mismatches[design_index] != 0)
                $fatal(1, "MUL root-opt gate mismatch design=%0d count=%0d",
                    design_index, mismatches[design_index]);
        $display("MUL_ROOT_OPT_GATE_MITER PASS: %0d normal-finite vectors per DUT",
                 CASES + 2);
        $finish;
    end
endmodule
