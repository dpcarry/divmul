module oadm_core (
    input  wire [23:0] x_mantissa,
    input  wire [23:0] y_mantissa,
    input  wire [1:0]  level,
    input  wire        divide_mode,
    output wire signed [28:0] mantissa_value
);
    localparam INPUT_WIDTH = 24;
    localparam CORE_WIDTH = 29;
    localparam FRAC_BITS = 23;

    reg signed [CORE_WIDTH-1:0] x_ext;
    reg signed [CORE_WIDTH-1:0] y_ext;
    reg signed [CORE_WIDTH-1:0] one_q;
    reg signed [CORE_WIDTH-1:0] midpoint_x;
    reg signed [CORE_WIDTH-1:0] midpoint_y;
    reg signed [CORE_WIDTH-1:0] midpoint_step;
    reg signed [CORE_WIDTH-1:0] third_term_magnitude;
    reg signed [CORE_WIDTH-1:0] one_point_five_x;
    reg signed [CORE_WIDTH-1:0] one_point_five_y;
    reg signed [CORE_WIDTH-1:0] two_point_two_five;
    reg signed [CORE_WIDTH-1:0] base_plane;
    reg signed [CORE_WIDTH-1:0] raw_term_1;
    reg signed [CORE_WIDTH-1:0] raw_term_2;
    reg signed [CORE_WIDTH-1:0] term_1;
    reg signed [CORE_WIDTH-1:0] term_2;
    reg signed [CORE_WIDTH-1:0] term_3;
    reg signed [CORE_WIDTH-1:0] delta;
    reg signed [CORE_WIDTH-1:0] delta_1;
    reg signed [CORE_WIDTH-1:0] delta_2;
    reg signed [CORE_WIDTH-1:0] delta_3;
    reg x_direction;
    reg y_direction;
    integer stage;

    wire [7:0] reciprocal_square;
    wire signed [CORE_WIDTH-1:0] divided_plane;
    wire signed [CORE_WIDTH-1:0] selected_delta_1;
    wire signed [CORE_WIDTH-1:0] selected_delta_2;
    wire signed [CORE_WIDTH-1:0] selected_delta_3;
    wire signed [CORE_WIDTH-1:0] csa_sum_0;
    wire signed [CORE_WIDTH-1:0] csa_carry_0;
    wire signed [CORE_WIDTH-1:0] csa_sum_1;
    wire signed [CORE_WIDTH-1:0] csa_carry_1;
    wire signed [CORE_WIDTH-1:0] shared_plane;

    assign selected_delta_1 = (level >= 2'd1)
        ? delta_1 : {CORE_WIDTH{1'b0}};
    assign selected_delta_2 = (level >= 2'd2)
        ? delta_2 : {CORE_WIDTH{1'b0}};
    assign selected_delta_3 = (level >= 2'd3)
        ? delta_3 : {CORE_WIDTH{1'b0}};

    csa3 #(
        .WIDTH(CORE_WIDTH)
    ) csa_level_0 (
        .input_a(base_plane),
        .input_b(selected_delta_1),
        .input_c(selected_delta_2),
        .sum(csa_sum_0),
        .carry(csa_carry_0)
    );

    csa3 #(
        .WIDTH(CORE_WIDTH)
    ) csa_level_1 (
        .input_a(csa_sum_0),
        .input_b(csa_carry_0),
        .input_c(selected_delta_3),
        .sum(csa_sum_1),
        .carry(csa_carry_1)
    );

    assign shared_plane = csa_sum_1 + csa_carry_1;

    recip_lut reciprocal_lut (
        .level(level),
        .y_fraction_msb(y_mantissa[22:20]),
        .reciprocal_square(reciprocal_square)
    );

    sa_scale #(
        .VALUE_WIDTH(CORE_WIDTH),
        .COEFF_WIDTH(8)
    ) division_scale (
        .value(shared_plane),
        .coefficient(reciprocal_square),
        .scaled_value(divided_plane)
    );

    // The same midpoint and correction hardware implements both paper formulas:
    // MUL: -a*b + b*x + a*y; DIV omega: a*b + b*x - a*y.
    always @* begin
        x_ext = $signed({{(CORE_WIDTH-INPUT_WIDTH){1'b0}}, x_mantissa});
        y_ext = $signed({{(CORE_WIDTH-INPUT_WIDTH){1'b0}}, y_mantissa});
        one_q = $signed({{(CORE_WIDTH-1){1'b0}}, 1'b1}) <<< FRAC_BITS;

        midpoint_x = one_q + (one_q >>> 1);
        midpoint_y = one_q + (one_q >>> 1);
        one_point_five_x = x_ext + (x_ext >>> 1);
        one_point_five_y = y_ext + (y_ext >>> 1);
        two_point_two_five = (one_q <<< 1) + (one_q >>> 2);

        if (divide_mode) begin
            base_plane = two_point_two_five
                       + one_point_five_x - one_point_five_y;
        end else begin
            base_plane = -two_point_two_five
                       + one_point_five_x + one_point_five_y;
        end

        raw_term_1 = {CORE_WIDTH{1'b0}};
        raw_term_2 = {CORE_WIDTH{1'b0}};
        term_1 = {CORE_WIDTH{1'b0}};
        term_2 = {CORE_WIDTH{1'b0}};
        term_3 = {CORE_WIDTH{1'b0}};
        delta = {CORE_WIDTH{1'b0}};
        delta_1 = {CORE_WIDTH{1'b0}};
        delta_2 = {CORE_WIDTH{1'b0}};
        delta_3 = {CORE_WIDTH{1'b0}};
        midpoint_step = {CORE_WIDTH{1'b0}};
        third_term_magnitude = {CORE_WIDTH{1'b0}};
        x_direction = 1'b0;
        y_direction = 1'b0;

        for (stage = 1; stage <= 3; stage = stage + 1) begin
            x_direction = x_mantissa[FRAC_BITS-stage];
            y_direction = y_mantissa[FRAC_BITS-stage];
            midpoint_step = one_q >>> (stage + 1);
            third_term_magnitude = one_q >>> (stage + stage + 2);

            if (divide_mode) begin
                raw_term_1 = x_ext + midpoint_x;
                raw_term_2 = midpoint_y - y_ext;
                term_3 = (x_direction == y_direction)
                    ? third_term_magnitude : -third_term_magnitude;
            end else begin
                raw_term_1 = x_ext - midpoint_x;
                raw_term_2 = y_ext - midpoint_y;
                term_3 = (x_direction != y_direction)
                    ? third_term_magnitude : -third_term_magnitude;
            end

            term_1 = (y_direction ? raw_term_1 : -raw_term_1)
                   >>> (stage + 1);
            term_2 = (x_direction ? raw_term_2 : -raw_term_2)
                   >>> (stage + 1);
            delta = term_1 + term_2 + term_3;

            case (stage)
                1: delta_1 = delta;
                2: delta_2 = delta;
                3: delta_3 = delta;
            endcase

            midpoint_x = x_direction
                ? midpoint_x + midpoint_step : midpoint_x - midpoint_step;
            midpoint_y = y_direction
                ? midpoint_y + midpoint_step : midpoint_y - midpoint_step;
        end
    end

    assign mantissa_value = divide_mode ? divided_plane : shared_plane;
endmodule
