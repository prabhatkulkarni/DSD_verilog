module sr_latch(
    input wire s,
    input wire r,
    input wire e,
    output reg q,
    output wire q_bar
);

assign q_bar = ~q;

always @(*) begin
    if (e) begin
        if (s && !r)
            q <= 1'b1;
        else if (!s && r)
            q <= 1'b0;
    end
end

endmodule
