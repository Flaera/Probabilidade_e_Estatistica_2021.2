var = 14
sample = 120
time_day = 9
alfa = 0.1

z = qnorm(1-alfa/2,0,1)
z
sd = sqrt(var)
media = 120/9
erro = z*sd/sqrt(120)
erro

cat('[',media-erro,'-',media+erro,']')
