module sr_ff(
	input wire s,
	input wire r,
	input wire clk,
	output reg q,
	output wire q_bar
);
assign q_bar = ~q;
always @(posedge clk)begin 
	if(s && !r)
		q <= 1'b1;
	else if (!s && r)
		q <= 1'b0;
end
endmodule
