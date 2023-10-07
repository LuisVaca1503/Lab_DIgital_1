module negadorfourbits(
    input wire [3:0]num,
    input wire sign,
    output wire [3:0]negnum
);

assign negnum[0] = sign ^ num[0];
assign negnum[1] = sign ^ num[1];
assign negnum[2] = sign ^ num[2];
assign negnum[3] = sign ^ num[3];

endmodule

	
	
