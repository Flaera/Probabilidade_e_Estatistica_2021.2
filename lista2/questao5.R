mean = 550
n = 15
sd = 25
alfa = 0.05

z = qnorm(1-alfa/2,0,1)
z

erro = z*sd/sqrt(n)

cat('[',mean-erro,'-',mean+erro,']')
#O fabricante pode afirmar que a resistência aumentou pois a resistência mínima é maior que 510