n = 15
alfa = 0.05
bfs = c(32, 27, 38, 35, 33, 29, 25, 19, 31, 24)
dfs = c(26, 21, 20, 37, 30, 18, 19, 25, 32, 34)

sd_bfs = sd(bfs)
sd_dfs = sd(dfs)

z = qnorm(1-alfa/2,0,1)

error_bfs = z*sd_bfs/sqrt(n)
error_dfs = z*sd_dfs/sqrt(n)

mean_bfs = mean(bfs)
mean_dfs = mean(dfs)

cat("Intervalos de confiança para BFS e DFS respectivamente:")
cat('[',mean_bfs-error_bfs,'-',mean_bfs+error_bfs,']')
cat('[',mean_dfs-error_dfs,'-',mean_dfs+error_dfs,']')
#Existe diferença, sendo assim refeita-se a igualdade dos intervalos...
#Embora exista uma parte no intervalo que se iguale.