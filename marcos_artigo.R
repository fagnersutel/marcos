tab <- read.csv("marcos.csv", header = T, sep = ";")
tab

cor(tab$ia, tab$oc)
plot(tab$ia,tab$oc,col = "blue",main = "% Ocupa��o x Atra��o de Viagens",
     abline(lm(tab$oc~tab$ia)),cex = 1.3,pch = 16,
     xlab = "�ndice de Atratividade",ylab = "% de Ocupa��o")
teste <- lm(tab$oc~tab$ia)
summary(teste)

require(car)
durbinWatsonTest(teste,max.lag=10)
