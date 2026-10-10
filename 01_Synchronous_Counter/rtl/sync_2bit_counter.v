module sync_2bit_counter(
 input wire  clk,
 output wire q1,
 output wire q2
 );
 wire j1,k1;
 wire j2,k2;
 wire q1_bar, q2_bar;
 assign j1 = 1'b1;
 assign k1 = 1'b1;
 assign j2 = q1;
 assign k2  = q1;
jk_ff jk1(
 .j(j1),
 .k(k1),
 .clk(clk),
 .q(q1),
 .q_bar(q1_bar)
 );
 jk_ff jk2(
 .j(j2),
 .k(k2),
 .clk(clk),
 .q(q2),
 .q_bar(q2_bar)
 );
endmodule

  
 