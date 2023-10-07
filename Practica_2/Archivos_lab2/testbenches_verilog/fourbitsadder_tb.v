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
    .C_out(C_out),
    .Sum_total(Sum_total)
  );

  // Inicialización de señales
  initial begin
    // Inicializa las señales de entrada
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

    // Finalizar simulación
    $finish;
  end
initial
begin
	$dumpfile("top.vcd");
    $dumpvars(0, fourbitsadder_tb);
 end

endmodule
