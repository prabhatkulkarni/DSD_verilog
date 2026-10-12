module MUX_4_direct(
	input S0,S1,I0,I1,I2,I3,E,
	output Y);
assign Y = E&(S1?(S0?I3:I2):(S0?I1:I0));
endmodule
