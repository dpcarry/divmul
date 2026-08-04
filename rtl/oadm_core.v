module oadm_core (
    input  wire        clk,
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output reg signed [28:0] mantissa_value
);
    localparam INPUT_WIDTH = 24;
    localparam CORE_WIDTH = 29;
    localparam FRAC_BITS = 23;
    localparam signed [CORE_WIDTH-1:0] ONE_Q = 29'sd8388608;
    localparam signed [CORE_WIDTH-1:0] MIDPOINT_Q = 29'sd12582912;
    localparam signed [CORE_WIDTH-1:0] TWO_POINT_TWO_FIVE_Q =
        29'sd18874368;

    wire signed [CORE_WIDTH-1:0] x_ext_input;
    wire signed [CORE_WIDTH-1:0] y_ext_input;
    wire [7:0] reciprocal_square_input;

    reg signed [CORE_WIDTH-1:0] base_stage1;
    reg signed [CORE_WIDTH-1:0] delta_1_stage1;
    reg signed [CORE_WIDTH-1:0] midpoint_x_stage1;
    reg signed [CORE_WIDTH-1:0] midpoint_y_stage1;
    reg signed [CORE_WIDTH-1:0] x_stage1;
    reg signed [CORE_WIDTH-1:0] y_stage1;
    reg [7:0] coefficient_stage1;
    reg [1:0] level_stage1;
    reg divide_mode_stage1;

    reg signed [CORE_WIDTH-1:0] base_stage2;
    reg signed [CORE_WIDTH-1:0] delta_1_stage2;
    reg signed [CORE_WIDTH-1:0] delta_2_stage2;
    reg signed [CORE_WIDTH-1:0] midpoint_x_stage2;
    reg signed [CORE_WIDTH-1:0] midpoint_y_stage2;
    reg signed [CORE_WIDTH-1:0] x_stage2;
    reg signed [CORE_WIDTH-1:0] y_stage2;
    reg [7:0] coefficient_stage2;
    reg [1:0] level_stage2;
    reg divide_mode_stage2;

    reg signed [CORE_WIDTH-1:0] base_comb_1;
    reg signed [CORE_WIDTH-1:0] raw_term_1_comb_1;
    reg signed [CORE_WIDTH-1:0] raw_term_2_comb_1;
    reg signed [CORE_WIDTH-1:0] term_1_comb_1;
    reg signed [CORE_WIDTH-1:0] term_2_comb_1;
    reg signed [CORE_WIDTH-1:0] term_3_comb_1;
    reg signed [CORE_WIDTH-1:0] delta_comb_1;
    reg signed [CORE_WIDTH-1:0] midpoint_x_comb_1;
    reg signed [CORE_WIDTH-1:0] midpoint_y_comb_1;

    reg signed [CORE_WIDTH-1:0] raw_term_1_comb_2;
    reg signed [CORE_WIDTH-1:0] raw_term_2_comb_2;
    reg signed [CORE_WIDTH-1:0] term_1_comb_2;
    reg signed [CORE_WIDTH-1:0] term_2_comb_2;
    reg signed [CORE_WIDTH-1:0] term_3_comb_2;
    reg signed [CORE_WIDTH-1:0] delta_comb_2;
    reg signed [CORE_WIDTH-1:0] midpoint_x_comb_2;
    reg signed [CORE_WIDTH-1:0] midpoint_y_comb_2;

    reg signed [CORE_WIDTH-1:0] raw_term_1_comb_3;
    reg signed [CORE_WIDTH-1:0] raw_term_2_comb_3;
    reg signed [CORE_WIDTH-1:0] term_1_comb_3;
    reg signed [CORE_WIDTH-1:0] term_2_comb_3;
    reg signed [CORE_WIDTH-1:0] term_3_comb_3;
    reg signed [CORE_WIDTH-1:0] delta_comb_3;

    reg signed [CORE_WIDTH-1:0] base_stage3;
    reg signed [CORE_WIDTH-1:0] delta_1_stage3;
    reg signed [CORE_WIDTH-1:0] delta_2_stage3;
    reg signed [CORE_WIDTH-1:0] delta_3_stage3;
    reg [7:0] coefficient_stage3;
    reg [1:0] level_stage3;
    reg divide_mode_stage3;

    wire signed [CORE_WIDTH-1:0] selected_delta_1;
    wire signed [CORE_WIDTH-1:0] selected_delta_2;
    wire signed [CORE_WIDTH-1:0] selected_delta_3;
    wire signed [CORE_WIDTH-1:0] csa_sum_0;
    wire signed [CORE_WIDTH-1:0] csa_carry_0;
    wire signed [CORE_WIDTH-1:0] csa_sum_1;
    wire signed [CORE_WIDTH-1:0] csa_carry_1;
    wire signed [CORE_WIDTH-1:0] shared_plane_comb;

    reg signed [CORE_WIDTH-1:0] shared_plane_stage4;
    reg [7:0] coefficient_stage4;
    reg divide_mode_stage4;
    reg signed [CORE_WIDTH-1:0] shared_plane_stage5;
    reg divide_mode_stage5;
    wire signed [CORE_WIDTH-1:0] divided_plane_stage5;

    assign x_ext_input = $signed(
        {{(CORE_WIDTH-INPUT_WIDTH){1'b0}}, x_mantissa});
    assign y_ext_input = $signed(
        {{(CORE_WIDTH-INPUT_WIDTH){1'b0}}, y_mantissa});

    recip_lut reciprocal_lut (
        .level(level),
        .y_fraction_msb(y_mantissa[22:20]),
        .reciprocal_square(reciprocal_square_input)
    );

    // Pipeline stage 1: base plane and first multi-level correction.
    always @* begin
        if (divide_mode) begin
            base_comb_1 = TWO_POINT_TWO_FIVE_Q
                        + x_ext_input + (x_ext_input >>> 1)
                        - y_ext_input - (y_ext_input >>> 1);
            raw_term_1_comb_1 = x_ext_input + MIDPOINT_Q;
            raw_term_2_comb_1 = MIDPOINT_Q - y_ext_input;
            term_3_comb_1 = (x_mantissa[22] == y_mantissa[22])
                ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        end else begin
            base_comb_1 = -TWO_POINT_TWO_FIVE_Q
                        + x_ext_input + (x_ext_input >>> 1)
                        + y_ext_input + (y_ext_input >>> 1);
            raw_term_1_comb_1 = x_ext_input - MIDPOINT_Q;
            raw_term_2_comb_1 = y_ext_input - MIDPOINT_Q;
            term_3_comb_1 = (x_mantissa[22] != y_mantissa[22])
                ? (ONE_Q >>> 4) : -(ONE_Q >>> 4);
        end
        term_1_comb_1 = (y_mantissa[22]
            ? raw_term_1_comb_1 : -raw_term_1_comb_1) >>> 2;
        term_2_comb_1 = (x_mantissa[22]
            ? raw_term_2_comb_1 : -raw_term_2_comb_1) >>> 2;
        delta_comb_1 = term_1_comb_1 + term_2_comb_1 + term_3_comb_1;
        midpoint_x_comb_1 = x_mantissa[22]
            ? MIDPOINT_Q + (ONE_Q >>> 2) : MIDPOINT_Q - (ONE_Q >>> 2);
        midpoint_y_comb_1 = y_mantissa[22]
            ? MIDPOINT_Q + (ONE_Q >>> 2) : MIDPOINT_Q - (ONE_Q >>> 2);
    end

    always @(posedge clk) begin
        base_stage1 <= base_comb_1;
        delta_1_stage1 <= delta_comb_1;
        midpoint_x_stage1 <= midpoint_x_comb_1;
        midpoint_y_stage1 <= midpoint_y_comb_1;
        x_stage1 <= x_ext_input;
        y_stage1 <= y_ext_input;
        coefficient_stage1 <= reciprocal_square_input;
        level_stage1 <= level;
        divide_mode_stage1 <= divide_mode;
    end

    // Pipeline stage 2: second correction and midpoint refinement.
    always @* begin
        if (divide_mode_stage1) begin
            raw_term_1_comb_2 = x_stage1 + midpoint_x_stage1;
            raw_term_2_comb_2 = midpoint_y_stage1 - y_stage1;
            term_3_comb_2 = (x_stage1[21] == y_stage1[21])
                ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        end else begin
            raw_term_1_comb_2 = x_stage1 - midpoint_x_stage1;
            raw_term_2_comb_2 = y_stage1 - midpoint_y_stage1;
            term_3_comb_2 = (x_stage1[21] != y_stage1[21])
                ? (ONE_Q >>> 6) : -(ONE_Q >>> 6);
        end
        term_1_comb_2 = (y_stage1[21]
            ? raw_term_1_comb_2 : -raw_term_1_comb_2) >>> 3;
        term_2_comb_2 = (x_stage1[21]
            ? raw_term_2_comb_2 : -raw_term_2_comb_2) >>> 3;
        delta_comb_2 = term_1_comb_2 + term_2_comb_2 + term_3_comb_2;
        midpoint_x_comb_2 = x_stage1[21]
            ? midpoint_x_stage1 + (ONE_Q >>> 3)
            : midpoint_x_stage1 - (ONE_Q >>> 3);
        midpoint_y_comb_2 = y_stage1[21]
            ? midpoint_y_stage1 + (ONE_Q >>> 3)
            : midpoint_y_stage1 - (ONE_Q >>> 3);
    end

    always @(posedge clk) begin
        base_stage2 <= base_stage1;
        delta_1_stage2 <= delta_1_stage1;
        delta_2_stage2 <= delta_comb_2;
        midpoint_x_stage2 <= midpoint_x_comb_2;
        midpoint_y_stage2 <= midpoint_y_comb_2;
        x_stage2 <= x_stage1;
        y_stage2 <= y_stage1;
        coefficient_stage2 <= coefficient_stage1;
        level_stage2 <= level_stage1;
        divide_mode_stage2 <= divide_mode_stage1;
    end

    // Pipeline stage 3: final multi-level correction.
    always @* begin
        if (divide_mode_stage2) begin
            raw_term_1_comb_3 = x_stage2 + midpoint_x_stage2;
            raw_term_2_comb_3 = midpoint_y_stage2 - y_stage2;
            term_3_comb_3 = (x_stage2[20] == y_stage2[20])
                ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
        end else begin
            raw_term_1_comb_3 = x_stage2 - midpoint_x_stage2;
            raw_term_2_comb_3 = y_stage2 - midpoint_y_stage2;
            term_3_comb_3 = (x_stage2[20] != y_stage2[20])
                ? (ONE_Q >>> 8) : -(ONE_Q >>> 8);
        end
        term_1_comb_3 = (y_stage2[20]
            ? raw_term_1_comb_3 : -raw_term_1_comb_3) >>> 4;
        term_2_comb_3 = (x_stage2[20]
            ? raw_term_2_comb_3 : -raw_term_2_comb_3) >>> 4;
        delta_comb_3 = term_1_comb_3 + term_2_comb_3 + term_3_comb_3;
    end

    always @(posedge clk) begin
        base_stage3 <= base_stage2;
        delta_1_stage3 <= delta_1_stage2;
        delta_2_stage3 <= delta_2_stage2;
        delta_3_stage3 <= delta_comb_3;
        coefficient_stage3 <= coefficient_stage2;
        level_stage3 <= level_stage2;
        divide_mode_stage3 <= divide_mode_stage2;
    end

    // Pipeline stage 4: shared Eq. 10/11 CSA tree and final carry adder.
    assign selected_delta_1 = (level_stage3 >= 2'd1)
        ? delta_1_stage3 : {CORE_WIDTH{1'b0}};
    assign selected_delta_2 = (level_stage3 >= 2'd2)
        ? delta_2_stage3 : {CORE_WIDTH{1'b0}};
    assign selected_delta_3 = (level_stage3 >= 2'd3)
        ? delta_3_stage3 : {CORE_WIDTH{1'b0}};

    csa3 #(.WIDTH(CORE_WIDTH)) csa_level_0 (
        .input_a(base_stage3),
        .input_b(selected_delta_1),
        .input_c(selected_delta_2),
        .sum(csa_sum_0),
        .carry(csa_carry_0)
    );

    csa3 #(.WIDTH(CORE_WIDTH)) csa_level_1 (
        .input_a(csa_sum_0),
        .input_b(csa_carry_0),
        .input_c(selected_delta_3),
        .sum(csa_sum_1),
        .carry(csa_carry_1)
    );

    assign shared_plane_comb = csa_sum_1 + csa_carry_1;

    always @(posedge clk) begin
        shared_plane_stage4 <= shared_plane_comb;
        coefficient_stage4 <= coefficient_stage3;
        divide_mode_stage4 <= divide_mode_stage3;
    end

    // Pipeline stage 5: first half of divider scaling; delay the MUL bypass.
    sa_scale #(
        .VALUE_WIDTH(CORE_WIDTH),
        .COEFF_WIDTH(8)
    ) division_scale (
        .clk(clk),
        .value(shared_plane_stage4),
        .coefficient(coefficient_stage4),
        .scaled_value(divided_plane_stage5)
    );

    always @(posedge clk) begin
        shared_plane_stage5 <= shared_plane_stage4;
        divide_mode_stage5 <= divide_mode_stage4;
    end

    // Pipeline stage 6: finish divider scaling and select the shared result.
    always @(posedge clk) begin
        mantissa_value <= divide_mode_stage5
            ? divided_plane_stage5 : shared_plane_stage5;
    end
endmodule
