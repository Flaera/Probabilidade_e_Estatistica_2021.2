n = 15
alfa = 0.05
bfs = c(32, 27, 38, 35, 33, 29, 25, 19, 31, 24)
dfs = c(26, 21, 20, 37, 30, 18, 19, 25, 32, 34)

var.test(bfs, dfs, conf.level=1-alfa, paired=FALSE)
#Correção: a questão pede pra comparar as médias, mas como falou do var.test() resolvi...
#tentar comparar as variâncias. Isso também porque a interpretação do enunciado...
#não exige um intervalo de confiança.
#Quanto a questão, existe diferença, pois p-valor > alfa, sendo assim rejeita-se a...
#igualdade dos intervalos,