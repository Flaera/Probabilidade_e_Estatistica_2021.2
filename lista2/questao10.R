TecAtual = c(300, 280, 344,385, 372, 360, 288, 321, 376, 290, 301, 283)
TecNova = c(274, 220, 308, 336, 198, 300, 315, 258, 318, 310, 332, 263)
alfa=0.02

t.test(TecNova, TecAtual, conf.level=1-alfa, alternative="two.sided", paired=TRUE)
# Como p-valor > alfa em testes de hipotéses t de student então aceita-se H1: u1 maior que u2...
#que é a hipotése de não igualdade. Indicando que a metodologia anterior era melhor.
#Correção: passei o parâmetro paired=TRUE e reinterpretei de acordo com a questão.
