library(bipartite)

data(Safariland)
plotweb(Safariland)




matriz <- read.csv("Interacciones_ecologia/matriz.csv")
red<-data.frame(matriz, row.names=1)


plotweb(red, method = "cca", text.rot = 90, col.low="red", bor.col.interaction ="black", col.high = "green",labsize = 1.5)

visweb(red, type = "diagonal")

library(igraph)

red1 <- graph.incidence(red, weighted=NULL)

V(red1)
V(red1)$type
V(red1)$name
E(red1)
E(red1)$weight

plot(red1)
