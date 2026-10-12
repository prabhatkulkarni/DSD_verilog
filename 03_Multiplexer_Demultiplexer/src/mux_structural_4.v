module MUX_4_structural(
	input S0,S1,I0,I1,I2,I3,E,
	output Y);
wire en1,en2,o1,o2;
assign en1  = ~S1;
assign en2 = S1;
MUX_2 m1(
	.S0(S0),
	.I0(I0),
	.I1(I1),
	.E(en1),
	.Y(o1));
MUX_2 m2(
	.S0(S0),
	.I0(I2),
	.I1(I3),
	.E(en2),
	.Y(o2));	
assign Y = E&(o1|o2);
endmodule
