module MUX_8_direct(
	input E,S0,S1,S2,I0,I1,I2,I3,I4,I5,I6,I7,
	output Y);
assign Y = E&(S2?(S1?(S0?I7:I6):(S0?I5:I4)):(S1?(S0?I3:I2):(S0?I1:I0)));
endmodule
