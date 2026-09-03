module tb_runtime_centered_residual_equiv;
    reg [23:0] x_mantissa;
    reg [23:0] y_mantissa;
    reg [1:0] level;
    reg divide_mode;
    wire signed [28:0] direct_plane;
    wire signed [28:0] centered_plane;
    integer i;
    integer seed;
    reg [31:0] rand_word;

    oadm_multilevel_plane_direct direct (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .level(level), .divide_mode(divide_mode),
        .plane_exact(direct_plane)
    );
    oadm_runtime_plane_centered centered (
        .x_mantissa(x_mantissa), .y_mantissa(y_mantissa),
        .level(level), .divide_mode(divide_mode),
        .plane_exact(centered_plane)
    );

    initial begin
        seed = 32'h5a17_2026;
        for (i = 0; i < 20000; i = i + 1) begin
            rand_word = $random(seed);
            x_mantissa = {1'b1, rand_word[22:0]};
            rand_word = $random(seed);
            y_mantissa = {1'b1, rand_word[22:0]};
            rand_word = $random(seed);
            level = rand_word[1:0];
            rand_word = $random(seed);
            divide_mode = rand_word[0];
            #1;
            if (direct_plane !== centered_plane) begin
                $display("Mismatch i=%0d level=%0d mode=%0d x=%h y=%h direct=%0d centered=%0d",
                         i, level, divide_mode, x_mantissa, y_mantissa,
                         direct_plane, centered_plane);
                $finish;
            end
        end
        $display("PASS runtime centered-residual plane matches direct plane");
        $finish;
    end
endmodule
