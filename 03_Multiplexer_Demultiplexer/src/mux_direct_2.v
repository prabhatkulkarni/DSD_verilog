module MUX_2(
	input S0,I0,I1,E,
	output Y);
assign Y = E&((S0)?I1:I0);
endmodule
