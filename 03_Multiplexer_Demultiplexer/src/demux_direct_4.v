module DEMUX_direct_4(
	input I,S0,S1,E,
	output O0,O1,O2,O3);
assign O0 = I&E&(~S0)&(~S1);
assign O1 = I&E&(S0)&(~S1);
assign O2 = I&E&(~S0)&(S1);
assign O3 = I&E&(S0)&(S1);
endmodule 