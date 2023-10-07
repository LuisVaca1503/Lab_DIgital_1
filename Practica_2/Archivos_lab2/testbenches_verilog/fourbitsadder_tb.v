module fourbitsadder_tb;

  // Definir las señales de entrada y salida
  reg [3:0] a;
  reg [3:0] b;
  reg Cin;
  wire C_out;
  wire [3:0] Sum_total;

  // Instancia del módulo que se va a probar
  fourbitsadder uut (
    .a(a),
    .b(b),
    .Cin(Cin),
    .cout(C_out),
    .Sum_total(Sum_total)
  );

  // Inicialización de señales
  initial begin
    // Inicializa las señales de entrada y comienza el caso 1
    
    a = 4'b1101; // Cambia estos valores según tus necesidades
    b = 4'b0110;
    Cin = 1'b0;  // Cambia 1 para llevar, 0 para no llevar

    // Espera un ciclo para que se actualicen las salidas
    #1;

    // Verificar las salidas
    if (C_out === 4'b0001 && Sum_total === 4'b0011) begin
	  $display("A = %b, B = %b, Carry in = %b, Carry out = %b, Suma = %b", a, b, Cin, C_out, Sum_total);
      $display("Prueba PASADA: C_out y Sum_total son correctos.");
    end else begin
      $display("A = %b, B = %b, Carry in = %b, Carry out = %b, Suma = %b", a, b, Cin, C_out, Sum_total);
      $display("Prueba FALLIDA: C_out o Sum_total no son correctos.");
    end

    // Puedes agregar más pruebas aquí si lo deseas
    
    #10; //Caso 2
    
    a = 4'b1000; // Cambia estos valores según tus necesidades
    b = 4'b1111;
    Cin = 1'b0;  // Cambia 1 para llevar, 0 para no llevar

    // Espera un ciclo para que se actualicen las salidas
    #1;

    // Verificar las salidas
    if (C_out === 4'b0001 && Sum_total === 4'b0111) begin
	  $display("A = %b, B = %b, Carry in = %b, Carry out = %b, Suma = %b", a, b, Cin, C_out, Sum_total);
      $display("Prueba PASADA: C_out y Sum_total son correctos.");
    end else begin
      $display("A = %b, B = %b, Carry in = %b, Carry out = %b, Suma = %b", a, b, Cin, C_out, Sum_total);
      $display("Prueba FALLIDA: C_out o Sum_total no son correctos.");
    end
    
    #10; // Caso 3
    a = 4'b0010; // Cambia estos valores según tus necesidades
    b = 4'b0101;
    Cin = 1'b0;  // Cambia 1 para llevar, 0 para no llevar

    // Espera un ciclo para que se actualicen las salidas
    #1;

    // Verificar las salidas
    if (C_out === 4'b0000 && Sum_total === 4'b0111) begin
	  $display("A = %b, B = %b, Carry in = %b, Carry out = %b, Suma = %b", a, b, Cin, C_out, Sum_total);
      $display("Prueba PASADA: C_out y Sum_total son correctos.");
    end else begin
      $display("A = %b, B = %b, Carry in = %b, Carry out = %b, Suma = %b", a, b, Cin, C_out, Sum_total);
      $display("Prueba FALLIDA: C_out o Sum_total no son correctos.");
    end

    // Finalizar simulación
    $finish;
  end
initial
begin
	$dumpfile("top.vcd");
    $dumpvars(0, fourbitsadder_tb);
 end

endmodule

