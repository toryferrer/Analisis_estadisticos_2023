#Alumno: Luis Miguel Toribio Ferrer
#Matricula: 2173385
#Fecha: 22/02/2023

#ASIGNACION 03: Medidas de tendencia central 


# Problema 1 --------------------------------------------------------------

#considere los siguientes datos de x & y

x <- c(6,4,1,3)
y <- c(1,3,4,2)

#aplicar las funciones de sum y prod

sum(x) 

prod(x)

prod((x^2)*(y^0.5))

sum(x*y)

prod(x*y)

# Problema 2 --------------------------------------------------------------

# Se enuncian dos conjunto de datos que contienen la alturas de plántulas (cm) producidas en vivero. El primero conjunto contiene solo 4 alturas y el segundo consta de 15.

grupo_A <- c(80, 90, 90, 100)

grupo_B <- c(60, 65, 65, 70, 70, 70, 75, 75, 80, 80, 80, 80, 80, 85, 100)

#Sin realizar ningún calculo, cual grupo piensas que tiene una altura media mayor.

#el grupo A, debido que tiene una menor cantidad de variables mismas que tienen valores altos.

#Ahora calcule la media para cada clase (en R). ¿Cuál grupo tiene la media en altura más grande? Coincide con su primera impresión?

mean(grupo_A)

mean(grupo_B)

#el grupo A tiene una media mas grande

#si concidio con mi primera respuesta. 


# Problema 3 --------------------------------------------------------------

#José quiere tener un promedio de 80 en sus 4 exámenes. Cada examen se califica en una escala de 0 a 100. Sus primeros tres exámenes son: 87, 72, 85. ¿Qué necesita José para calificar en el 4to. examen para tener una media de 80 en los 4 exámenes?

examenes <- c(87,72,85)

mean(examenes)

(4*80)-sum(examenes)

#jose necesita sacar 76 de calificacion en su cuarto examen para obtener un promedio de 80.


# problema 4 --------------------------------------------------------------

# El comité escolar de una pequeña ciudad quiere determinar el número promedio de niños por hogar en su ciudad. Hay 50 hogares en la ciudad. Ellos dividen el total número de niños en la ciudad por 50 y determine que el número promedio de niños por hogar es 2.2. ¿Cuál de los siguientes enunciados debe ser verdad?

  #a) La mitad de los hogares de la ciudad tienen más de 2 hijos.
  #b) Hay un total de 110 niños en la ciudad.
  #c) El número más común de niños en un hogar es 2.2.
  #d) Nunguna de las anteriores.

50*2.2

#el enunciado b son las correctas. 

# Problema 5 --------------------------------------------------------------

# El numéro de semillas germinadas (Germinaciones) que se encontraron en las cajas petri se muestran en el siguiente cuadro.

germi<- c(5,6,7,8,9)
petri<- c(1,3,5,3,1)

germinacion <- data.frame(germi, petri)

sum(germinacion$petri)

germ.2 <- c(5,6,6,6,7,7,7,7,7,8,8,8,9)
c.petri <- c(1:13)

germ2 <- data.frame(c.petri, germ.2)

mean(germ2$germ.2)


#¿Qué tipo de gráfico podrías usar para visualizar estos datos?

#grafita de tallos y hoja 

stem(germ.2)

#histograma

hist(germ.2)

#¿Cuál es la media? Muestre su trabajo o código, o explique cómo obtuvo su respuesta.

mean(germ2$germ.2)

mean(petri)
#¿Cuál es la mediana? Muestre su trabajo o código, o explique cómo obtuvo su respuesta

median(germ2$germ.2)

median(petri)
# Problema 6 --------------------------------------------------------------

#En este problema, exploramos el efecto sobre la media, la mediana y la moda de: 1) sumar elvmismo número a cada valor de datos, y 2) de multiplicar cada valor de datos por el mismo número. Use el siguiente conjunto de datos

set <- c(2, 2, 3, 6, 10)

#Calcule la moda, la mediana y la media

mean(set)
median(set)
library(modeest)
mfv(set)

#Suma 5 a cada uno de los valores de los datos. Calcule la moda, la mediana y la media

set.5 <- (set+5)

mean(set.5)
median(set.5)
mfv(set.5)

#Compare los resultados de las partes (a) y (b). En general, ¿cómo crees que la moda, la mediana y la media se ven afectadas cuando se agrega la misma constante a cada valor de datos en un conjunto?

#Se incrementa el resultado de acuerdo con el valor de la constante 

#Multiplique cada valor de los datos por 5. Calcule la moda, la mediana y la media.

setx5 <- set*5

mean(setx5)
median(setx5)
mfv(setx5)
#Compare los resultados de las partes (a) y (d). En general, ¿cómo crees que la moda, La mediana y la media se ven afectadas cuando cada valor de datos en un conjunto se multiplica por la misma constante?

#se comportan igual, su valor incrementa nomas. 


# problema 7 --------------------------------------------------------------

#Para este problema, use los dígitos 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.

#Enumere cinco dígitos que tengan una mediana de 7 y una media de 7 (se permiten repeticiones). 

datos <- c(5,6,7,8,9)

mean(datos)
median(datos)

##Encontrar un conjunto diferente de 5 dígitos que tambien funcionen.

otros_datos <- c(0,1,2,3,4)
mean(otros_datos)
median(otros_datos)

#Enumere cinco dígitos que tengan una mediana de 7 y una media inferior a 7 (se permiten repeticiones).

digitos <- c(1,2,7,8,9)
mean(digitos)
median(digitos)

#Da la media de tus 5 dígitos. Encuentra un conjunto diferente de 5 dígitos que funcione.

otros_dig <- c(0,2,3,4,5)
mean(otros_dig)
median(otros_dig)
