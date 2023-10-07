# Práctica No. 2 - Sumador - Restador

En esta práctica se lleva a cabo el desarrollo de un sumador - restador de 4 bits. Durante el desarrollo de la práctica, llevaremos a cabo el análisis de distintos componentes que nos van a llevar finalmente a la construcción del sumador - restador.
## Introducción

Los circuitos lógicos son clave en la lógica combinacional para plantear diferentes esquemas para solucionar diferentes tareas, de acuerdo al número de bloques o funciones el cual este constituido un circuito, en este caso como es el del 4 bit adder substractor, sin embargo como todos los circuitos integrados están constituidos por bloques operacionales en función del módulo para obtener el resultado final, esto con fines para obtener expresiones más reducidas y un control operacional más inteligente.

## Objetivos

Construir los diferentes modulos para el 4 bit adder susbtractor
Describir el funcionamiento de los diferentes modulos
Simular el comportamiento general del 4 bit adder substractor

## Marco teorico
Para comprender un sumador de 4 bits primero hay que remontarse al uso del carry de entrada y la propagación del mismo, para módulos corrientes como es el caso de un medio sumador, este se suma bit a bit sin embargo en la suma siempre hay un factor que es que el acarreo debe llevar o sumar al siguiente bit, para el medio sumador no cumple este requisito asi que el factor de acarreo se soluciona con un full adder. con XOR se calcula la suma entre las 3 entradas, y para el Cout (A AND B) OR ((A XOR B) AND Cin)
La resta en pocas palabras es una suma, asi que su juego sera en sacar el complemento A2 de de los buses de entrada en el número de bits para la entrada B, ya que el restador correspondiente también analiza para el caso A-B, si A>B y A<B.

## Digital



### Semi-Sumador

Comenzamos con el bloque más simple, el cual viene siendo en este caso un semi-sumador. Dos bits A y B entran en el sistema y dan como resultado la suma de estas dos entradas. Dentro del sistema tenemos dos compuertas lógicas (una compuerta tipo XOR y una compuerta tipo AND) las cuales llevan a dos salidas, marcadas como S que indica "suma" y Co que indica Carry Out que se encarga de mostrar el desbordamiento de datos.

<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Practica_2/Imagenes_lab2/Img_Digital/Semisumador.png" alt="Semisumador" width="320">
</p>

Los posibles resultados son los siguientes:
* S y Co apagados es equivalente a que A y B ingresan un 0 lógico.
* S siendo el único encendido significa que A ó B ingresan un 1.
* Co como unica salida encendida significa que A y B ingresan un 1.

En este último caso se puede denotar que el resultado es un 10 binario, aquí se hace muestra del desbordamiento de datos previamente mencionado en la suma, ya que se ingresan dos datos de un bit de tamaño, pero da como resultado un dato de dos bits "10". El carry out encendido muestra el 1 mientras que la suma de la compuerta XOR al estar apagado, es un indicativo de un 0.

### Sumador Completo

Una vez determinado el funcionamiento de un semisumador, podemos llevar a cabo la construcción de un sumador completo. Previamente, mencionamos el desbordamiento de datos del semisumador que permitía mostrar como resultado máximo 10; sin embargo, sabemos que en un dato de 2 bits de tamaño, el valor más alto es 11. El sumador completo tiene la función de mostrar todos los posibles resultados con 2 bits de tamaño.

Haciendo uso del semisumador que aparecerá denotado como SS en la configuración, requerimos de una entrada adicional llamada Cin (este tendrá una utilidad a considerar más adelante, pero es importante marcar la entrada con el fin de usarlo eventualmente). Las entradas A y B llegan a un primer semisumador. La salida S (Suma) se conecta a un segundo semisumador junto al Cin mencionado, mientras que Co (Carry Out) se dirigirá a una compuerta OR. Paralelamente, en el segundo semisumador el Co se va a conectar a la otra entrada de la compuerta OR. Finalmente, la salida S del segundo sumador y la salida de la compuerta OR serán las que muestren los resultados que esperamos.

<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Practica_2/Imagenes_lab2/Img_Digital/Sumador%20Completo.png" alt="Sumador" width="320">
</p>

### Sumador 4 Bits

El sumador completo "CS" nos va a permitir construir sumadores de más de 2 bits de tamaño, pero para este caso vamos a construir un Sumador de 4 Bits de tamaño. Para este caso vamos a tener 9 entradas identificadas de la siguiente manera:

