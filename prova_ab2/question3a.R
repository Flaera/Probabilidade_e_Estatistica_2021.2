XX = 16
Procedimento1 = c(45, 51, 50, 62, 43, 42, 53, 50, 48, 55, (XX + 10), (XX + 5))
Procedimento2 = c(45, 35, 43, 59, 48, 45, 41, 43, 49, 39, (XX + 3), (XX - 2))
alfa = 0.04
t.test(Procedimento1, Procedimento2, conf.level=1-alfa/2, paired=TRUE)
