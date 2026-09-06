module tb_correction_chain_equiv;
    reg [31:0] x;
    reg [31:0] y;
    reg divide_mode;
    wire [31:0] reference [0:3];
    wire [31:0] common_wrapper [0:3];
    integer i;
    integer level;
    integer seed;
    reg [31:0] random_word;

    oadm_fixed_l0_nopipe ref_l0 (x, y, divide_mode, reference[0]);
    oadm_fixed_l1_nopipe ref_l1 (x, y, divide_mode, reference[1]);
    oadm_fixed_l2_nopipe ref_l2 (x, y, divide_mode, reference[2]);
    oadm_fixed_l3_nopipe ref_l3 (x, y, divide_mode, reference[3]);
    oadm_fixed_l0_divmul_correction_chain new_l0 (x, y, divide_mode, common_wrapper[0]);
    oadm_fixed_l1_divmul_correction_chain new_l1 (x, y, divide_mode, common_wrapper[1]);
    oadm_fixed_l2_divmul_correction_chain new_l2 (x, y, divide_mode, common_wrapper[2]);
    oadm_fixed_l3_divmul_correction_chain new_l3 (x, y, divide_mode, common_wrapper[3]);

    initial begin
        seed = 32'h6321_2026;
        for (i = 0; i < 20000; i = i + 1) begin
            random_word = $random(seed);
            x = {1'b0, 8'd127, random_word[22:0]};
            random_word = $random(seed);
            y = {1'b0, 8'd127, random_word[22:0]};
            divide_mode = i[0];
            #1;
            for (level = 0; level < 4; level = level + 1) begin
                if (reference[level] !== common_wrapper[level]) begin
                    $display("FAIL i=%0d level=%0d mode=%0d x=%h y=%h ref=%h common=%h",
                             i, level, divide_mode, x, y,
                             reference[level], common_wrapper[level]);
                    $finish;
                end
            end
        end
        $display("CORRECTION_CHAIN_EQUIV PASS: 20000 vectors per level");
        $finish;
    end
endmodule
