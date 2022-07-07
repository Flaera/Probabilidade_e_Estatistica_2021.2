n = 3500
n_favor = 65/100*n
alfa = 0.05

prop.test(n_favor, n, conf.level = 1-alfa)
#Como p-value < alfa, rejeita-se H0.