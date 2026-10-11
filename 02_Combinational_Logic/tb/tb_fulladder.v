module tb_fulladder;

reg a, b, c_in;
wire sum1, c_out1, sum2, c_out2;

full_adder_direct f1(
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum1),
    .c_out(c_out1)
);

full_adder_structural f2(
    .a(a),
    .b(b),
    .c_in(c_in),
    .sum(sum2),
    .c_out(c_out2)
);

task test_case;

    input ta;
    input tb;
    input tc_in;

    input expected_sum;
    input expected_carry;

    begin


        a = ta;
        b = tb;
        c_in = tc_in;
        #5;

        $display("%d %d %d | %d %d | %d %d | Expected: %d %d",
                 a, b, c_in,
                 sum1, c_out1,
                 sum2, c_out2,
                 expected_sum, expected_carry);


        if ((sum1 == expected_sum) &&
            (c_out1 == expected_carry) &&
            (sum2 == expected_sum) &&
            (c_out2 == expected_carry)) begin

            $display("%d%d%d -> PASS", a, b, c_in);

        end
        else begin

            $display("%d%d%d -> FAIL", a, b, c_in);

        end

    end

endtask


initial begin

    $display("A B C_in | Direct(S C) | Structural(S C) | Expected(S C)");

    test_case(0, 0, 0, 0, 0);
    test_case(0, 0, 1, 1, 0);
    test_case(0, 1, 0, 1, 0);
    test_case(0, 1, 1, 0, 1);
    test_case(1, 0, 0, 1, 0);
    test_case(1, 0, 1, 0, 1);
    test_case(1, 1, 0, 0, 1);
    test_case(1, 1, 1, 1, 1);

    $finish;

end

endmodule