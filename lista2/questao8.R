before = c(54, 61, 50, 74, 79, 58, 55, 49, 63)
after = c(57, 66, 53, 73, 82, 58, 56, 53, 63)
alfa = 0.05

var.test(before, after, conf.level=1-alfa, paired=FALSE)
#Como o p-valor é maior que o alfa, admite-se a hipotése 0, não há...
#diferenças entre as dietas.
#Correção: apenas mudei a interpretação admitindo como certo a hipotése 0.
