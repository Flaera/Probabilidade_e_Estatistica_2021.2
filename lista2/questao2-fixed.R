n = 10
sample = c(80, 75, 71, 82, 77, 64, 78, 67, 81, 79)
alfa = 0.02

t.test(sample, conf.level=1-alfa)
#Rejeita-se H0 por p-value < alfa.
