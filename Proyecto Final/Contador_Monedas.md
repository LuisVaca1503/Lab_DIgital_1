# Proyecto Final Electrónica Digital:  _Contador y clasificador de monedas_

Autores:
* David Esteban Becerra López, Correo: dbecerral@unal.edu.co
* David Alejandro Rodríguez Mendieta, Correo: davarodriguezmen@unal.edu.co
* Luis Guillermo Vaca Rincon, Correo: lvacar@unal.edu.co

## Introducción
El conteo de monedas es un proceso el cual es llevado a cabo en su mayoría de forma manual, más gracias a los avances tecnológicos, este proceso se está automatizando, especialmente en grandes empresas, especialmente en bancos. Dicha labor es posible gracias a los trabajadores en sus diferentes áreas (contadores, bancarios, cajeros, etc.); sin embargo, esta actividad es también ejercida en menor escala, como en las actividades cotidianas y domésticas. Todos y cada uno de nosotros lleva a cabo un proceso de conteo antes de realizar cualquier transacción, no obstante, el error humano es un factor a tener en cuenta a la hora de contar, especialmente en cantidades muy altas y adicional a ello, se tienen que considerar factores de higiene a la hora de llevar a cabo dicho proceso. 

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/6419ff7ce85ac6e7a0c9e3b300fa56a284ae5e34/Proyecto%20Final/Imagenes/Ejemplo.png" alt="Ejemplo" width="320" height="300">
</p>

Es por ello que cada vez más se han establecido nuevas herramientas de conteo que permitan disminuir factores de error humano, que a su vez permiten mejores condiciones higiénicas y una mayor eficiencia a la hora de llevar a cabo procesos de conteo y de clasificación de capital.

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

El primero y mas importante es la FPGA empleada para compilar los diferentes códigos y logica correspondiente para el sistema de conteo y clasificación de monedas. Para ello se hace uso de la FPGA Black Ice 40, el cual será el módulo central que permita toda la operación del sistema:
<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/9aebf77bc445d8eecb76f3c4a36e45488e020ce5/Proyecto%20Final/Imagenes/BlackIceMx-Fully-loaded.jpg" alt="fpga" width="400" height="300">
</p>

### LCD 16x2

Para poder mostrar en pantalla la cantidad de monedas ingresadas por valor y el monto total de dinero ingresado en el dispositivo por el usuario, es necesario una interfaz visual que permita mostrar dichos datos. Por ende, es necesario una LCD (para este caso se estableció una de formato 16x2) que pueda indicar los datos de interés.

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/da363156e9aa01f930ffac587bd70ed7428c96ac/Proyecto%20Final/Imagenes/Sin%20t%C3%ADtulo.png" alt="fpga" width="400" height="300">
</p>

### Sensor infrarrojo

Este sistema cuenta con un LED emisor infrarrojo y un fototransistor receptor infrarrojo. El LED emisor infrarrojo emite una luz infrarroja cuando se le aplica corriente eléctrica, y el fotodiodo recibe dicha luz infrarroja, la cual incide sobre el mismo, generando una corriente eléctrica en el componente receptor. La cantidad de corriente generada depende de la intensidad de la luz infrarroja recibida, (su función en el contador y/o clasificador de monedas será descrita más adelante).

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/1dbd5d0e4d31522474e511a7f39b08bb439617dd/Proyecto%20Final/Imagenes/LED.png" alt="fpga" width="400" height="300">
</p>

## Funcionamiento y conexiones electricas.

A pesar de haber una variedad de diseños complejos y dinámicos para la clasificación de monedas en función al espacio, o gran cantidad de monedas a contar, tal como sucede en labores de contabilidad en un banco, se optó por un diseño simple como puede ser una ranura para el ingreso de monedas de manera individual, que a su vez da ingreso a un espacio de almacenamiento, similar a una alcancía. Se decidió clasificarlas de dicha forma gracias a los sensores infrarrojos, he aquí una primera muestra de desarrollo para facilidad de comprensión del sistema:

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/14d1fcfd2e7d94fe866bb18b01ca98a796afde42/Proyecto%20Final/Imagenes/Mecanica.png" alt="fpga" width="600" height="300">
</p>

