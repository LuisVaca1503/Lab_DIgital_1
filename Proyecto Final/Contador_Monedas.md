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

Cada sensor opera según la logica determinada de forma positiva o negativa, es decir se puede optar que los sensores sin ninguna interrupción, el sensor emisor infrarrojo recibe una alimentación de 5v que activa el fotodiodo que opera como un transistor receptor de luz infrarroja, generando una corriente que hace que el nivel lógico sea 1, o que sea de forma inversa que una vez un objeto pasa por la area de comunicacion entre los dos leds, se active el sensor receptor y pase la corriente.
