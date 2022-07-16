xx = 16

n = 35000
amostra = 350+xx
media = 800+xx
sd = 100
alfa = 0.05

z = qnorm(1-alfa/2,0,1)

erro2 = 0.08
amostra_n = ((z*sd)-erro2)^2
amostra_n
