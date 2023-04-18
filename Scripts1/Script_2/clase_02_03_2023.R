library(repmis)
conjunto <- source_data("https://www.dropbox.com/s/hmsf07bbayxv6m3/cuadro1.csv?dl=1")
head(conjunto)

conjunto$Especie <- as.factor(conjunto$Especie)
conjunto$Clase <- as.factor(conjunto$Clase)

boxplot(conjunto$Diametro,
        col = "green",
        ylab="Diametro")

boxplot(conjunto$Diametro ~ conjunto$Especie)

#prueba de t sirve para comparar solo dos muestreas independiente

#prueba de varianza para varias muestras. 


boxplot(conjunto$Altura ~ conjunto$Especie)


# valor atipico que se sale del 95% de los valores 


boxplot(conjunto$Diametro ~ conjunto$Clase)

cor.test(conjunto$Diametro, conjunto$Altura)

#valor de p alfa =0.005

plot(conjunto$Diametro, conjunto$Altura, pch=20)

#df= n-2


