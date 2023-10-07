module negadorfourbits_tb;

  // Definir las señales de entrada y salida
  reg [3:0] num;
  reg sign;
  wire [3:0] negnum;

  // Instancia del módulo que se va a probar
  negadorfourbits uut (
    .num(num),
    .sign(sign),
    .negnum(negnum)
  );

  // Inicialización de señales
  initial begin
    // Inicializa las señales de entrada
    num = 4'b1010; // Cambia estos valores según tus necesidades
    sign = 1'b1;   // Cambia 1 para prueba negativa, 0 para prueba positiva

    // Espera un ciclo para que se actualicen las salidas
    #1;

    // Verificar las salidas
    if (negnum === 4'b0101) begin
      $display("Prueba PASADA: negnum es correcto.");
    end else begin
      $display("Prueba FALLIDA: negnum no es correcto.");
    end

    // Finalizar simulación
    $finish;
  end

 begin
	$dumpfile("top.vcd");
    $dumpvars(0, negadorfourbits_tb);
 end

endmodule
