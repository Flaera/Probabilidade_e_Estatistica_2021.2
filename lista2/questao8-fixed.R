before = c(54, 61, 50, 74, 79, 58, 55, 49, 63)
after = c(57, 66, 53, 73, 82, 58, 56, 53, 63)
alfa = 0.05

var.test(before, after, conf.level=1-alfa, paired=FALSE)
#Como p-value > alfa as variâncias são homogêneas.

t.test(before, after, conf.level=1-alfa, paired=FALSE, var.equal=TRUE)
#Como p-value > alfa aceita-se H0, não há diferenças entre as dietas.