n = 15
alfa = 0.05
bfs = c(32, 27, 38, 35, 33, 29, 25, 19, 31, 24)
dfs = c(26, 21, 20, 37, 30, 18, 19, 25, 32, 34)

var.test(bfs, dfs, conf.level=1-alfa, paired=TRUE)
#Como p-value > alfa prossegue-se com os cálculos pois as variâncias são homogêneas.

t.test(bfs, dfs, conf.level =1-alfa, var.equal=TRUE)
# Como p-value > alfa, aceita-se H0. Assim, há uma diferença na velocidade...
#entre as soluções dos alunos.