TecAtual = c(300, 280, 344,385, 372, 360, 288, 321, 376, 290, 301, 283)
TecNova = c(274, 220, 308, 336, 198, 300, 315, 258, 318, 310, 332, 263)
alfa=0.02

t.test(TecNova, conf.level=1-alfa, alternative="two.sided")
t.test(TecAtual, conf.level=1-alfa, alternative="two.sided")
# Como p-valor é menor que alfa nos dois resultados de t então aceita-se H0: u1 maior que u2...
#que e hipotése de não igualdade.
