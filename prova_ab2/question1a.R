xx = 16

n = 35000
amostra = 350+xx
media = 800+xx
sd = 100
alfa = 0.01

z = qnorm(1-alfa/2,0,1)
z
erro = z*sd/sqrt(n)
erro

cat('[',media-erro,'-',media+erro,']')
