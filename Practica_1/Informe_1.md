# Practica No.1 _Instalacion de Herramientas_


## Introducción

<!-- ![image](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/ced8ee8ebfb7c2852670ae4b9f281251126026be/Mint.png)-->


Actualmente hay una cantidad extensa de sistemas operativos, que trabajan en diferentes entornos que permiten el uso de estas herramientas como interfaces para el usuario para que se pueda comunicar con el sistema, sin embargo estas distribuciones tienen una índole de acceso libre o privado, como es el caso de Windows pues a pesar de que corre en la mayoría de dispositivos portátiles de 32 y 64 bits, requiere de una licencia puesto que su uso es controlado por Microsoft. Hay una línea de sistemas operativos que ha sido clave para varios aparatos electrónico tal es el caso de GNU/Linux como Android usan el kernel Linux como base software, porque es de acceso libre, no es correcto decir que linux es solamente un sistema operativo, ya que hay varias versiones si es que se le puede llamar así, ya que cada versión que sacan por lo general se basa en un versión completamente distinta recogiendo cosas importantes de esa variante para mejorarla, y que logré adecuarse a los gustos o necesidades del usuario, sea por su diseño, poco consumo de recurso, o por la característica de que hay ciertos programas que corren solo en linux, siendo una ventaja considerable para ciertos tipos de ambiente.

<p align="center">
    <img src="https://github.com/LuisVaca1503/Lab_DIgital_1/blob/ced8ee8ebfb7c2852670ae4b9f281251126026be/Mint.png" alt="Logo Linux Mint" width="320" height="300">
</p>

## Objetivos

• Identificar las diferentes herramientas necesarias para la instalación de Linux Mint.

•	Lograr configurar adecuadamente las propiedades de una máquina virtual, para el correcto uso de Linux Mint.

•	Comprender el proceso de instalación de paquetes, aplicaciones y actualizaciones mediante comandos en la consola.

•	Ejecutar adecuadamente los pasos o comandos para la instalación y ejecución de las herramientas en Linux Mint


## Metodología
Antes de entrar en detalle con los diferentes pasos, es necesario aclarar que la instalación de Linux aplica siempre para diferentes versiones o tipos de este mismo, no hay un único asi que antes de avanzar, es necesario tener en cuenta ¿Qué Linux es de interes para el usuario especifico? instalar el ISO y montarlo,pero... ¿Qué es un iso?.
Es un formato de archivo digital que replica un CD, DVD o BD físico. La extensión de archivo ISO no solo almacena archivos y carpetas, sino que aloja además toda la información vital de sistema de archivos acerca de la estructura del disco, casi como un programa.
La ultima aclaración es que la instalación de **Linux Mint** ( el de interes en esta guía) puede hacerse de dos maneras, por Maquina Virtual o por partición de disco a traves de la BIOS con una USB, ambos metodos seran descritos como Metodo MV, ó Metodo BIOS.

## Metodo MV:

### Herramientas
* Lo primero es establecer las herramientas necesarias para la instalación y el montaje de Linux Mint, solo vamos a requerir de 2 antes de entrar en el SO, Virtual Box e ISO de Linux Mint.
* Links: [Página de Virtual Box](https://www.virtualbox.org/),[Linux Mint](https://linuxmint.com/)
* Virtual Box:
Bajando un poco nos encontraremos con el bóton de descarga
![image](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/58c6760fbabee7569baec64db239092e03b36656/VB1.png)

solo lo clickeamos y nos encontraremos con los diferentes versiones de SO para instalarlo, escogemos el que tengamos:

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/9125e6fdcc4e8ea13a5c88e060d737b41d2b5c44/Opciones%20Instalaci%C3%B3n.png)

Ya teniendo el archivo descargado simplemente lo ejecutamos, y le damos Next a todo.



* Linux Mint:

La descarga del ISO, solo consiste en entrar a la pagina y darle a descargar, sin embargo  esta nos llevara a una pestaña donde habra 3 versiones diferentes, para resumir, cada una consume mas o menos recursos, dependiendo del nivel de diseño y detalle que tenga cada uno en la interfaz de usuario, para este caso escogemos la que sea acorde a nuestro sistema, de bajos (XFCE Edition) , medios (Mate Edition) o altos requisitos(Cinammon Edition), una vez descargado la versión de preferencia, el formato dado sera ISO.


