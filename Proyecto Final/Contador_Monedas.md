# Proyecto Final Electrónica Digital:  _Contador y clasificador de monedas_

Autores:
* David Esteban Becerra López, Correo: dbecerral@unal.edu.co
* David Alejandro Rodríguez Mendieta, Correo: davarodriguezmen@unal.edu.co
* Luis Guillermo Vaca Rincon, Correo: lvacar@unal.edu.co

## Introducción
Actualmente, el conteo de monedas es llevado a cabo en su mayoría de forma manual. Esto es posible gracias a la labor llevada a cabo por los trabajadores en sus diferentes áreas (contadores, bancarios, cajeros, etc.), e inclusive en actividades cotidianas y domésticas, todos y cada uno de nosotros lleva a cabo un proceso de conteo antes de realizar cualquier transacción. Sin embargo, el error humano es un factor a tener en cuenta a la hora de contar, e incluso en cantidades muy altas, se tienen que considerar factores de higiene a la hora de llevar a cabo dicho proceso.

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/6419ff7ce85ac6e7a0c9e3b300fa56a284ae5e34/Proyecto%20Final/Imagenes/Ejemplo.png" alt="Ejemplo" width="320" height="300">
</p>
Tal como mencionamos de manera previa, el conteo de monedas se lleva a cabo de manera manual por procesos de conteo o de peso el  cual conlleva un factor del error humano, por lo cual es recomendable el uso de herramientas alternas que permitan una mayor eficiencia a la hora de contar y clasificar el capital.

## Objetivo Principal

- Diseñar, desarrollar e implementar una máquina contadora y clasificadora de monedas de forma serial (conteo por unidad) o 
  paralela (conteo de manera simultánea).

## Objetivos Secundarios

* Reconocer las herramientas necesarias y aplicar los conceptos vistos en el curso de Electrónica Digital I.
* Construir el software necesario para implementar en la FPGA.
* Utilizar correctamente el hardware donde será usado para la clasificación y organización de monedas a través de los 
 sensores y otros dispositivos a implementar.

## Descripción del Sistema

Antes de continuar con el funcionamiento general del contador de monedas, es preciso mostrar los diferentes componentes usados en el montaje del contador y/o clasificador de monedas:

### ice40-hx4k-MyStorm-BlackIce-Mx

El primero y mas importante es la FPGA empleada para compilar los diferentes códigos y logica correspondiente para el sistema de conteo y clasificación de monedas:
<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/9aebf77bc445d8eecb76f3c4a36e45488e020ce5/Proyecto%20Final/Imagenes/BlackIceMx-Fully-loaded.jpg" alt="fpga" width="400" height="300">
</p>

### LCD 16x2

Para poder mostrar en pantalla la cantidad en COP y por monedas ingresadas por el usuario es necesario una interfaz. Por ende es necesario una LCD 16x2 que pueda indicar los datos de interés.

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/da363156e9aa01f930ffac587bd70ed7428c96ac/Proyecto%20Final/Imagenes/Sin%20t%C3%ADtulo.png" alt="fpga" width="400" height="300">
</p>

### Sensor infrarrojo

Este consta de base con un LED emisor infrarrojo y un fototransistor receptor infrarrojo. El LED emisor infrarrojo emite una luz infrarroja cuando se le aplica corriente eléctrica, y el fotodiodo cuando la luz infrarroja incide sobre el , genera una corriente eléctrica en el componente receptor. La cantidad de corriente generada depende de la intensidad de la luz infrarroja recibida, (su función en el contador y/o clasificador de monedas sera descrita mas adelante).

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/1dbd5d0e4d31522474e511a7f39b08bb439617dd/Proyecto%20Final/Imagenes/LED.png" alt="fpga" width="400" height="300">
</p>

## Funcionamiento y conexiones electricas.

A pesar de haber una variedad de diseños complejos y dinámicos para la clasificación de monedas en función al espacio, o gran cantidad de monedas a clasificar como sucede en labores de contabilidad en un banco, se optó por un diseño mas simple como puede ser una ranura para el ingreso de monedas, pero esta en su camino de ingreso a un espacio como una alcancía, se decidió clasificarlas en ese proceso gracias a los sensores infrarrojo, he aqui un ejemplo para facilidad de comprensión del sistema:
<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/14d1fcfd2e7d94fe866bb18b01ca98a796afde42/Proyecto%20Final/Imagenes/Mecanica.png" alt="fpga" width="600" height="300">
</p>

