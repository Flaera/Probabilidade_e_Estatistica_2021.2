n = 10
sample = c(80, 75, 71, 82, 77, 64, 78, 67, 81, 79)
alfa = 0.02

z = qnorm(1-alfa/2,0,1)
erro = z*sd(sample)/sqrt(10)
media = mean(sample)

cat("[",media-erro,'-',media+erro,"]")