### Desarrollo

Ejecución Virtual Box:

Ejecutamos el el programa y nos llevara a esta interfaz:

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/0730f2dd004bfaf724b826f23b3214c418b8d160/Interfaz%20VB.png)

Agregamos una maquina virtual, y configuramos los parametros segun nuestro preferencia, he aqui el resumen:

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/e6fa6c42c6b15205c408de0c48eb9f501b5d939c/deded.png)

en 1 definimos el nombre de Usuario, del SO, en 2 la ubicación de la carpeta de la maquina ( normalmente predefinido en la instalación de Virtual Box), 3 como dice la casilla nombre del SO invitado, 4 la memoria RAM asignada, 5 números de núcleos del procesador a asignar, y 6 el tamaño del disco que usara el SO.



* Montaje del ISO:

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/4fa85fb3cb961a84509900853422430703ad3be3/Montar%20Iso.png)


En resumidas cuentas solo consiste, ir a configuración, Almacenamiento en este apartado vamos a Controlador IDE, como está vacío dado que es la primera vez, en la parte derecha de las pestañas donde hay un disco pequeño, seleccionamos y despliega diferentes opciones, como lo que necesitamos montar es el disco o ISO instalado le damos en select disk file, y eso nos llevara al explorador donde debemos buscar el ISO, (normalmente esta en la carpeta de descargas) .

* Ejecución de Linux Mint:

Por último solo nos queda dirigirnos a la casilla de Linux Mint en Virtual Box, e iniciar la máquina virtual


* Configuración del SO:

El inicio del SO, comienza con una subpestaña, un arranque parecido al de windows antes de llegar a la BIOS, y despues de un tiempo nos aparece estas opciones:

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/2349f9e221e1331b1074c98d41b756307d287489/Montar%20Bios.png)

Solo debemos presionar Enter a la primera opción, siendo el nombre del SO montado en Linux.



Una vez en la interfax de Mint, nos aparecera en la esquina superior izquierda, ***Install Linux Mint***.

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/blob/bc4ecd5d5670eccd372fbbbfba2621312fc5ee97/ISo%20install.png)

La instalación es netamente personal y a preferencia de cada usuario, aunque el idioma es importante dejarlo en inglés ya que la instalación de herramientas dentro de Linux Mint se utilizaran comandos en inglés en la consola, quitando eso la región del sistema, el nombre de usuario y contraseña si asi se desea es a elección personal.

_Consideraciones Importantes_

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/assets/92941277/70bee429-1e48-48f5-9897-979e448b8f6f)

Hay que marcar la casilla de los codecs multimedia.

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/assets/92941277/10aa04fb-9080-43c4-9ce7-ef7ac2252530)

No borrara absolutamente ningún archivo del SO principal, solo escala nivel de la máquina virtual.

## Método Partición

En un principio, este método comparte similitudes con la instalación por medio de máquina virtual. Sin embargo, hay que tener varios factores en cuenta para el desarrollo de este proceso. Se hará énfasis en aquellas partes que son únicas en este método.

### Partición del Disco

Cabe recalcar que para este caso, deseamos tener instalado Linux y Windows a la vez, por ello se procede con este tipo de instalación. Si no se desea conservar Windows como sistema operativo por alguna razón, este paso puede ser ignorado.

Dicho esto, para llevar a cabo la partición se puede hacer clic derecho en el icono de inicio de Windows. En el menú desplegable accedemos a la opción "Administración de Disco" o "Disk Management". Una vez dentro, podemos ver las diferentes particiones del disco; algunas de ellas son de suma importancia para el dispositivo porque tienen configuraciones que es mejor evitar ser alteradas de alguna forma. 

<p align="center">
    <img src=https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Disk%20Management.png alt="Disk Management" height="270">
</p>

En la parte inferior vamos a escoger una de las particiones que tiene en su nombre NTFS, que a su vez es una de las particiones con mayor capacidad de memoria. Dando clic derecho sobre ese recuadro, vamos a ver una opción llamada "Reducir Volumen" o "Shrink Volume". En el nuevo menú, hay una casilla que permite escribir la cantidad de memoria que deseamos reducir de la partición principal para crear una nueva.

<p align="center">
    <img src= https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Shrink%20Volume.png alt="Shrink Volume" height="270">
</p>

