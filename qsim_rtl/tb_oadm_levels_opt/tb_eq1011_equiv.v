`timescale 1ns/1ps

module tb_eq1011_equiv;
    reg clk;
    reg [31:0] x;
    reg [31:0] y;
    reg divide_mode;
    reg [31:0] lfsr_x;
    reg [31:0] lfsr_y;
    integer cycle_count;
    integer mismatch_count [0:4];
    integer mode_mismatch [0:1];

    wire [31:0] ref0, ref1, ref2, ref3, ref4;
    wire [31:0] opt0, opt1, opt2, opt3, opt4;

    oadm_dm_l0 ref_l0 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(ref0));
    oadm_dm_l1 ref_l1 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(ref1));
    oadm_dm_l2 ref_l2 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(ref2));
    oadm_dm_l3 ref_l3 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(ref3));
    oadm_dm_l4 ref_l4 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(ref4));
    oadm_dm_eq_l0 opt_l0 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(opt0));
    oadm_dm_eq_l1 opt_l1 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(opt1));
    oadm_dm_eq_l2 opt_l2 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(opt2));
    oadm_dm_eq_l3 opt_l3 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(opt3));
    oadm_dm_eq_l4 opt_l4 (.clk(clk), .x(x), .y(y), .divide_mode(divide_mode), .result(opt4));

    always #1 clk = ~clk;

    always @(negedge clk) begin
        lfsr_x <= {lfsr_x[30:0], lfsr_x[31] ^ lfsr_x[21] ^ lfsr_x[1] ^ lfsr_x[0]};
        lfsr_y <= {lfsr_y[30:0], lfsr_y[31] ^ lfsr_y[6] ^ lfsr_y[4] ^ lfsr_y[2]};
        x <= {lfsr_x[31], 8'd64 + lfsr_x[29:23], lfsr_x[22:0]};
        y <= {lfsr_y[31], 8'd64 + lfsr_y[29:23], lfsr_y[22:0]};
        divide_mode <= lfsr_x[7] ^ lfsr_y[13];
    end

    task check_pair;
        input integer level_number;
        input [31:0] reference_value;
        input [31:0] optimized_value;
        begin
            if (reference_value !== optimized_value) begin
                mismatch_count[level_number] = mismatch_count[level_number] + 1;
                mode_mismatch[divide_mode] = mode_mismatch[divide_mode] + 1;
                if (mismatch_count[level_number] <= 3)
                    $display("MISMATCH L%0d cycle=%0d mode=%0d ref=%08h opt=%08h",
                        level_number, cycle_count, divide_mode,
                        reference_value, optimized_value);
            end
        end
    endtask

    always @(posedge clk) begin
        #0.01;
        cycle_count = cycle_count + 1;
        if (cycle_count > 12) begin
            check_pair(0, ref0, opt0);
            check_pair(1, ref1, opt1);
            check_pair(2, ref2, opt2);
            check_pair(3, ref3, opt3);
            check_pair(4, ref4, opt4);
        end
        if (cycle_count == 20012) begin
            $display("EQ10/11 equivalence: L0=%0d L1=%0d L2=%0d L3=%0d L4=%0d",
                mismatch_count[0], mismatch_count[1], mismatch_count[2],
                mismatch_count[3], mismatch_count[4]);
            $display("Mode mismatches: MUL=%0d DIV=%0d",
                mode_mismatch[0], mode_mismatch[1]);
            if ((mismatch_count[0] + mismatch_count[1] + mismatch_count[2]
                 + mismatch_count[3] + mismatch_count[4]) == 0)
                $display("PASS: Eq.10/11 implementation is bit-exact to fixed baseline");
            else
                $display("FAIL: Eq.10/11 implementation differs from fixed baseline");
            $finish;
        end
    end

    initial begin
        clk = 0;
        x = 32'h3f800000;
        y = 32'h3f800000;
        divide_mode = 0;
        lfsr_x = 32'h1aceb00c;
        lfsr_y = 32'hc001d00d;
        cycle_count = 0;
        mismatch_count[0] = 0;
        mismatch_count[1] = 0;
        mismatch_count[2] = 0;
        mismatch_count[3] = 0;
        mismatch_count[4] = 0;
        mode_mismatch[0] = 0;
        mode_mismatch[1] = 0;
    end
endmodule
