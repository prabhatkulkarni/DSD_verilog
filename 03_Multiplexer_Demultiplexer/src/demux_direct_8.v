module DEMUX_direct_8(
	input I,S0,S1,S2,E,
	output O0,O1,O2,O3,O4,O5,O6,O7);
assign O0 = I&E&(~S0)&(~S1)&(~S2);
assign O1 = I&E&(S0)&(~S1)&(~S2);
assign O2 = I&E&(~S0)&(S1)&(~S2);
assign O3 = I&E&(S0)&(S1)&(~S2);
assign O4 = I&E&(~S0)&(~S1)&(S2);
assign O5 = I&E&(S0)&(~S1)&(S2);
assign O6 = I&E&(~S0)&(S1)&(S2);
assign O7 = I&E&(S0)&(S1)&(S2);
endmodule 