Para saber cuanta memoria deseas en la nueva partición en GB, es tan sencillo como multiplicar la cantidad de memoria por 1026, con eso se tiene el resultado en MB. En la imagen donde se pueden ver las particiones, se puede observar que hay una partición de 96.00 GB. Esto en MB es tan sencillo haciendo la respectiva operación, dando al final el valor 98.496. Esta partición es solo un ejemplo, ya dependerá del usuario la cantidad de memoria que desee usar en el SO de Linux.

### Instalador

La instalación y ejecución del instalador, a partir de cierto punto, va a ser igual que con el método de la máquina virtual. Sin embargo, para instalarlo con la partición del disco, vamos a necesitar de una memoria con el instalador, ya que todo se va a hacer desde la BIOS del dispositivo. Descargada la máquina virtual, al igual que en el otro método, vamos a proceder a tener la memoria con este sistema.

En este caso accedemos en el buscador web a balena.io, luego en productos buscamos BalenaEtcher, y finalmente le damos Descargar Etcher. Para este caso escogemos la opción Windows x86/x64, pero eso depende de cada caso, tanto de equipo como del sistema operativo que estamos usando en el momento.

<p align="center">
    <img src=https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/BalenaEtcher.png alt="balenaEtcher" height="240"><img src= https://github.com/LuisVaca1503/Lab_DIgital_1/blob/main/Download%20Etcher.png alt="DownloadEtcher" height="240">
</p>

Una vez instalado y ejecutado balenaEtcher, vamos a ver un menú como el de a continuación. En la primera parte, escogemos la opción "Flash from file", donde nos dirigirá a la sección de archivos para buscar el archivo de Linux que vamos a instalar eventualmente. Después, en la segunda parte "Select Target" vamos a tener que escoger la memoria que vamos a usar como instalador del sistema operativo. Cabe recordar que la memoria a partir de completar este proceso no podrá ser usado de manera común hasta que formateemos de nuevo la memoria (una vez completada la instalación de Linux, podremos hacer dicho proceso tranquilamente). Escogida la memoria que se va a usar, finalmente terminamos de aceptar todo y esperamos a que el proceso sea completado.



### Instalación:

(Nota previa: Consultar el botón que permite acceder a la BIOS del computador donde se va a llevar a cabo la instalación de Linux).

Para llegar a la instalación del sistema, vamos a tener que mantener la memoria colocada en el computador y vamos a tener que reiniciar el computador. Justo en el momento que prende el computador, necesitamos acceder a la BIOS del dispositivo. Para ello, vamos a tener que presionar el botón que nos permita acceder a dicha BIOS. Este botón puede variar en cada modelo de computador, por eso hay que consultar previamente el botón que nos permita acceder. Generalmente, puede ser ESC, F1, F12... Pero de nuevo, todo depende del modelo.

A partir de aquí aparecerá la misma pestaña de instalación de la BIOS, al igual que en la instalación de la máquina virtual. Finalmente, terminaremos accediendo a Linux y comenzando el proceso de instalación al igual que en el otro método.

Cuando llegamos a la parte de Tipo de instalación del sistema, esta es la parte que se diferencia del caso de máquina virtual, ya que si escogemos la opción del otro caso, se borrará el sistema operativo de Windows junto con todo el contenido que se guardaba en el momento. Para este punto tenemos casos:

* Se puede presentar un caso en donde el sistema detecta automáticamente la partición del disco, esto es fácil porque solo tendremos que escoger la partición y la instalación llegará prácticamente a sus pasos finales.
* Si no aparece esta opción automática, tendremos que ir a la parte de "Más opciones". A partir de ahí tendremos que hacer la respectiva partición o en su defecto, escoger la partición previamente realizada en Windows. Desde este punto ya continuaremos la instalación tal y como el instalador lo indica y llegaremos al mismo caso de la máquina virtual.

A partir de ahora, si vas a usar Windows o Linux, vas a tener que iniciar el computador y en el menú de la BIOS escoger el SO que desees usar en cada momento.


## Implementación de Herramientas 

Posterior a la instalación del SO, es necesario la instalación de cierto programas para desarrollo del curso, estos son:
* Miniconda
* Verilog 
* Yosys
* GtkWave

  
A continuación se explican de manera detallada que son y su proceso de instalación en Linux: 


**Miniconda:**