Cada sensor opera según la lógica determinada, ya sea positiva o negativa, es decir que en los sensores se puede optar por uno de los siguientes casos:
- Sin ninguna interrupción, el diodo emisor reciba en primera instancia una alimentación de 5v que mantiene activo el fotodiodo por la luz recibida, generando una corriente que hace que el nivel lógico sea 1 de forma estable.
- De forma alterna, que una vez un objeto pasa por el área de comunicación entre los dos sensores, se active el sensor receptor y pase la corriente.
He aquí una ilustración del proceso:

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/8b0a9053c8097102ef53491469367f8b3e61505e/Proyecto%20Final/Imagenes/Sensor%20M1.png" alt="fpga" width="500" height="300">
</p>

En este al haber una via de comunicación entre los dos diodos, la transmision de la luz infrarroja por parte del emisor entregara los 5v al receptor, generando una corriente.

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/78c06574f59a965f645531a1102429b00edd70b9/Proyecto%20Final/Imagenes/Sensor%20M2.png" alt="fpga" width="500" height="300">
</p>

Después de que pasa la moneda, se presenta una interrupción entre los diodos, causando una diferencia de potencial, hasta un valor de tensión que sea interpretado en la fpga como un nivel 0 lógico. Así que, el objetivo con este mecanismo, es regular el tiempo de exposición requerido (junto con factores en los sensores como caída de tensión), para que una vez pase la moneda, la luz se interrumpa y cambie a "0" lógico para llevar a cabo el respectivo conteo.

Lo siguiente a evaluar es la clasificación de monedas tal como se mostró en la pieza mecanica:
<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/b1a61f9a32235c8aa54e5fcc9f6a452d4ea9685c/Proyecto%20Final/Imagenes/Monedas.png" alt="fpga" width="500" height="300">
</p>
Como se puede observar, el sensor tiene un espacio determinado. El primero y el último son importantes para poder iniciar y cerrar el ciclo de conteo, y los demás están ubicados a diferentes alturas. Esto fue planteado así por el hecho de que cada moneda tiene una altura diferente, lo que puede favorecer en gran medida la clasificación de estas, dependiendo de las medidas físicas de la moneda.
<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/485f092e83864e41a17c844bb7bdfd0b9b7eafd0/Proyecto%20Final/Imagenes/Pulsos.png" alt="fpga" width="700" height="300">
</p>
Con todo lo anterior explicado, se propone la siguiente forma de funcionamiento del sistema: 

Cuando pasa una moneda por un sensor, este manda un pulso en la señal de reloj en determinado periodo; teniendo en cuenta la lógica aplicada, de manera previa se establece que los sensores se mantienen en nivel "1", pero al pasar la moneda, este nivel cambia a "0". Esto en cuanto a la disposición general de los sensores.

También con la programación aplicada, dependiendo de los sensores activados (excluyendo los sensores de entrada y salida de la moneda), se clasifica cada moneda como una de 50, 100, 200, 500 o 1000, dependiendo de la cantidad de sensores activados antes de salir la moneda del dispositivo. Con la moneda de 50 pesos se hace una disposición especial, donde solamente este hace contacto con los sensores de entrada y salida del dispositivo, debido a que es la moneda de menor denominación y tamaño, permitiendo por medio de programación un condicional, para que esta moneda sea clasificada como una de 50 al pasar solo por dichos sensores en el proceso de conteo.

Finalmente, la pantalla LCD comunica al usuario la cantidad de monedas de cada tipo, y el valor total despues de haber ingresado las que el usuario desea cuantificar y clasificar.


## Problemas presentados

### Diseño mecánico

