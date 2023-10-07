module complementoados_tb;

  // Definir las señales de entrada y salida
  reg [3:0] numorigin;
  reg sign;
  wire [3:0] negativenum;

  // Instancia del módulo que se va a probar
  complementoados uut (
    .numorigin(numorigin),
    .sign(sign),
    .negativenum(negativenum)
  );

  // Inicialización de señales
  initial begin
    // Inicializa las señales de entrada
    numorigin = 4'b1101; // Cambia estos valores según tus necesidades
    sign = 1'b1;         // Cambia 1 para negativo, 0 para positivo

    // Espera un ciclo para que se actualicen las salidas
    #1;

    // Verificar las salidas
    if (negativenum === 4'b0011) begin
      $display("Prueba PASADA: el complemento A2 es correcto.");
    end else begin
      $display("Prueba FALLIDA: el complemento A2 no es correcto.");
    end


    // Finalizar simulación
    $finish;
  end

endmodule