Anaconda es una distribución de los lenguajes de programación Python y R para computación científica, tiene como ventaja simplificar la gestión e                implementación de paquetes. Sin embargo, para algunos proyectos, no es necesario todo el conjunto de herramientas que Anaconda proporciona,                      para aquellos casos, existe Miniconda. Esta en comparación con la mencionada previamente, permite instalar de manera manual solo las herramientas                requeridas.

Para su proceso de instalación: 

En primer lugar, debe accederse al siguiente link [Ultimas versiones de Miniconda ](https://docs.conda.io/en/latest/miniconda-other-installer-links.html), alli se selecciona preferiblemente la ultima versión de Python para el sistema operativo en cuestión, en este caso linux, como se observa en la siguiente imagen:

![image](instalador_conda.png)
    
Se tomara como ejemplo el archivo _Miniconda3 Linux 64-bit_, posterior a su descarga, en la terminal de comandos se ejecutan los siguientes comandos:

```bash
cd Downloads # Este comando redirige al usuario a la carpeta en cuestión 
bash Miniconda3-Linux-64-bit.sh # Este comando permite simplificar la ejecución de comandos contenidos en el archivo instalado
#Posteriormente se deben seguir la instrucciones alli dadas y despues reiniciar la consola.
```
Una vez ejecutadas esta series de comando, nuevamente en la terminal:

```bash
(base) $ conda update conda # Este comando permite actualizar Miniconda a su ultima version
(base) $ conda create -n digital python=3.11 # Crea y configura la variable de entorno digital para python=3.11
(base) $ conda activate digital  # Activa la variable de entorno de Miniconda denominada digital
(digital) $ python --version # Este comando permite ver la versión instalada de Python, en este caso la version 3.11 para
#poder continuar con la instalacion de los otros programas.
```
**Icarus Verilog** 

Verilog es un lenguaje de descripción de hardware (HDL), es ideal para la programación sencilla de FPGA’s Altera, este lenguaje soporta el diseño, prueba e implementación de circuitos analógicos, digitales y de señal mixta a diferentes niveles de abstracción. No obstante, Icarus Verilog se trata de un compilador, encargado de compilar código de fuente escrito en Verilog.

Para su proceso de instalación en el SO Linux, dentro de la terminal de comandos:
```bash
(base) $ conda install -c "litex-hub" iverilog
```
De manera detallada este comando le solicita a conda que instale desde el canal llamado "litex-hub", el paquete iverilog (en alusión a Icarus Verilog puntualmente). Cabe acalarar que Los canales son repositorios en línea donde se almacenan paquetes con software y bibliotecas listos para ser descargados e instalados. 

**Yosys** 

Yosys es una herramienta de código abierto, esencial en el flujo de diseño de hardware digital, ya que permite a los diseñadores transformar descripciones de alto nivel en diseños implementables y optimizad. Su nombre completo es "Yosys Open SYnthesis Suite"

Para su proceso de instalación en el SO, dentro de la terminal de comandos escribir:
```bash
conda install -c "litex-hub" yosys
```
Al igual que con el paquete iverilog, este comando le solicita a conda que instale desde el canal llamado "litex-hub", el paquete yosys. 

**GtkWave**

GTKWave es una herramienta de codigo abierto, enfocada a  diseñadores y verificadores de hardware digital, pues esta les permite visualizar y analizar las formas de onda generadas por simulaciones de circuitos digitales. Permitiendo  comprender mejor el comportamiento del hardware y a identificar problemas potenciales durante el proceso de diseño y verificación.

Para su proceso de instalación en el SO, dentro de la terminal de comandos escribir:
```bash
$ conda install -c conda-forge gtkwave 
```
De manera detallada, este comando le solicita a conda que instale desde el canal llamado "conda-forge", el paquete gtkwave.

**Grahpviz**
Graphviz es una herramienta para generar visualizaciones gráficas de grafos y diagramas de manera automática a partir de descripciones de alto nivel. Esto resulta especialmente valioso para entender las relaciones y las conexiones en sistemas complejos y datos estructurados.

Para su proceso de instalación en el SO, dentro de la terminal de comandos escribir:
```bash
$ conda install -c conda-forge graphviz
```
De manera detallada, este comando le solicita a conda que instale desde el canal llamado "conda-forge", el paquete graphviz.


Finalmente, posterior a la instalación de cada uno de estos paquetes, es posible verificar que fueron instalados correctamente revisando la version instalada, con la siguiente linea de comandos en la terminal:

```bash
$ iverilog -V # Permite observer la version de iverilog instalada
$ yosys --version # Permite observer la version de Yosys instalada
$ gtkwave --version # Permite observer la version de gtkwave instalada
$ dot -V # Permite observer la version de Graphviz instalada
```

## Resultados

**GraphViz** En la siguiente imagen se muestra, la instalación del paquete GraphViz mediante la terminal de comandos, siguiendo las instrucciones previamente mostradas: 

![imagen](https://github.com/LuisVaca1503/Lab_DIgital_1/assets/73821820/0921255d-883f-4cf9-925d-db72e8343539)

Posterior a el comando, debe autorizarse o no la instalacion, mediante el comando _y_ o _n_. Como metodo de confirmacion, al final de la instalacion se observan los estados de la instalación, con la palabra de confirmación "Done".

## Discusión
Interpreta los resultados y ofrece insights sobre su significado. ¿Cómo se relacionan los resultados con los objetivos del informe? ¿Hay patrones o tendencias importantes?

## Conclusiones
* Mediante el proceso de maquina virtual puede concluirse que se tiene un control mayor  en el proceso de instalación, pues se puede limitar las asignaciones de hardware que puede usar este ordenador asi mismo como los recursos que consume.

## Recomendaciones (si aplica)
* Problemas con VB:
* Pantalla Completa:
La primera vez que se abre el SO Linux, por lo general la escala de Pantalla no se visualiza correctamente para solucionar esto es tan simple como entrar a General / Pantalla y cambiar el controlador de vídeo a VBoxSVGA:

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/assets/92941277/b6a696dd-509e-48f9-820d-d049a33d1fd0)

* Permiso para copiar, pegar y arrastrar entre Linux y Windows.

Es habitual tener este error si no se otorgan los permisos requeridos, el primer paso es ir a Configuración / General y se selecciona la subpestaña avanzado, donde dice Portapapeles compartido y Arrastrar y Soltar, los cambiamos a Bidireccional.

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/assets/92941277/f7fc2cc6-53f0-4c03-8221-37241ec2e151).

