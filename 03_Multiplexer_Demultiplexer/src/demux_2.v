module DEMUX_2(
	input I,S0,E,
	output O0,O1);
assign O0 = E&I&(~S0);
assign O1 = E&I&(S0);
endmodule 