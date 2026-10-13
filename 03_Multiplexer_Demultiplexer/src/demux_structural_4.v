module DEMUX_Structural_4(
	input I,S0,S1,E,
	output O0,O1,O2,O3);
wire en1,en2;
assign en1 = E&(~S1);
assign en2 =E&S1; 
DEMUX_2 dm1 (
 .I(I),
 .S0(S0),
 .E(en1),
 .O0(O0),
 .O1(O1));
 DEMUX_2 dm2 (
 .I(I),
 .S0(S0),
 .E(en2),
 .O0(O2),
 .O1(O3));
 endmodule
 