Volvemos al inicio del Programa y donde dice Almacenamiento en negrita, IDE secundario maestro, seleccionamos unidad óptica vacía, y clickeamos seleccionar/crear una imagen de disco.

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/assets/92941277/c29bd4c8-b440-4328-9b8e-4d35401aeaa0)

Se nos abrira el explorador de archivos donde debemos buscar el iso llamado VBoxGuestAdditions.iso, en la ubicación donde se instalo Virtual Box, aunque por defecto suele estar en C:\Program Files\Oracle\VirtualBox, despues de agregar el iso a la unidad óptica, iniciamos la máquina virtual en el inicio del SO, encontraremos un iso que se abrira.

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/assets/92941277/57285078-5f15-4da8-9747-d9f22a1a98bc)


Una vez abierto vamos al botón que esta en la esquina superior derecha que dice ejecutar programa:

![image](https://github.com/LuisVaca1503/Lab_DIgital_1/assets/92941277/363d69d3-836c-475f-b26a-c107b76f7dbf)

Esto abrira la consola donde se ejecutara el programa, una vez finalizado reiniciamos la máquina virtual, y ya podremos copiar pegar y arrastrar.

  





## Referencias
* [Que es Anaconda](https://eiposgrados.com/blog-python/que-es-anaconda/)
* [Que es Miniconda](https://danielbenites.com/como-instalar-miniconda-en-linux-guia-paso-a-paso/)
* [Que es iverilog](https://www.solvusoft.com/es/file-extensions/software/open-source/icarus-verilog/)
* [Que es Yosys](https://www.linuxadictos.com/yosys-un-marco-open-source-para-herramientas-de-sintesis-verilog.html#:~:text=Para%20quienes%20no%20han%20escuchado,para%20varios%20dominios%20de%20aplicaci%C3%B3n.)
* [Que es GtkWave](https://academicos.azc.uam.mx/oan/linux/ghdlDebian.html)
*[Que es Graphviz](https://es.wikipedia.org/wiki/Graphviz)
*[Comandos de instalacion paquetes](https://github.com/johnnycubides/digital-electronic-1-101/blob/main/installTools/README.md)



