#Tarea o4: Boxplot e histogramas
#Alumno: Luis Miguel Toribio Ferrer
#Fecha: 28/02/2023


# HISTOGRAMAS -------------------------------------------------------------

# Considere el siguiente conjunto de datos x2 con 1000 números al azar.

set.seed(9875)
size <- 1000
x2 <- round(runif(n = size, min = 0, max = 10), 2)

# Incluir los siguientes intervalos de clase y personalizas con los puntos medios de cada intervalo de clasemids:

# [0, 2)[2, 4)[4, 6)[6, 8)[8, 10)

diam_hist <- hist(x2, las = 1, col ='green')

diam_hist

h2 <- hist(x2, xaxt = "n",
           breaks = c(0,2,4,6,8,10),
           col = "orange", xlab="clase",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,250))

axis(1, h2$mids)

h2
#Incluir los siguientes intervalos de clase y personalizas con los puntosmedios de cada intervalo de clasemids. 

# (0, 1](1, 2](2, 4](4, 7](7, 10]

h3 <- hist(x2, xaxt = "n", freq = TRUE,
           breaks = c(0,1,2,4,7,10),
           col = "orange", xlab="clase",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,400))

axis(1, h3$mids)

h3
#¿Cuál distribución parece estar sesgada a la derecha?

# Histograma D

#¿Cuál distribución parece estar sesgada a la izquierda?

# Histograma A

# ¿Cuál distribución parece ser simétrica o en forma de “campana”?

# Histograma C

# ¿Cuál distribución parece ser bimodal?

# Histograma B

# ¿Cuál distribución parece mostrar una falta de intervalos?

# Histograma C


# PROBLEMA 3 --------------------------------------------------------------

data(quakes)

mags <-  hist(quakes$mag, xaxt = "n",# breaks = c(en caso de necesitar aqui se puede especificar)
          col = "blue", 
          xlab="Magnitud de los terremotos",
          ylab= "Frecuencias",
          main = "",
          las = 1,
          ylim = c(0,260))

axis(1, mags$mids)

mags
# ¿Cómo describiría la forma de esta distribución de las magnitudes de los terremotos?

# sesgada a la derecha

# Mencione un intervalo donde ocurren tipicamente las magnitudes.

# (4.4, 4.6)

# Determine el rango de las magnitudes (Range = Max - Min).

range(quakes$mag, na.rm = TRUE)

range(mags$breaks, na.rm = TRUE)

# ¿Qué porcentaje de los terremotos ocurren con magnitud en la clase 5.3 (5.1 : 5.4)?

clase_1 <- subset(quakes, mag>=5.1)
clase_5_3 <- subset(clase_1, mag<= 5.4)

dim(clase_5_3)

((113/1000)*100)

# ¿Qué porcentaje de los terremotos tiene una magnitud igual o mayor a 5.0?

ig_may_5 <- subset(quakes, mag>=5)

dim(ig_may_5)

((198/1000)*100)

# ¿Qué porcentaje de los terremotos tienen una magnitud menor o igual a 4.6?

men_ig_4_6 <- subset(quakes, mag<=4.6)

dim(men_ig_4_6)

((585/1000)*100)

# problema 4 --------------------------------------------------------------

#¿Qué porcentaje de las observaciones en una distribución se encuentran entre el primer y el tercercuartil?

# 50 %

# Problema 5 --------------------------------------------------------------

#¿Cuál especie tiene el diámetro más pequeño?

# c

#¿Cuál especie tiene el diámetro más grande?

# F

#¿Cuál especie tiene el diámetro mínimo más alto?

# F

#¿Cuál especie tiene la mediana de diámetro más pequeña?
  
# C

#¿Cuál especie tiene la mediana de diámetro mas grande?

# H

#¿Cuál especie tiene el menor rango de diámetro?

# F

#Cuál especie tiene el rango intercuantil (Q3-Q1) mas grande?

# C
  
#¿Cuál especie tiene el rango intercuantil (Q3-Q1) mas pequeño?

# F
  
#¿Cuál especie tiene una distribución simétrica?

# H

#¿Cuál especie tiene el sesgo positivo (ver Fig. 2) más marcado ?

# F

# PROBLEMA 6 --------------------------------------------------------------

#Los siguientes datos muestran el número de incendios forestales ocurridos en cada semana en nuestros bosques de México. Los datos son del 01 de enero al 04 de marzo del 2021 de acuerdo con el reportede CONAFOR.

fires <- c(78, 44, 47, 105, 126, 181, 277, 210, 155)
fires

# VALOR MINIMO 

min(fires)

#VALOR MAXIMO 

max(fires)

#RANGO 

range(fires)

#Q1 (25%)

Q1 <- quantile(fires, c(0.25)); Q1

#Q2 (50%)

Q2 <- quantile(fires, c(0.50)); Q2

#Q3 (75%)

Q3 <- quantile(fires, c(0.75)); Q3

# MEDIA 

mean(fires)

# Varianza

var(fires)

# Desviación estándar 

sd(fires)

# Realice un boxplot personalizado con los datos de los incendios.

boxplot(fires, ylab="fires", 
        las = 1, 
        horizontal = TRUE, 
        col="red",
        main = "Incendios")
#Fin

