var = 36
n = 20
mean = 43
alfa = 0.01
sd = sqrt(var)

z = qnorm(1-alfa/2,0,1)
z

erro = z*sd/sqrt(n)

cat('[',mean-erro,'-',mean+erro,']')
#Aceita-se H0 pois o valor 45 esta na zona de RNR