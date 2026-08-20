module oadm_dm_pipe #(
    // Bit i inserts a register after logical segment i. Segment 6 is output.
    parameter [6:0] PIPE_MASK = 7'h7f
) (
    input  wire        clk,
    input  wire [31:0] x,
    input  wire [31:0] y,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire [31:0] result
);
    localparam CORE_WIDTH = 29;
    localparam PIPE_VALUE_WIDTH = 27;
    localparam PIPE_MANTISSA_WIDTH = 24;
    localparam signed [CORE_WIDTH-1:0] ONE_Q = 29'sd8388608;
    localparam signed [CORE_WIDTH-1:0] MIDPOINT_Q = 29'sd12582912;
    localparam signed [CORE_WIDTH-1:0] TWO_Q = 29'sd16777216;
    localparam signed [CORE_WIDTH-1:0] TWO_POINT_TWO_FIVE_Q = 29'sd18874368;
    localparam [31:0] QUIET_NAN = 32'h7fc00000;

    wire [7:0] x_exponent = x[30:23];
    wire [7:0] y_exponent = y[30:23];
    wire [22:0] x_fraction = x[22:0];
    wire [22:0] y_fraction = y[22:0];
    wire [23:0] x_mantissa = {1'b1, x_fraction};
    wire [23:0] y_mantissa = {1'b1, y_fraction};
    wire signed [CORE_WIDTH-1:0] x_input = $signed({5'b0, x_mantissa});
    wire signed [CORE_WIDTH-1:0] y_input = $signed({5'b0, y_mantissa});
    wire sign_input = x[31] ^ y[31];
    wire x_nan = (x_exponent == 8'hff) && (x_fraction != 0);
    wire y_nan = (y_exponent == 8'hff) && (y_fraction != 0);
    wire x_inf = (x_exponent == 8'hff) && (x_fraction == 0);
    wire y_inf = (y_exponent == 8'hff) && (y_fraction == 0);
    wire x_zero = (x_exponent == 8'h00);
    wire y_zero = (y_exponent == 8'h00);

    reg invalid_input;
    reg infinity_input;
    reg zero_input;
    reg signed [11:0] exponent_input;
    always @* begin
        invalid_input = x_nan || y_nan;
        infinity_input = 1'b0;
        zero_input = 1'b0;
        if (divide_mode) begin
            invalid_input = invalid_input || (x_zero && y_zero)
                          || (x_inf && y_inf);
            infinity_input = !invalid_input && (x_inf || y_zero);
            zero_input = !invalid_input && !infinity_input
                       && (x_zero || y_inf);
            exponent_input = $signed({4'b0, x_exponent})
                           - $signed({4'b0, y_exponent}) + 12'sd127;
        end else begin
            invalid_input = invalid_input || (x_zero && y_inf)
                          || (x_inf && y_zero);
            infinity_input = !invalid_input && (x_inf || y_inf);
            zero_input = !invalid_input && !infinity_input
                       && (x_zero || y_zero);
            exponent_input = $signed({4'b0, x_exponent})
                           + $signed({4'b0, y_exponent}) - 12'sd127;
        end
    end

    // Segment 0: base plane and first correction.
    reg signed [CORE_WIDTH-1:0] base_c1;
    reg signed [CORE_WIDTH-1:0] d1_c1;
    reg signed [CORE_WIDTH-1:0] mx_c1;
    reg signed [CORE_WIDTH-1:0] my_c1;
    reg signed [CORE_WIDTH-1:0] raw1_c1;
    reg signed [CORE_WIDTH-1:0] raw2_c1;
    reg signed [CORE_WIDTH-1:0] term1_c1;
    reg signed [CORE_WIDTH-1:0] term2_c1;
    reg signed [CORE_WIDTH-1:0] term3_c1;
    always @* begin
        if (divide_mode) begin
            base_c1 = TWO_POINT_TWO_FIVE_Q + x_input + (x_input >>> 1)
                    - y_input - (y_input >>> 1);
            raw1_c1 = x_input + MIDPOINT_Q;
            raw2_c1 = MIDPOINT_Q - y_input;
            term3_c1 = (x_mantissa[22] == y_mantissa[22])
                     ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        end else begin
            base_c1 = -TWO_POINT_TWO_FIVE_Q + x_input + (x_input >>> 1)
                    + y_input + (y_input >>> 1);
            raw1_c1 = x_input - MIDPOINT_Q;
            raw2_c1 = y_input - MIDPOINT_Q;
            term3_c1 = (x_mantissa[22] != y_mantissa[22])
                     ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        end
        term1_c1 = (y_mantissa[22] ? raw1_c1 : -raw1_c1) >>> 2;
        term2_c1 = (x_mantissa[22] ? raw2_c1 : -raw2_c1) >>> 2;
        d1_c1 = term1_c1 + term2_c1 + term3_c1;
        mx_c1 = x_mantissa[22]
              ? MIDPOINT_Q + (ONE_Q >>> 2) : MIDPOINT_Q - (ONE_Q >>> 2);
        my_c1 = y_mantissa[22]
              ? MIDPOINT_Q + (ONE_Q >>> 2) : MIDPOINT_Q - (ONE_Q >>> 2);
    end

    wire [172:0] cut0_in = {
        base_c1[PIPE_VALUE_WIDTH-1:0], d1_c1[PIPE_VALUE_WIDTH-1:0],
        mx_c1[PIPE_MANTISSA_WIDTH-1:0], my_c1[PIPE_MANTISSA_WIDTH-1:0],
        x_input[PIPE_MANTISSA_WIDTH-1:0], y_input[PIPE_MANTISSA_WIDTH-1:0],
        y_mantissa[22:19], level, divide_mode, exponent_input,
        sign_input, invalid_input, infinity_input, zero_input
    };
    wire [172:0] cut0_out;
    oadm_pipe_cut #(.WIDTH(173), .REGISTERED(PIPE_MASK[0])) cut0 (
        .clk(clk), .data_in(cut0_in), .data_out(cut0_out)
    );
    wire signed [CORE_WIDTH-1:0] base_1;
    wire signed [CORE_WIDTH-1:0] d1_1;
    wire signed [CORE_WIDTH-1:0] mx_1;
    wire signed [CORE_WIDTH-1:0] my_1;
    wire signed [CORE_WIDTH-1:0] x_1;
    wire signed [CORE_WIDTH-1:0] y_1;
    wire signed [PIPE_VALUE_WIDTH-1:0] base_1_pipe;
    wire signed [PIPE_VALUE_WIDTH-1:0] d1_1_pipe;
    wire [PIPE_MANTISSA_WIDTH-1:0] mx_1_pipe;
    wire [PIPE_MANTISSA_WIDTH-1:0] my_1_pipe;
    wire [PIPE_MANTISSA_WIDTH-1:0] x_1_pipe;
    wire [PIPE_MANTISSA_WIDTH-1:0] y_1_pipe;
    wire [3:0] y_index_1;
    wire [1:0] level_1;
    wire divide_1;
    wire signed [11:0] exponent_1;
    wire sign_1, invalid_1, infinity_1, zero_1;
    assign {base_1_pipe, d1_1_pipe, mx_1_pipe, my_1_pipe,
            x_1_pipe, y_1_pipe, y_index_1,
            level_1, divide_1, exponent_1, sign_1, invalid_1,
            infinity_1, zero_1} = cut0_out;
    assign base_1 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){base_1_pipe[PIPE_VALUE_WIDTH-1]}}, base_1_pipe};
    assign d1_1 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){d1_1_pipe[PIPE_VALUE_WIDTH-1]}}, d1_1_pipe};
    assign mx_1 = {{(CORE_WIDTH-PIPE_MANTISSA_WIDTH){1'b0}}, mx_1_pipe};
    assign my_1 = {{(CORE_WIDTH-PIPE_MANTISSA_WIDTH){1'b0}}, my_1_pipe};
    assign x_1 = {{(CORE_WIDTH-PIPE_MANTISSA_WIDTH){1'b0}}, x_1_pipe};
    assign y_1 = {{(CORE_WIDTH-PIPE_MANTISSA_WIDTH){1'b0}}, y_1_pipe};

    // Segment 1: second correction.
    reg signed [CORE_WIDTH-1:0] d2_c2;
    reg signed [CORE_WIDTH-1:0] mx_c2;
    reg signed [CORE_WIDTH-1:0] my_c2;
    reg signed [CORE_WIDTH-1:0] raw1_c2;
    reg signed [CORE_WIDTH-1:0] raw2_c2;
    reg signed [CORE_WIDTH-1:0] term1_c2;
    reg signed [CORE_WIDTH-1:0] term2_c2;
    reg signed [CORE_WIDTH-1:0] term3_c2;
    always @* begin
        if (divide_1) begin
            raw1_c2 = x_1 + mx_1;
            raw2_c2 = my_1 - y_1;
            term3_c2 = (x_1[21] == y_1[21])
                     ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        end else begin
            raw1_c2 = x_1 - mx_1;
            raw2_c2 = y_1 - my_1;
            term3_c2 = (x_1[21] != y_1[21])
                     ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        end
        term1_c2 = (y_1[21] ? raw1_c2 : -raw1_c2) >>> 3;
        term2_c2 = (x_1[21] ? raw2_c2 : -raw2_c2) >>> 3;
        d2_c2 = term1_c2 + term2_c2 + term3_c2;
        mx_c2 = x_1[21] ? mx_1 + (ONE_Q >>> 3) : mx_1 - (ONE_Q >>> 3);
        my_c2 = y_1[21] ? my_1 + (ONE_Q >>> 3) : my_1 - (ONE_Q >>> 3);
    end

    wire [199:0] cut1_in = {
        base_1[PIPE_VALUE_WIDTH-1:0], d1_1[PIPE_VALUE_WIDTH-1:0],
        d2_c2[PIPE_VALUE_WIDTH-1:0],
        mx_c2[PIPE_MANTISSA_WIDTH-1:0], my_c2[PIPE_MANTISSA_WIDTH-1:0],
        x_1[PIPE_MANTISSA_WIDTH-1:0], y_1[PIPE_MANTISSA_WIDTH-1:0],
        y_index_1, level_1, divide_1, exponent_1,
        sign_1, invalid_1, infinity_1, zero_1
    };
    wire [199:0] cut1_out;
    oadm_pipe_cut #(.WIDTH(200), .REGISTERED(PIPE_MASK[1])) cut1 (
        .clk(clk), .data_in(cut1_in), .data_out(cut1_out)
    );
    wire signed [CORE_WIDTH-1:0] base_2;
    wire signed [CORE_WIDTH-1:0] d1_2;
    wire signed [CORE_WIDTH-1:0] d2_2;
    wire signed [CORE_WIDTH-1:0] mx_2;
    wire signed [CORE_WIDTH-1:0] my_2;
    wire signed [CORE_WIDTH-1:0] x_2;
    wire signed [CORE_WIDTH-1:0] y_2;
    wire signed [PIPE_VALUE_WIDTH-1:0] base_2_pipe;
    wire signed [PIPE_VALUE_WIDTH-1:0] d1_2_pipe;
    wire signed [PIPE_VALUE_WIDTH-1:0] d2_2_pipe;
    wire [PIPE_MANTISSA_WIDTH-1:0] mx_2_pipe;
    wire [PIPE_MANTISSA_WIDTH-1:0] my_2_pipe;
    wire [PIPE_MANTISSA_WIDTH-1:0] x_2_pipe;
    wire [PIPE_MANTISSA_WIDTH-1:0] y_2_pipe;
    wire [3:0] y_index_2;
    wire [1:0] level_2;
    wire divide_2;
    wire signed [11:0] exponent_2;
    wire sign_2, invalid_2, infinity_2, zero_2;
    assign {base_2_pipe, d1_2_pipe, d2_2_pipe,
            mx_2_pipe, my_2_pipe, x_2_pipe, y_2_pipe,
            y_index_2, level_2, divide_2, exponent_2, sign_2,
            invalid_2, infinity_2, zero_2} = cut1_out;
    assign base_2 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){base_2_pipe[PIPE_VALUE_WIDTH-1]}}, base_2_pipe};
    assign d1_2 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){d1_2_pipe[PIPE_VALUE_WIDTH-1]}}, d1_2_pipe};
    assign d2_2 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){d2_2_pipe[PIPE_VALUE_WIDTH-1]}}, d2_2_pipe};
    assign mx_2 = {{(CORE_WIDTH-PIPE_MANTISSA_WIDTH){1'b0}}, mx_2_pipe};
    assign my_2 = {{(CORE_WIDTH-PIPE_MANTISSA_WIDTH){1'b0}}, my_2_pipe};
    assign x_2 = {{(CORE_WIDTH-PIPE_MANTISSA_WIDTH){1'b0}}, x_2_pipe};
    assign y_2 = {{(CORE_WIDTH-PIPE_MANTISSA_WIDTH){1'b0}}, y_2_pipe};

    // Segment 2: third correction and midpoint refinement.
    reg signed [CORE_WIDTH-1:0] d3_c3;
    reg signed [CORE_WIDTH-1:0] mx_c3;
    reg signed [CORE_WIDTH-1:0] my_c3;
    reg signed [CORE_WIDTH-1:0] raw1_c3;
    reg signed [CORE_WIDTH-1:0] raw2_c3;
    reg signed [CORE_WIDTH-1:0] term1_c3;
    reg signed [CORE_WIDTH-1:0] term2_c3;
    reg signed [CORE_WIDTH-1:0] term3_c3;
    always @* begin
        mx_c3 = x_2[20] ? mx_2 + (ONE_Q >>> 4) : mx_2 - (ONE_Q >>> 4);
        my_c3 = y_2[20] ? my_2 + (ONE_Q >>> 4) : my_2 - (ONE_Q >>> 4);
        if (divide_2) begin
            raw1_c3 = x_2 + mx_2;
            raw2_c3 = my_2 - y_2;
            term3_c3 = (x_2[20] == y_2[20])
                     ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
        end else begin
            raw1_c3 = x_2 - mx_2;
            raw2_c3 = y_2 - my_2;
            term3_c3 = (x_2[20] != y_2[20])
                     ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
        end
        term1_c3 = (y_2[20] ? raw1_c3 : -raw1_c3) >>> 4;
        term2_c3 = (x_2[20] ? raw2_c3 : -raw2_c3) >>> 4;
        d3_c3 = term1_c3 + term2_c3 + term3_c3;
    end

    wire [130:0] cut2_in = {
        base_2[PIPE_VALUE_WIDTH-1:0], d1_2[PIPE_VALUE_WIDTH-1:0],
        d2_2[PIPE_VALUE_WIDTH-1:0], d3_c3[PIPE_VALUE_WIDTH-1:0],
        y_index_2, level_2, divide_2, exponent_2, sign_2,
        invalid_2, infinity_2, zero_2
    };
    wire [130:0] cut2_out;
    oadm_pipe_cut #(.WIDTH(131), .REGISTERED(PIPE_MASK[2])) cut2 (
        .clk(clk), .data_in(cut2_in), .data_out(cut2_out)
    );
    wire signed [CORE_WIDTH-1:0] base_3;
    wire signed [CORE_WIDTH-1:0] d1_3;
    wire signed [CORE_WIDTH-1:0] d2_3;
    wire signed [CORE_WIDTH-1:0] d3_3;
    wire signed [PIPE_VALUE_WIDTH-1:0] base_3_pipe;
    wire signed [PIPE_VALUE_WIDTH-1:0] d1_3_pipe;
    wire signed [PIPE_VALUE_WIDTH-1:0] d2_3_pipe;
    wire signed [PIPE_VALUE_WIDTH-1:0] d3_3_pipe;
    wire [3:0] y_index_3;
    wire [1:0] level_3;
    wire divide_3;
    wire signed [11:0] exponent_3;
    wire sign_3, invalid_3, infinity_3, zero_3;
    assign {base_3_pipe, d1_3_pipe, d2_3_pipe, d3_3_pipe,
            y_index_3, level_3, divide_3, exponent_3, sign_3,
            invalid_3, infinity_3, zero_3} = cut2_out;
    assign base_3 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){base_3_pipe[PIPE_VALUE_WIDTH-1]}}, base_3_pipe};
    assign d1_3 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){d1_3_pipe[PIPE_VALUE_WIDTH-1]}}, d1_3_pipe};
    assign d2_3 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){d2_3_pipe[PIPE_VALUE_WIDTH-1]}}, d2_3_pipe};
    assign d3_3 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){d3_3_pipe[PIPE_VALUE_WIDTH-1]}}, d3_3_pipe};

    // Segment 3: shared correction accumulation.
    wire signed [CORE_WIDTH-1:0] use_d1 = level_3 >= 1 ? d1_3 : 0;
    wire signed [CORE_WIDTH-1:0] use_d2 = level_3 >= 2 ? d2_3 : 0;
    wire signed [CORE_WIDTH-1:0] use_d3 = level_3 >= 3 ? d3_3 : 0;
    wire signed [CORE_WIDTH-1:0] sum0, carry0;
    wire signed [CORE_WIDTH-1:0] sum1, carry1;
    wire signed [CORE_WIDTH-1:0] shared_c4;
    csa3 #(.WIDTH(CORE_WIDTH)) csa0 (
        .input_a(base_3), .input_b(use_d1), .input_c(use_d2),
        .sum(sum0), .carry(carry0)
    );
    csa3 #(.WIDTH(CORE_WIDTH)) csa1 (
        .input_a(sum0), .input_b(carry0), .input_c(use_d3),
        .sum(sum1), .carry(carry1)
    );
    assign shared_c4 = sum1 + carry1;

    wire [49:0] cut3_in = {
        shared_c4[PIPE_VALUE_WIDTH-1:0], y_index_3, level_3,
        divide_3, exponent_3,
        sign_3, invalid_3, infinity_3, zero_3
    };
    wire [49:0] cut3_out;
    oadm_pipe_cut #(.WIDTH(50), .REGISTERED(PIPE_MASK[3])) cut3 (
        .clk(clk), .data_in(cut3_in), .data_out(cut3_out)
    );
    wire signed [CORE_WIDTH-1:0] shared_4;
    wire signed [PIPE_VALUE_WIDTH-1:0] shared_4_pipe;
    wire [3:0] y_index_4;
    wire [1:0] level_4;
    wire divide_4;
    wire signed [11:0] exponent_4;
    wire sign_4, invalid_4, infinity_4, zero_4;
    assign {shared_4_pipe, y_index_4, level_4, divide_4, exponent_4,
            sign_4, invalid_4, infinity_4, zero_4} = cut3_out;
    assign shared_4 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){shared_4_pipe[PIPE_VALUE_WIDTH-1]}}, shared_4_pipe};

    // Segment 4: runtime LUT selection and reciprocal-square scaling.
    reg [6:0] coefficient_c5;
    reg signed [35:0] product_c5;
    reg signed [CORE_WIDTH-1:0] divided_c5;
    wire signed [35:0] shared_extended = {{7{shared_4[28]}}, shared_4};
    always @* begin
        coefficient_c5 = 7'h39;
        case (level_4)
            2'd0: coefficient_c5 = 7'h39;
            2'd1: coefficient_c5 = y_index_4[3] ? 7'h2a : 7'h52;
            2'd2: begin
                case (y_index_4[3:2])
                    2'b00: coefficient_c5 = 7'h65;
                    2'b01: coefficient_c5 = 7'h44;
                    2'b10: coefficient_c5 = 7'h30;
                    default: coefficient_c5 = 7'h24;
                endcase
            end
            default: begin
                case (y_index_4[3:1])
                    3'b000: coefficient_c5 = 7'h71;
                    3'b001: coefficient_c5 = 7'h5b;
                    3'b010: coefficient_c5 = 7'h4a;
                    3'b011: coefficient_c5 = 7'h3e;
                    3'b100: coefficient_c5 = 7'h34;
                    3'b101: coefficient_c5 = 7'h2d;
                    3'b110: coefficient_c5 = 7'h27;
                    default: coefficient_c5 = 7'h22;
                endcase
            end
        endcase
        product_c5 = shared_extended * coefficient_c5;
        divided_c5 = product_c5[35:7];
    end

    wire [70:0] cut4_in = {
        divided_c5[PIPE_VALUE_WIDTH-1:0],
        shared_4[PIPE_VALUE_WIDTH-1:0], divide_4, exponent_4,
        sign_4, invalid_4, infinity_4, zero_4
    };
    wire [70:0] cut4_out;
    oadm_pipe_cut #(.WIDTH(71), .REGISTERED(PIPE_MASK[4])) cut4 (
        .clk(clk), .data_in(cut4_in), .data_out(cut4_out)
    );
    wire signed [CORE_WIDTH-1:0] divided_5;
    wire signed [CORE_WIDTH-1:0] shared_5;
    wire signed [PIPE_VALUE_WIDTH-1:0] divided_5_pipe;
    wire signed [PIPE_VALUE_WIDTH-1:0] shared_5_pipe;
    wire divide_5;
    wire signed [11:0] exponent_5;
    wire sign_5, invalid_5, infinity_5, zero_5;
    assign {divided_5_pipe, shared_5_pipe, divide_5, exponent_5,
            sign_5, invalid_5, infinity_5, zero_5} = cut4_out;
    assign divided_5 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){divided_5_pipe[PIPE_VALUE_WIDTH-1]}}, divided_5_pipe};
    assign shared_5 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){shared_5_pipe[PIPE_VALUE_WIDTH-1]}}, shared_5_pipe};

    // Segment 5: runtime MUL/DIV selection.
    wire signed [CORE_WIDTH-1:0] core_c6 = divide_5 ? divided_5 : shared_5;
    wire [42:0] cut5_in = {
        core_c6[PIPE_VALUE_WIDTH-1:0], exponent_5,
        sign_5, invalid_5, infinity_5, zero_5
    };
    wire [42:0] cut5_out;
    oadm_pipe_cut #(.WIDTH(43), .REGISTERED(PIPE_MASK[5])) cut5 (
        .clk(clk), .data_in(cut5_in), .data_out(cut5_out)
    );
    wire signed [CORE_WIDTH-1:0] core_6;
    wire signed [PIPE_VALUE_WIDTH-1:0] core_6_pipe;
    wire signed [11:0] exponent_6;
    wire sign_6, invalid_6, infinity_6, zero_6;
    assign {core_6_pipe, exponent_6, sign_6, invalid_6,
            infinity_6, zero_6} = cut5_out;
    assign core_6 = {{(CORE_WIDTH-PIPE_VALUE_WIDTH){core_6_pipe[PIPE_VALUE_WIDTH-1]}}, core_6_pipe};

    // Segment 6: FP32 normalization and special-value selection.
    reg signed [CORE_WIDTH-1:0] normalized_c7;
    reg signed [11:0] result_exponent_c7;
    reg [31:0] finite_c7;
    reg [31:0] result_c7;
    always @* begin
        normalized_c7 = core_6;
        result_exponent_c7 = exponent_6;
        if (core_6 >= TWO_Q) begin
            normalized_c7 = core_6 >>> 1;
            result_exponent_c7 = result_exponent_c7 + 1;
        end else if (core_6 >= ONE_Q) begin
            normalized_c7 = core_6;
        end else if (core_6 >= (ONE_Q >>> 1)) begin
            normalized_c7 = core_6 <<< 1;
            result_exponent_c7 = result_exponent_c7 - 1;
        end else if (core_6 >= (ONE_Q >>> 2)) begin
            normalized_c7 = core_6 <<< 2;
            result_exponent_c7 = result_exponent_c7 - 2;
        end else begin
            normalized_c7 = core_6 <<< 3;
            result_exponent_c7 = result_exponent_c7 - 3;
        end

        if ((core_6 <= 0) || (result_exponent_c7 <= 0)) begin
            finite_c7 = {sign_6, 31'b0};
        end else if (result_exponent_c7 >= 255) begin
            finite_c7 = {sign_6, 8'hff, 23'b0};
        end else begin
            finite_c7 = {sign_6, result_exponent_c7[7:0],
                         normalized_c7[22:0]};
        end

        if (invalid_6) begin
            result_c7 = QUIET_NAN;
        end else if (infinity_6) begin
            result_c7 = {sign_6, 8'hff, 23'b0};
        end else if (zero_6) begin
            result_c7 = {sign_6, 31'b0};
        end else begin
            result_c7 = finite_c7;
        end
    end

    oadm_pipe_cut #(.WIDTH(32), .REGISTERED(PIPE_MASK[6])) cut6 (
        .clk(clk), .data_in(result_c7), .data_out(result)
    );
endmodule