* A3-A2-A1-A0 indican el primer número de 4 bits que se desea ingresar en el sistema (Recordando que A3 es el bit más significativo y A0 es el menos significativo).
* B3-B2-B1-B0 indican al igual que en el anterior caso una entrada de 4 bits.
* Cin que es un Carry de entrada si se desea indicar de manera previa un desbordamiento de datos (para efectos de esta práctica se puede colocar un ground "tierra", ya es decisión en cuanto al desarrollo para denotar el 0 que siempre va a estar en él). 

<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Practica_2/Imagenes_lab2/Img_Digital/Sumador%204%20Bits.png" alt="Sumador de 4 Bits" width="460">
</p>

Los subíndices de cada entrada (0,1,2,3) se juntan en sumadores completos. Primero se juntan A0, B0 y Ci. A0 y B0 se suman y van a dar el bit menos significativo del resultado de la suma. Ci entra a Cin, pero en este caso se puede usar el ground como lo habíamos sugerido anteriormente. En las salidas, S indica la suma de estos dos bits, Co va a indicar si se genera un desbordamiento de datos (cómo lo indicado en el semisumador).

Este desbordamiento de datos es básicamente un 1. En la suma binaria este es el que se suma en el siguiente bit más significativo, por eso este Co se conecta al Cin del siguiente grupo de bits, para generar ese comportamiento de la suma de números binarios. Este proceso se repite hasta el grupo de bits más significativos, donde el Co finalmente indicará si hay un desbordamiento de datos (un resultado de 5 bits para hacer la alusión).

### Sumador Restador

Antes de desarrollar este sistema, tenemos que desarrollar varias cosas de manera previa con el fin de generarlo.

#### Complemento A1

Desarrollado a partir de la tabla de verdad, tenemos la primera parte del complemento A2 el cual es hacer el complemento A1 (complemento de cada uno de los bits del dato) del número si el signo del número "Sy" es negativo "1". Si el bit de signo es un 0, el sistema simplemente dejará pasar el mismo número, y si el bit es 1, la salida de los cuatro bits siguientes van a ser el complemento de cada uno. El símbolo denotado como Y en la salida es igual al de la entrada.

<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Practica_2/Imagenes_lab2/Img_Digital/Negador%20A1.png" alt="Complemento A1" width="320">
</p>

#### Complemento A2

La operación A2 es llevar a cabo el complemento A1 previamente y sumar un 1 binario. Para esto hacemos uso del complemento A1 (marcado como CM) trabajado previamente, junto con un sumador de 4 bits, cuyo primer grupo de entradas "Ax" van a ser puestas a tierra, ya que no requeriremos de su uso. El segundo grupo de entradas será conectada de la manera dispuesta en la Figura. Sy es el símbolo del dato que va a entrar y sabemos que el complemento A2 se lleva a cabo cuando el dato es negativo. Sy va a salir de CM con el mismo valor y entra como Ci al sumador de 4 bits, lo cual permite que se sume el 1 en el sistema. Esto permite completar el complemento A2.

<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Practica_2/Imagenes_lab2/Img_Digital/Complemento%20A2.png" alt="Complemento A2" width="320">
</p>

#### Operador símbolo

Por disposición del sumador-restador, requerimos que el Cin del sumador de 4 bits que se va a usar, este dispuesto a tierra. Para evitar conflictos a la hora de expresar el símbolo, hacemos uso de un circuito adicional, el cual, en su expresión reducida, solamente mostrará el símbolo de la entrada de datos A.

Esto en el sumador-restador mostrará un 1 en dos ocasiones:
* Cuando A es negativo y B positivo (A<B)
* Cuando A y B son negativos

<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Practica_2/Imagenes_lab2/Img_Digital/Corrector%20Signo.png" alt="Signo del sumador-restador" width="320">
</p>

#### Sumador-Restador

Finalmente, tenemos el sumador restador. Para este caso requerimos de 2 bloques del complemento A2, un bloque encargado de mostrar el símbolo del resultado de la operación y un sumador de 4 bits, cuyo Cin va a estar dispuesto a tierra.

Dos entradas de datos (Ax y Bx) van a entrar a los bloques de los complementos A2. Los simbolos de ambos datos van a entrar tanto como a los bloques A2 como al bloque de simbolo "SYC", cuya unica salida mostrará el símbolo de la operación. Las cuatro salidas restantes Zx de los complementos A2 van a entrar a cada grupo de entradas del sumador de 4 bits.

Así tendremos como resultado una salida de 6 bits:

* Cuatro salidas Zx, las cuales están ordenadas del bit más significativo al menos significativo.
* Una salida CoZ, la cual va a mostrar el desbordamiento de datos.
* Una salida SyZ la cual indica el signo de la operación, dadas las condiciones explicadas en el operador de símbolo.

