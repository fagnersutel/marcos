ANOS <- c(2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017)
EPV <- c(109, 179, 207, 208, 307, 251, 188, 145, 91)
CPT <- c(648, 639, 728, 673, 625, 460, 408, 436, 312)
comparado <- cbind(ANOS, EPV, CPT)
CPT2 <- cbind(ANOS, CPT) 
comparado
plot(comparado)


# NOT RUN {
require(stats) # for lowess, rpois, rnorm
plot(comparado, col=ANOS, pch=16)
lines(comparado, col="red", lty=2)
title(main="PROJETOS EPV", col.main="red", font.main=4)

plot(CPT2, col=ANOS, pch=16)
lines(CPT2, col="red", lty=2)
title(main="PROJETOS CPT", col.main="red", font.main=4)
