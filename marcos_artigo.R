tab <- read.csv("marcos.csv", header = T, sep = ";")
tab

cor(tab$ia, tab$oc)
plot(tab$ia,tab$oc,col = "blue",main = "% Ocupação x Atração de Viagens",
     abline(lm(tab$oc~tab$ia)),cex = 1.3,pch = 16,
     xlab = "Índice de Atratividade",ylab = "% de Ocupação")
teste <- lm(tab$oc~tab$ia)
summary(teste)

require(car)
durbinWatsonTest(teste,max.lag=10)
