module fourbitsadder (
	input wire [3:0]a,
	input wire[3:0]b,
	input wire Cin,
	output wire cout,
	output wire [3:0] Sum_total
);

wire [3:0] C_out;
assign cout = C_out[3];

fulladder fulladder1 (a[0],b[0],Cin, C_out[0],Sum_total[0]);
fulladder fulladder2 (a[1],b[1],C_out[0],C_out[1],Sum_total[1]);
fulladder fulladder3 (a[2],b[2],C_out[1],C_out[2],Sum_total[2]);
fulladder fulladder4 (a[3],b[3],C_out[2],C_out[3],Sum_total[3]);

endmodule 
