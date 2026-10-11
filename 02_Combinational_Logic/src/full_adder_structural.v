module full_adder_structural(
	input a,b,c_in,
	output sum,c_out);
	wire s1,c1,c2;
half_adder h1(
	.a(a),
	.b(b),
	.sum(s1),
	.c_out(c1));
half_adder h2(
	.a(s1),
	.b(c_in),
	.sum(sum),
	.c_out(c2));
assign c_out = c1|c2;
endmodule
