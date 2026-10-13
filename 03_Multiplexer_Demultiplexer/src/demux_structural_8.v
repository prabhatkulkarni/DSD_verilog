module DEMUX_Structural_8(
	input I,S0,S1,S2,E,
	output O0,O1,O2,O3,O4,O5,O6,O7);
wire en1,en2;
assign en1 = E&(~S2);
assign en2 =E&S2; 
DEMUX_Structural_4 dm1 (
 .I(I),
 .S0(S0),
 .S1(S1),
 .E(en1),
 .O0(O0),
 .O1(O1),
 .O2(O2),
 .O3(O3));
DEMUX_Structural_4 dm2 (
 .I(I),
 .S0(S0),
 .S1(S1),
 .E(en2),
 .O0(O4),
 .O1(O5),
 .O2(O6),
 .O3(O7));
 endmodule 