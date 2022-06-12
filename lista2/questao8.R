before = c(54, 61, 50, 74, 79, 58, 55, 49, 63)
after = c(57, 66, 53, 73, 82, 58, 56, 53, 63)
alfa = 0.05

var.test(before, after, conf.level=1-alfa)
#Como o p-valor é maior que o alfa, admite-se a hipotése 0...
#há igualdade entre as dietas.