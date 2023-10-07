// Declaración del módulo
module halfadder (
  input b, a,
  output co, s
);


// Descripción del comportamiento
assign s = a ^ b; // s = a xor b
assign co = a & b; // a and b

endmodule
