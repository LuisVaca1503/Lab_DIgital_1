module sumrestfourbits_testbench;

    // Definición de señales de entrada y salida
    reg [3:0] A, B;
    reg sign;
    reg cin;
    wire ct;
    wire [3:0] sumt;
	
	    // Instanciar el módulo que estamos probando
    sumrestfourbits uut (
        .A(A),
        .B(B),
        .sign(sign),
        .cin(cin),
        .ct(ct),
        .sumt(sumt)
    );
    
    // Generación de casos de prueba
    initial begin
 

        // Caso de prueba 1: Suma
        A = 4'b1101; 
		B = 4'b0110;
		sign = 1'b0; // 0 para suma, 1 para resta
		cin = 1'b0;  // Carry inicial (puede ser 0 o 1)
		#10;
        $display("A = %b, B = %b, Signo = %b, Suma = %b, Acarreo = %b", A, B, sign, sumt, ct);
        // Caso de prueba 2: Resta
        A = 4'b0101;
        B = 4'b0010;
        sign = 1'b1; // Signo negativo para resta
        cin = 1'b0;
        #10; // Esperar un ciclo de reloj
        $display("A = %b, B = %b, Signo = %b, Resta = %b, Acarreo = %b", A, B, sign, sumt, ct);

        $finish; // Finalizar la simulación
    end
    
initial
begin
	$dumpfile("top.vcd");
    $dumpvars(0, sumrestfourbits_testbench);
 end
 
endmodule

