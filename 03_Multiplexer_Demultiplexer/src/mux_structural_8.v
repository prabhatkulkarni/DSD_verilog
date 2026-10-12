module MUX_8_structural(
	input E,S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7,
	output Y);
wire en1,en2,o1,o2;
assign en1 = ~S2;
assign en2 = S2;
MUX_4_structural m1(
	.S0(S0),
	.S1(S1),
	.I0(I0),
	.I1(I1),
	.I2(I2),
	.I3(I3),
	.E(en1),
	.Y(o1));
MUX_4_structural m2(
	.S0(S0),
	.S1(S1),
	.I0(I4),
	.I1(I5),
	.I2(I6),
	.I3(I7),
	.E(en2),
	.Y(o2));	
assign Y = E&(o1|o2);
endmodule	