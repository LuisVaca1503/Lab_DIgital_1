# Practica No.2 _4 bits adder and substractor_

## Introducción

Los circuitos lógicos son clave en la lógica combinacional para plantear diferentes esquemas para solucionar diferentes tareas, de acuerdo al numero de bloques o funciones el cual este constituido un circuito, en este caso como es el del 4 bit adder substractor, sin embargo como todos los circuitos integrados estan constituidos por bloques operacionales en función del modulo para obtener el resultado final, esto con fines para obtener expresiones mas reducidas y un control operacional más inteligente.

## Objetivos

Construir los diferentes modulos para el 4 bit adder susbtractor
Describir el funcionamiento de los diferentes modulos
Simular el comportamiento general del 4 bit adder substractor

## Marco teorico
Para comprender un sumador de 4 bits primero hay que remontarse al uso del carry de entrada y la propagación del mismo, para modulos corrientes como es el caso de un medio sumador, este se suma bit a bit sin embargo en la suma siempre hay un factor que es que el acarreo debe llevar o sumar al siguiente bit, para el medio sumador no cumple este requisito asi que el factor de acarreo se soluciona con un full adder. con XOR se calcula la suma entre las 3 entradas, y para el Cout (A AND B) OR ((A XOR B) AND Cin)
La resta en pocas palabras es una suma, asi que su juego sera en sacar el complemento A2 de de las buses de entrada en el numero de bits para la entrada B, ya que el restador correspondiente tambien analiza para el caso A-B, si A>B y A<B.


## Procedimiento

La primer etapa es el half adder esta consta de un XOR para el Cout y S para XOR entre A y B.


Para el Full Adder se le agrega un Cin esto como funcion de propagar los carrys y tener el resultado mas preciso,la suma de A y B va al terminal A del segundo semisumador y se suma con Cin para tener la suma y los carrys correspondientes entran a una compuerta or para determinar su al menos hubo un carry para que este se propague.

el Sumador completo es una escala mayor porque todos los carrys de salida van al siguiente Full Adder y tener el resultado exacto.
