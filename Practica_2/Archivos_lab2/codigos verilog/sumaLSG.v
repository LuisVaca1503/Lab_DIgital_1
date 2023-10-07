module sumaLSG(
	input wire [3:0]num,
	input Cin,
	output [3:0]numout);
	
wire [3:0]carrypass;

halfadder halfadder1(Cin,num[0],carrypass[0],numout[0]);
halfadder halfadder2(carrypass[0],num[1],carrypass[1],numout[1]);
halfadder halfadder3(carrypass[1],num[2],carrypass[2],numout[2]);
halfadder halfadder4(carrypass[2],num[3],carrypass[3],numout[3]);

endmodule 
