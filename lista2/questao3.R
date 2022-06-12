n = 3500
n_favor = 65/100*n
alfa = 0.05
p = n_favor/n



#t.test(x=n, mu=mean, alternative="two.sided", conf.level=0.95)
#Acho que é uma questão de espalo amostral com proporção?
z = qnorm(1-alfa/2,0,1)
z

erro <- z*sqrt((p*(1-p))/n)
erro

mean = p

cat("[",mean-erro,'-',mean+erro,']')