Cada sensor opera según la logica determinada de forma positiva o negativa, es decir se puede optar que los sensores sin ninguna interrupción, reciba en primera instancia el diodo emisor, una alimentación de 5v que activa el fotodiodo por la luz recibida, generando una corriente que hace que el nivel lógico sea 1, o que sea de forma inversa que una vez un objeto pasa por la area de comunicacion entre los dos leds, se active el sensor receptor y pase la corriente.
He aqui una ilustración del proceso:

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/8b0a9053c8097102ef53491469367f8b3e61505e/Proyecto%20Final/Imagenes/Sensor%20M1.png" alt="fpga" width="500" height="300">
</p>

En este al haber una via de comunicación entre los dos diodos, la transmision de la luz infrarroja por parte del emisor entregara los 5v al receptor, generando una corriente.

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/78c06574f59a965f645531a1102429b00edd70b9/Proyecto%20Final/Imagenes/Sensor%20M2.png" alt="fpga" width="500" height="300">
</p>

Después de que pasa la moneda al presentar una interrupcion entre los diodos, se interrumpira la luz causando que la diferencia de potencial, baje 0 v esto interpretado en la fpga como nivel 0 lógico, asi que el objetivo principal con este mecanismo, es calcular el tiempo requerido para que una vez pase la moneda, la luz se interrumpa y cambie a "0" logico iniciando el conteo de monedas.

Lo siguiente a evaluar es la clasificación de monedas tal como se mostró en la pieza mecanica:
<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/b1a61f9a32235c8aa54e5fcc9f6a452d4ea9685c/Proyecto%20Final/Imagenes/Monedas.png" alt="fpga" width="500" height="300">
</p>
Como se puede observar cada hueco va un sensor, el primero y el ultimo son importantes para poder iniciar y cerrar el ciclo de conteo, y los demas están ubicados a diferentes alturas esto fue planteado así por el hecho de que cada moneda tiene una altura diferente, lo que pudó favorecer en gran medida la clasificación de estas dependiendo de las medidas físicas del alto de la moneda.
<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/485f092e83864e41a17c844bb7bdfd0b9b7eafd0/Proyecto%20Final/Imagenes/Pulsos.png" alt="fpga" width="700" height="300">
</p>
Una forma clara de explicarlo, es que cuando pasa una moneda por un sensor este manda un pulso en la señal de reloj en determinado periodo, dependiendo de la lógica aplicada esta al pasar manda un pulso interpretado como un "1" lógico o de plano mientras que la señal entre los dos sensores estaba en "1" al pasar la moneda pasa a "0", y también con la programación aplicada dependiendo de los sensores activados clasifica esta moneda como una de 100, 200, 500 o de 1000 y con la de 50 ya que no alcanza la altura de los demás con programación se crea un condicional, para que esta moneda sea clasificada como una de 50 al pasar solo por el sensor de entrada y salida donde respectivamente inicia y termina el conteo de monedas en ese momento de tiempo.

Y finalmente la LCD comunica al usuario la cantidad de monedas de cada tipo, y el valor total despues de haber ingresado las que el usuario desea cuantificar y clasificar.


## Problemas presentados


El problema enfrentado al principio fue el diseño mecanico a implementar para la clasificación de monedas, puesto que al haber varios diseños que basaban netamente la clasificación con piezas  mecanicas, con engranajes o un sistema de rieles que transportara las monedas a un espacio donde se pudiera dividir las monedas, el reto caía en los huecos y como con un sensor detectaba el conteo de las monedas de ese valor por ejemplo un sistema de ejemplo sacado del canal de Mini Gear [How to Make Coin Sorting Machine from Cardboard](https://www.youtube.com/watch?v=ykvUE8Ad8Ls&ab_channel=MiniGear) que pudo haber funcionado pero no hubiera aplicado mucho lo aprendido con las FPGAs:


<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/5addd7fe5925bba65222b1371389790093f2d392/Proyecto%20Final/Imagenes/EjemploModel.png" alt="fpga" width="700" height="300">
</p>

Sin embargo con un vídeo en especifico nos dio una via de desarrollo concreta que basaba su potencial en la programación con verilog, y usando la FPGA Black Ice 40, aunque el vídeo hace su desarrollo completamente desde Arduino [¿Cómo hacer Contador de Monedas? | Sensor de Monedas IR |](https://www.youtube.com/watch?v=Wp4v_5VEzWw&t=255s&ab_channel=%C3%9AtilMenteGeek)

