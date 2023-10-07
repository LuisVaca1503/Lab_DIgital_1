module sumaLSG_tb;

  // Definir las señales de entrada y salida
  reg [3:0] num;
  reg Cin;
  wire [3:0] numout;

  // Instancia del módulo que se va a probar
  sumaLSG uut (
    .num(num),
    .Cin(Cin),
    .numout(numout)
  );

  // Inicialización de señales
  initial begin
    // Inicializa las señales de entrada
    num = 4'b1101; // Cambia estos valores según tus necesidades
    Cin = 1'b1;    // Cambia 1 para llevar, 0 para no llevar

    // Espera un ciclo para que se actualicen las salidas
    #1;

    // Verificar las salidas
    if (numout === 4'b1110) begin
      $display("Prueba PASADA: la saldia es correcto.");
    end else begin
      $display("Prueba FALLIDA: la salida no es correcto.");
    end

    // Puedes agregar más pruebas aquí si lo deseas

    // Finalizar simulación
    $finish;
  end
initial
begin
	$dumpfile("top.vcd");
    $dumpvars(0, sumaLSG_tb);
 end
endmodule
