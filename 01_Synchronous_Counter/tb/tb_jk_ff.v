module tb_jk_ff;

    reg j;
    reg k;
    reg clk;

    wire q;
    wire q_bar;

    jk_ff dut(
        .j(j),
        .k(k),
        .clk(clk),
        .q(q),
        .q_bar(q_bar)
    );

    // Clock generation
    initial begin
        clk = 0;
    end
    initial begin
    dut.sr.q = 1'b0;
    end
    always #5 clk = ~clk;

    // Monitor
    initial begin
        $monitor("J=%d K=%d CLK=%d Q=%d Q_bar=%d",
                 j, k, clk, q, q_bar);
    end

    // Test cases
    initial begin

        // J=0, K=0 → HOLD
        j = 0;
        k = 0;
        #10;

        // J=0, K=1 → RESET
        j = 0;
        k = 1;
        #10;

        // J=1, K=0 → SET
        j = 1;
        k = 0;
        #10;

        // J=1, K=1 → TOGGLE
        j = 1;
        k = 1;
        #10;

        $finish;
    end

endmodule
