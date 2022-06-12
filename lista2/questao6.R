mean_cote = 127
sample = c(125, 124, 125, 125, 125, 125, 124, 123, 122, 123, 123, 123, 123, 124, 124)
alfa = 0.05

t.test(sample, conf.level=1-alfa)
#Como a cota é 127 rejeita-se a hipotese das variâncias serem homogêneas para...
#o intervalo apresentado em t.test na zona RNR que inferior a cota
