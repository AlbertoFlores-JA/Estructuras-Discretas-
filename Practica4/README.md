**Objetivo de la práctica:** 

El objetivo de la practica es aplicar el conocimiento teorico de la recursion en haskell, aplicando funciones que se vuelvan a llamar en el codigo e intrucir variables declaradas al inicio, y usar funciones auxiliares para la correcta resolucion de problemas

**Tiempo requerido:** 

3-4 horas

**Ejercicio favorito:** 

la chivita recursiva :)

**Comentarios extra:** 

Se me paso el tiempo, solo me faltaba ese README que voy a subir a destiempo :(

**La chivita recursiva**

En la cancion de plim plim nos habla de recursion cuando llamas a un animal seguido de otro para bajar a la chivita de donde se subio, asi subiendo  n cantidad de animales hasta que llega plim plim y cuando baja a uno, seguidamente los animales bajan al anterior que subio de el.

chivita + caballo + pollo , si no llega plim plim podemos agregar todos los animales que aguante el pajar

**Preguntas**
1. ¿Cuál es la diferencia de las operaciones implementadas en ambos archivos? ¿Como se manejan todos casos en cada implementación?

La diferencia es sobre su especificacion, porque la de enteros.hs nos da cada posible caso para nos numeros enteros y su respectivo caso con el cero, por lo que depende del booleano para asignar cual es mayor y que signo le da al resultado
En cambio entero.hs reduce la cantidad de patrones porque una suma de un negativo es tecnicamene una resta, por eso puede separar la logica  de todos los casos posibles

2. ¿Por qué se tiene implementada la operación mayorEnt en el archivo enteros.hs ?

Porque nos da indicios de que signo debe tener la operacion que debe tener y si a la suma o resta, a cual le va a pegar el signo segun el caso asignado por eso depende de saber que numero o es mayor

3. Si pudieras quedarte con una sola implementación. ¿Cuál sería? Justifica tu
respuesta.

Pues hasta para recordar es mas facil declarar los de el codigo de github porque son menos condiciones, tal vez asignando los valores en la imagen podria olvidar alguna condicion y ya no funcionar bien mi suma de enteros entonces da menos chance de error y bueno nos ahorramos tener que comparar si cual es mayor o menor y generaliza si es suma o resta en lugar de asumir que haremos sumas siempre siempre, si es una resta escrita de otra forma aprovecha esto