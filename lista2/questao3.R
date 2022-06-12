n = 3500
n_favor = 65/100*n
alfa = 0.05
p = n_favor/n



#t.test(x=n, mu=mean, alternative="two.sided", conf.level=0.95)

z = qnorm(1-alfa/2,0,1)
z

erro <- z*sqrt((p*(1-p))/n)
erro

mean = p

cat("[",mean-erro,'-',mean+erro,']')
# Com o intervalo de RNR de 95% para 65% de eleitores em 3500 eleitores, aceita-se os 65% como valor real