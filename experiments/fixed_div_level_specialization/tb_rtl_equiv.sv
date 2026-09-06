`timescale 1ns/1ps

module tb_rtl_equiv;
    parameter integer CASES = 20000;
    reg [31:0] x;
    reg [31:0] y;
    wire [31:0] reference [0:3];
    wire [31:0] specialized [0:3];
    integer seed;
    integer i;
    integer mismatches;

    oadm_fixed_l0_div_root_opt ref0 (x, y, reference[0]);
    oadm_fixed_l1_div_root_opt ref1 (x, y, reference[1]);
    oadm_fixed_l2_div_root_opt ref2 (x, y, reference[2]);
    oadm_fixed_l3_div_root_opt ref3 (x, y, reference[3]);
    oadm_fixed_l0_div_specialized dut0 (x, y, specialized[0]);
    oadm_fixed_l1_div_specialized dut1 (x, y, specialized[1]);
    oadm_fixed_l2_div_specialized dut2 (x, y, specialized[2]);
    oadm_fixed_l3_div_specialized dut3 (x, y, specialized[3]);

    task check_outputs;
        integer level;
        begin
            #1;
            for (level = 0; level < 4; level = level + 1)
                if (reference[level] !== specialized[level]) begin
                    if (mismatches < 10)
                        $display("MISMATCH level=%0d i=%0d x=%h y=%h ref=%h got=%h",
                            level, i, x, y, reference[level], specialized[level]);
                    mismatches = mismatches + 1;
                end
        end
    endtask

    initial begin
        seed = 6321;
        mismatches = 0;
        i = -2;
        x = 32'h3f800000; y = 32'h3f800000; check_outputs();
        i = -1;
        x = 32'h3fffffff; y = 32'h3f800000; check_outputs();
        for (i = 0; i < CASES; i = i + 1) begin
            x = {$random(seed) & 1'b1,
                 $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            y = {$random(seed) & 1'b1,
                 $urandom_range(1, 254),
                 $random(seed) & 23'h7fffff};
            check_outputs();
        end
        if (mismatches != 0)
            $fatal(1, "RTL equivalence mismatches: %0d", mismatches);
        $display("FIXED_DIV_LEVEL_SPECIALIZATION_RTL_EQUIV PASS: %0d vectors per level",
            CASES + 2);
        $finish;
    end
endmodule
