
# Laboratorio 5: Correlación
# Alumno: Luis Miguel Toribio Ferrer
# Fecha: 28/02/2023

# Ejercicio 1: El cuarteto de Anscombe ------------------------------------

# generar graficos de distribucion de puntos para cada par de datos

op = par(mfrow = c(2, 2), mar = c(4.5, 4, 1, 1))
plot(anscombe$x1, anscombe$y1, pch = 20, main = "A")
plot(anscombe$x2, anscombe$y2, pch = 20, main = "B")
plot(anscombe$x3, anscombe$y3, pch = 20, main = "C")
plot(anscombe$x4, anscombe$y4, pch = 20, main = "D")
par(op)

# Coeficiente de correlacion ----------------------------------------------

#plot A
cor.test(anscombe$x1, anscombe$y1)
#plot B
cor.test(anscombe$x2, anscombe$y2)
#plot C
cor.test(anscombe$x3, anscombe$y3)
#plot D
cor.test(anscombe$x4, anscombe$y4)
