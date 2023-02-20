
# PRUEBA DE HIPOTESIS -----------------------------------------------------

vivero <- read.csv("vivero.csv", header=TRUE)
head(vivero)

boxplot(vivero$IE ~ vivero$Tratamiento, col="grey")
