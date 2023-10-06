# Práctica No. 2 - Sumador - Restador

En esta práctica se lleva a cabo el desarrollo de un sumador - restador de 4 bits. Durante el desarrollo de la práctica, llevaremos a cabo el análisis de distintos componentes que nos van a llevar finalmente a la construcción del sumador - restador.

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

#### Comparador -  Complemento A1

#### Complemento A1

#### Complemento A2

#### Operador símbolo

#### Sumador Restador

