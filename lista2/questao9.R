before <- c(89, 84, 96, 82, 74, 92, 85, 91)
after = c(83, 83, 92, 84, 76, 91, 80, 91)
alfa = 0.10

var.test(before, after, conf.level=1-alfa)
#Como o p-valor é maior que o alfa há evidências que o professor esta correto.