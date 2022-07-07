var = 14
sample = 120
media = 9
alfa = 0.1

z = qnorm(1-alfa/2,0,1)
z
sd = sqrt(var)
erro = z*sd/sqrt(120)
erro

cat('[',media-erro,'-',media+erro,']')
#Alterações 1:  Apenas reinterpretei o cálculo da media, ao invés de sample/time_day(120/9)...
#considerei o intervalo médio de produção como a média na questão.