<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Practica_2/Imagenes_lab2/Img_Digital/Sumador%20Restador.png" alt="Sumador-restador" width="480">
</p>

## Verilog

Otra manera de observar el desarrollo de este sumador-restador es mediante la implementación del codigo *iVerilog*, donde al igual que en el apartado anterior 
se busca que gracias a diferentes bloques operacionales pequeños se logre un trabajo en conjunto para dar el resultado esperado, asi entonces se tiene que: 

### Semi-Sumador o Half Adder:

Tras desarrollar de manera manual procesos de análisis de tablas de verdad, creación de mapas de Karnaugh y obtención de expresiones se determina que para realizar un medio sumador y obtener su respectivo Carry de salida y resultado (que en este caso se denomina como Sum) es necesario la implementar una compuerta *AND* y *XOR* respectivamente, así entonces siguiendo la sintaxis de Verilog se establece el siguiente código:  

```bash
// Declaración del módulo
module halfadder (
  input b, a, // Bits de entrada para realizar la operación
  output co, s // Carry de Salida y Resultado de la Suma
);

// Descripción del comportamiento
assign s = a ^ b; // Teniendo presente que ^ = XOR, esta expresión asigna a s el valor de a xor b
assign co = a & b; // Teniendo presente que & = AND, esta expresión asigna a co el valor de a and b
endmodule
```
Teniendo esto definido, gracias a los programas instalados en la [Practica #1](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/e6d5fabb3837f5d7595fe88897cd2b7146158951/Practica_1/Informe_1.md) puntualmente Yosys y netlistsvg, es posible general el RTL asociado a este circuito, el cual se observa como: 

 <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Practica_2/Imagenes_lab2/halfadder.png" alt="RTLSemisumador" width="480">
</p>

Al igual que su equivalente creado en el software *Digital* este bloque operacional solamente puede sumar hasta dos en decimal es decir hasta 10 en binario. Para poder desarrollar un bloque que pueda manejar acarreos de entrada y obtener todas las posibles combinaciones con 2 bits es necesario crear un **Sumador Completo**

## Sumador Completo: 

Para el desarrollo de este sumador completo, se requiere una entrada adicional denominada como _Carry in_ la cual se establece como un puente para realizar conexiones en cascada entre varios bloques del mismo tipo y permitir el transporte de acarreos. Ahora bien, para la construcción se requiere de 2 semisumadores para obtener el resultado esperado. Gracias a que el bloque operacional ya fue determinado previamente, puede hacerse uso de la configuración jerarquica que permite establecer iVerilog en el desarrollo de scripts, asi entonces el codigo dado para el sumador completo se observa como: 

```bash
module fulladder (
  }
  input in_b, in_a, in_ci, // Define las entradas A, B y el Acarreo de entrada
  output out_co, out_s // Define las salidas Acarreo de Salida y Resultado (Sum)
);


// Declaración de señales
wire s_s1_to_b_s2; // Un cable del s del sumador 1 a la entrada A del sumador2
wire co_s1_to_or; // Un cable desde co del sumador 1 a la compuerta or
wire co_s2_to_or; // Un cable desde co del sumador 2 a la compuerta or

// Declaración de submodules

halfadder halfadder1(in_b, in_a, co_s1_to_or, s_s1_to_b_s2); //Se crea un bloque de semisumador y se le proveen los parametros correspondientes.
halfadder halfadder2(s_s1_to_b_s2, in_ci, co_s2_to_or, out_s);//En este caso las entradas que se le proveen son el resultado
//de la suma anterior y el carry de entrada

// Descripción del comportamiento
assign out_co = co_s1_to_or | co_s2_to_or; //Teniendo presente que | = OR, esta expresión asigna a el acarreo de salida el valor de co_s1 or co_s2 //

endmodule
```
Haciendo uso nuevamente de Yosys y netlistsvg se obtiene que el RTL asociado a este script se observa como:

<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Practica_2/Imagenes_lab2/fulladder.png" alt="RTLsumadorcompleto" width="580">
</p>

Como se observa en la imagen anterior, existen los 2 modulos de semi sumador creados en el codigo, asi mismo como los cables que unen ambos modulos dando como resultado un modulo operacional aun mas completo. 

Ahora bien, dado que aqui no se obtiene una respuesta visual directa para evidenciar el correcto funcionamiento del script, se es necesario un archivo denominado como *tb* debido a sus siglas en ingles **Test Bench** en el cual se establecen una serie de casos de prueba para obtener la respuesta del script creado. Dentro de este script, se deben crear modulos u bloques a los cuales se les ha de realizar la pruebas asi mismo como proporcionarle los parametros de entrada requeridos por este para operar. Así entonces, para este caso puntual y evidenciar si el sumador completo da la respuesta esperada se establecen casos de pruebas como mostrados en el ejemplo a continuación:

```bash
// Prueba 1
    in_b = 1; in_a = 0; in_ci = 1;
    #10;
    $display("  A = 0, B = 1  = 1 |   %b %b", out_co, out_s);
```
En el ejemplo mostrado previamente simplemente se le indica el valor que adquiere cada señal de entrada y gracias el comando $display, al terminar de ejecutar este caso de prueba, en la consola se muestra el resultado de la suma, asi mismo como el carry de salida. Dentro de cada archivo tb pueden crearse cuantos casos de prueba se requiera, en el archivo adjunto [Fulladder_t](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/402c82ed56d852987bdb63724738e6a8dd4ba53a/Practica_2/Archivos_lab2/testbenches_verilog/fulladder_tb.v) es posible observar de manera mas detallada la asignación del modulo, parametros de entrada asi como un ejemplo de como haciendo uso del ciclo _for_ se puede generar todas las combinaciones de entrada posibles. 

## Sumador de 4 bits: 
Nuevamente haciendo uso de los bloques creados previamente se busca la creación de uno que cumpla una tarea más compleja, para este caso se requiere la suma de un número binario compuesto de 4 dígitos o bits, en ese orden de ideas, se puede recurrir a el uso de sumadores completos, precisamente 4 de ellos, donde a cada uno de estos se le es asignado un bit perteneciente a cada entrada (A0,B0 para el primero, A1,B1 para el segundo y así sucesivamente), no obstante al igual que la suma en números decimales, si existe un número que acarrear proveniente de los dígitos menos significativos este debe considerarse en la suma de los bits siguientes. Planteando esta lógica y describiendola en código verilog se tiene:

```bash
module fourbitsadder (
	input wire [3:0]a, // Define la entrada A como un cable de 4 bits o 4 posiciones
	input wire[3:0]b, // Define la entrada A como un cable de 4 bits o 4 posiciones
	input wire Cin, // Define el carry de entrada Cin como un cable de un solo bit
	output wire cout, //  Define el carry de salida Cout como un cable de un solo bit
	output wire [3:0] Sum_total  // Define el resultado de la suma como un cable de 4 bits
);

wire [3:0] C_out;
assign cout = C_out[3];

fulladder fulladder1 (a[0],b[0],Cin, C_out[0],Sum_total[0]); // Es el primer sumador completo que se ejecuta, pasado su Cout como Cin de la siguiente etapa
fulladder fulladder2 (a[1],b[1],C_out[0],C_out[1],Sum_total[1]);
fulladder fulladder3 (a[2],b[2],C_out[1],C_out[2],Sum_total[2]);
fulladder fulladder4 (a[3],b[3],C_out[2],C_out[3],Sum_total[3]);

endmodule 
```
Para entender de manera grafica como se ejecuta este script, observe el siguiente RTL:
<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/8df1d9365b9ceec3dbedd285c85377e747aa4482/Practica_2/Imagenes_lab2/fourbitsadder.png" alt="RTLsumador4bits" width="700">
</p>

Al igual que en el caso anterior para verificar el funcionamiento del script creado, este se somete bajo una serie de pruebas establecidas en un test bench propio, un ejemplo de una prueba realizada a este se muestra a continuación: 
```bash
  initial begin
    // Inicializa las señales de entrada
    a = 4'b1101; // Define la entrada A como la combinación de Bits 1101
    b = 4'b0110; // Define la entrada B como la combinación de Bits 0110
    Cin = 1'b0;  // Define el acarreo de entrada para el Sumador Completo.

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

    $finish;
  end
```
En la prueba mostrada previamente, se realiza un pequeño apartado en el que se muestra en consola a el usuario si la respuesta generada por el script coincide con la respuesta esperada, caso contrario esta mostrara un mensaje de advertencia. A fin de mostrar resultados, tras ejecutar este script, en consola se obtiene el siguiente mensaje: 

```bash
A = 1101, B = 0110, Carry in = 0, Carry out = 1, Suma = 0011
Prueba PASADA: C_out y Sum_total son correctos.
```
Este mensaje sirve como confirmación de que la ejecución  del sumador de 4 bits es correcta, en el archivo [Test bench Sumador 4 bits](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/e245e9296958f4440cdc319fbc6b1a122b08a8a3/Practica_2/Archivos_lab2/testbenches_verilog/fourbitsadder_tb.v), existen mas casos de prueba junto a sus respuestas esperadas respectivas. 

## Sumador-Restador 4 bits

Finalmente se presenta el módulo que abarca todo lo previamente trabajado, y consiste en el módulo sumador restador el cual permite realizar ya sea suma o resta de 2 números binarios de 4 bits según se indique por parte del usuario. Para realizar el proceso de suma no existe inconveniente pues gracias a lo mostrado previamente el módulo cumple esta condición, no obstante para realizar la resta de 2 números, es necesario implementar el complemento A2 a uno de estos números. Dado que este proceso se conforma de 2 pasos:
- Negar el número original (Complemento a 1)
- Sumarle 1 a el bit menos significativo del complemento A1


Así entonces se optó por dividir estos pasos en 2 submódulos que se usan en el bloque dedicado al complemento A2.

### Negador o Complemento A1
Como se menciono previamente, este bloque operacional lo que busca es negar o no el número original dependiendo del signo asignado por el usuario, asi entonces se contempla la siguiente logica: 

```bash
module negadorfourbits(
    input wire [3:0]num,
    input wire sign,
    output wire [3:0]negnum
);

assign negnum[0] = sign ^ num[0]; //Dependiendo del signo y el valor del bit lo niega o no
assign negnum[1] = sign ^ num[1];
assign negnum[2] = sign ^ num[2];
assign negnum[3] = sign ^ num[3];

endmodule
	
```
Haciendo uso de compuertas lógicas **XOR** es posible negar cada bit que compone el número, para observar de manera grafica el script diseñado, a continuación se presenta el RTL asociado a él mismo:

<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/8df1d9365b9ceec3dbedd285c85377e747aa4482/Practica_2/Imagenes_lab2/negadorfourbits.png" alt="RTLnegadorfourbits" width="500">
</p>

Este bloque toma el número negado generado por el módulo previamente presentado y le suma un 1 en el bit menos significativo, esto para completar la definición del complemento A2. El resultado de este puede darse usando un sumador completo y fijando las entradas del número B como un cero, y añadiendo un 1 en el carry de entrada, o puede usarse 4 semisumadores donde el carry de entrada se toma como el número b de la primera etapa y el carry de salida de esta etapa se toma como la entrada a de la segunda y así sucesivamente. Observando esta lógica aplicada en código verilog

```bash
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
```
Observando el RTL asociado: 
<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/8df1d9365b9ceec3dbedd285c85377e747aa4482/Practica_2/Imagenes_lab2/sumaLSG.png" alt="RTLsumalgs" width="500">
</p>
La salida generada por este modulo se entiende como el complemento A2 definitivo. 

## Complemento A2
Este bloque une el negador y la suma LSG para entregar el resultado esperado que posteriormente se entrega a el sumador de 4 bits:
<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/8df1d9365b9ceec3dbedd285c85377e747aa4482/Practica_2/Imagenes_lab2/complementoados.png" alt="RTLcomplementoA2" width="500">
</p>

Finalmente implementando todos estos bloques mostrados previamente en conjunto se obtiene el siguiente esquematico: 
<p>
  <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/8df1d9365b9ceec3dbedd285c85377e747aa4482/Practica_2/Imagenes_lab2/sumrestfourbits.png" alt="RTLsumrestfourbits" width="500">
</p>

Al igual que en casos anteriores, este modelo tiene un archivo pruebas a ejecutar por el mismo, citando uno de los ejemplos que se pueden encontrar dentro del archivo adjunto [Sumador Restador tb](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/d5d49d6819a0af5cfc779dacadfe3989d042c32e/Practica_2/Archivos_lab2/testbenches_verilog/sumrestfourbits_tb.v)

```bash
// Caso de prueba 1: Suma
A = 4'b1101; 
B = 4'b0110;
sign = 1'b0; // 0 para suma, 1 para resta
cin = 1'b0;  // Carry inicial (puede ser 0 o 1)
#10;
$display("A = %b, B = %b, Signo = %b, Suma = %b, Acarreo = %b", A, B, sign, sumt, ct);
```
Este caso puntual prueba la suma, donde no se niega el segundo numero y el procedimiento se realiza de sin necesidad de recurrir al complemento A2, si se quieren observar los otros casos de estudio, la manera de definir el modulo y sus parametros de funcionamiento, revise el archivo adjunto. 

