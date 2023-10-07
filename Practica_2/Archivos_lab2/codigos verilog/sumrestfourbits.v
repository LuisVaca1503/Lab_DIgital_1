module sumrestfourbits(
    input wire [3:0] A,
    input wire [3:0] B,
    input sign, // Signo que define si es suma o resta
    input wire cin, // Carry para conexión en cascada
    output ct,
    output wire [3:0] sumt
);

wire [3:0] temporalreg1; // Guarda temporalmente el resultado que arroja complementA2

complementoados complementoados_sumrest(
    .numorigin(B),
    .sign(sign),
    .negativenum(temporalreg1)
); // Agrega el complemento A2 a B

fourbitsadder fourbitsadder1(
    .a(A),
    .b(temporalreg1),
    .Cin(cin),
    .cout(ct),
    .Sum_total(sumt)
); // Realiza la suma de ambos números

endmodule
