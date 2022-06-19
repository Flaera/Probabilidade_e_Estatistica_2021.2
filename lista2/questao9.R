before <- c(89, 84, 96, 82, 74, 92, 85, 91)
after = c(83, 83, 92, 84, 76, 91, 80, 91)
alfa = 0.10

var.test(before, after, conf.level=1-alfa, paired=TRUE)
#Como o p-valor > alfa há evidências que H0 esta correto.
#Correção: apenas alterei a forma de interpretação da questão e passei o parâmetro paired=TRUE.