El problema enfrentado al principio fue el diseño mecánico a implementar para la clasificación de monedas, esto debido a los múltiples diseños y variaciones posibles que permitían la clasificación de las diferentes monedas. Desde diseños con engranajes o un sistema de rieles que transportara las monedas a un espacio donde se pudiera dividir las monedas, el reto yace establecer las condiciones que vamos a usar para el diseño, teniendo en cuenta factores como tamaño e implementación del sistema. Ejemplos vistos cómo en el siguiente caso [How to Make Coin Sorting Machine from Cardboard](https://www.youtube.com/watch?v=ykvUE8Ad8Ls&ab_channel=MiniGear) nos permiten establecer una mejor clasificación de manera mecánica, pero no establece un reto en cuanto a la parte de implementación de la FPGA:


<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/5addd7fe5925bba65222b1371389790093f2d392/Proyecto%20Final/Imagenes/EjemploModel.png" alt="fpga" width="700" height="300">
</p>

Sin embargo, un vídeo en específico nos dio una vía de desarrollo concreta que basaba su potencial en la programación. Tenemos en cuenta que este caso fue desarrollado desde Arduino, pero a su vez, también establecemos que es un buen diseño, dado las condiciones con las cuales se manejan los sensores y las implicaciones que esto tiene a la hora de hacer la respectiva programación en Verilog. [¿Cómo hacer Contador de Monedas? | Sensor de Monedas IR |](https://www.youtube.com/watch?v=Wp4v_5VEzWw&t=255s&ab_channel=%C3%9AtilMenteGeek).

### Denominación de las monedas

Para el caso colombiano, actualmente se tienen cerca de 9 monedas en circulación a nivel nacional, las cuales se distribuyen de la siguiente manera:
- (2) denominaciones de 50
- (2) denominaciones de 100
- (2) denominaciones de 200
- (2) denominaciones de 500
- (1) denominación de 1000

Esto debido a que recientemente se ha iniciado un proceso de reemplazo en las monedas distribuidas en el país.

Ahora, el problema deriva en que solamente vamos a usar un valor físico de las monedas, el cual es su diámetro. Este valor entre la denominación antigua y la denominación nueva, genera bastantes problemas, ya que hay casos en que el valor de diámetro se diferencia por muy poco. Para reducir la posibilidad de errores en el sistema, decidimos limitar el dispositivo a la denominación nueva de las monedas que se está implementando en la nación. [Billetes y Monedas en circulación](https://www.banrep.gov.co/es/billetes-monedas)

Aun con las limitaciones a la nueva denominación de las monedas, el punto crítico del conteo será la diferenciación entre las monedas de 200 y 500 pesos, ya que son los que tienen valores de diámetro más cercano entre ellos.
<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/1c5e47695e3f5e133aa1f83314daafc37671b0bf/Proyecto%20Final/Imagenes/Nuevas.png" alt="fpga" width="300" height="300">
</p>


### Uso de FPGA

El siguiente problema es la utilización de la FPGA y el lenguaje de descripción de hardware Verilog. En Arduino se pueden llegar definir los valores de tensión que el dispositivo puede interpretar cómo un 1 o un 0 lógico; sin embargo, la FPGA Black Ice40, tiene establecido estos valores por defecto, así que todo el proceso para adecuar esos rangos de tensión, deberán ser controlados  a través de medios externos, como por ejemplo resistencias conectadas a los sensores, con el fin de lograr los siguientes rangos:

- ("0"): 0<V<0.8
- ("1"): 3.3<V<5

## Herramientas y presupuesto requerido

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/1f52d545df2c462666a0df6c0265c472c5233ab9/Proyecto%20Final/Imagenes/Presupuesto.png" alt="fpga" width="500" height="300">
</p>

Este sería el presupuesto total de herramientas necesarias para el montaje del contador y/o clasificador de monedas; sin embargo, elementos como la FPGA, el cautín estaban a disposición del grupo de manera previa; el primero por préstamo de laboratorio y el segundo por términos prácticos en la utilización de diferentes áreas de la carrera de ingeniería electrónica.
