`timescale 1ns/1ps

module tb_rtl_crosscheck;
    reg [31:0] x;
    reg [31:0] y;
    reg [31:0] expected [0:7];
    wire [31:0] actual [0:7];
    integer input_file;
    integer fields;
    integer cases;
    integer mismatches;

    oadm_fixed_l0_div_root_opt current_l0 (x, y, actual[0]);
    oadm_fixed_l0_div_dx18_dy18_c60_control control_l0_c60 (x, y, actual[1]);
    oadm_fixed_l0_div_dx19_dy18_c59 candidate_l0_x_c59 (x, y, actual[2]);
    oadm_fixed_l0_div_dx19_dy18 candidate_l0_x (x, y, actual[3]);
    oadm_fixed_l0_div_dx18_dy19 candidate_l0_y (x, y, actual[4]);
    oadm_fixed_l1_div_root_opt current_l1 (x, y, actual[5]);
    oadm_fixed_l1_div_dx17_dy16 candidate_l1_x (x, y, actual[6]);
    oadm_fixed_l1_div_dx16_dy17 candidate_l1_y (x, y, actual[7]);

    initial begin
        cases = 0;
        mismatches = 0;
        input_file = $fopen("results/rtl_vectors.txt", "r");
        if (input_file == 0)
            $fatal(1, "cannot open results/rtl_vectors.txt");
        while (!$feof(input_file)) begin
            fields = $fscanf(input_file,
                "%h %h %h %h %h %h %h %h %h %h\n",
                x, y, expected[0], expected[1], expected[2], expected[3],
                expected[4], expected[5], expected[6], expected[7]);
            if (fields == 10) begin
                #1;
                for (integer dut_index = 0; dut_index < 8;
                     dut_index = dut_index + 1)
                    if (actual[dut_index] !== expected[dut_index]) begin
                        if (mismatches < 10)
                            $display("MISMATCH design=%0d case=%0d got=%h expected=%h",
                                dut_index, cases, actual[dut_index],
                                expected[dut_index]);
                        mismatches = mismatches + 1;
                    end
                cases = cases + 1;
            end
        end
        $fclose(input_file);
        if (mismatches != 0)
            $fatal(1, "RTL/model mismatches: %0d", mismatches);
        $display("ASYMMETRIC_FIXED_DIV_RTL_CROSSCHECK PASS: %0d vectors per DUT",
            cases);
        $finish;
    end
endmodule
