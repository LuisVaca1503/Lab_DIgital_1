module complementoados (
	input wire [3:0]numorigin,
	input sign,
	output wire [3:0]negativenum);
	
wire [3:0]temporalarchive; 

negadorfourbits negadorfourbits1(numorigin,sign,temporalarchive);
sumaLSG sumaLSG1(temporalarchive,sign,negativenum);

endmodule

