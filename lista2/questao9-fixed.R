before <- c(89, 84, 96, 82, 74, 92, 85, 91)
after = c(83, 83, 92, 84, 76, 91, 80, 91)
alfa = 0.10

var.test(before, after, conf.level=1-alfa, paired=TRUE)
#Como o p-valor > alfa as amostras tem variâncias homogêneas.

t.test(before, after, conf.level = 1-alfa, paired=TRUE, var.equal=TRUE)
#Como p-value > alfa aceita-se H0. Sendo assim, o professor esta correto.