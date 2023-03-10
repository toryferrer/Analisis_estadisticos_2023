# LABORATORIO 04: Resumir datos gráficamente
# Histogramas
# 27/03/2023
# Nombre: Luis Miguel Toribio Ferrer

# Importar datos ----------------------------------------------------------

esp.url <- paste0("https://raw.githubusercontent.com/mgtagle/",
                 "PrincipiosEstadistica2021/main/cuadro1.csv")
inventario <- read.csv(esp.url)
head(inventario)

tail(inventario)

# funciones para revisar los conjuntos de datos  --------------------------


# mostrar la estructura general de los datos

str(inventario)

# dimensiones (i.e. tamaño) del conjunto de datos

dim(inventario)

# muestra las primeras n filas

head(inventario, n=5)

# muestra las últimas n filas

tail(inventario, n=5)

# nombre de las columnas

names(inventario)

names(inventario[ ,4:7])

# igual names(inventario)

colnames(inventario)

# resumen estadístico de las variables presentes en inventario

summary(inventario)

is.factor(inventario$Posicion)

inventario$Posicion <- factor(inventario$Posicion)
is.factor(inventario$Posicion)

summary(inventario)

# Tablas de frecuencia ----------------------------------------------------

# Frecuencia absoluta

freq_position <- table(inventario$Posicion)
freq_position

# Frecuencia relativa

prop_position <- freq_position / sum(freq_position)
prop_position

# Frecuencia en porcentaje

perc_position = 100 * prop_position
perc_position


# # Representación gráfica para variables cualitativas --------------------

#Gráficas barplot

barplot(freq_position, las = 1, border = NA, cex.names = 0.7)

#grafico circula o de pie

pie(freq_position, col=topo.colors(4))


pie(freq_position, col = topo.colors(4),
    labels = paste(levels(inventario$Posicion), round(perc_position, 2), " %"))

# Completar una tabla de frecuencia y su representación gráfica (barplot y pie)

frep_especie <- table(inventario$Especie)

prop_especie <- frep_especie / sum(frep_especie)
prop_especie

perc_especie = 100 * prop_especie
perc_especie

#Gráficas barplot

barplot(frep_especie, las = 1, border = NA, cex.names = 0.7)

#grafico circula o de pie

inventario$Especie <- factor(inventario$Especie)
is.factor(inventario$Especie)

pie(frep_especie, col=topo.colors(4))

pie(frep_especie, col = topo.colors(3),
    labels = paste(levels(inventario$Especie), round(perc_especie, 2), " %"))


# Representación gráfica para variables cuantitativas  --------------------

diam_hist <- hist(inventario$Diametros, las = 1, col = 'red')

diam_hist

diam_hist$breaks

h1 <- hist(inventario$Diametros, xaxt = "n",
           breaks = c(6, 8, 10, 12, 14, 16, 18, 20, 22,24),
           col = "blue", xlab="Diámetros (cm)",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))

axis(1, h1$mids)

#Realizar el mismo procedimiento para la variable Altura.

altura_hist <- hist(inventario$Altura, las = 1, col="green")

altura_hist

altura_hist$breaks

h2 <- hist(inventario$Altura, xaxt = "n",
           breaks = c(8, 10, 12, 14, 16, 18, 20, 22),
           col = "orange", xlab="Alturas (cm)",
           ylab= "Frecuencias",
           main = "",
           las = 1,
           ylim = c(0,14))

axis(1, h2$mids)
