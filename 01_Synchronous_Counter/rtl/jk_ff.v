module jk_ff(
	input wire j,
	input wire k,
	input wire clk,
	output wire q,
	output wire q_bar
);
wire s;
wire r;
assign s = j&q_bar;
assign r = k&q;
sr_ff sr(
	.s(s),
	.r(r),
	.clk(clk),
	.q(q),
	.q_bar(q_bar)
);
endmodule
