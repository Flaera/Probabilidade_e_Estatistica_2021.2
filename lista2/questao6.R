mean_cote = 127
sample = c(125, 124, 125, 125, 125, 125, 124, 123, 122, 123, 123, 123, 123, 124, 124)
alfa = 0.05

before = c(mean_cote,mean_cote,mean_cote,mean_cote,mean_cote,
           mean_cote,mean_cote,mean_cote,mean_cote,mean_cote,
           mean_cote,mean_cote,mean_cote,mean_cote,mean_cote)
t.test(sample, before, conf.level=1-alfa/2, paired=TRUE)
#Desta vez, eu considerei a média do semestre anterior como nota dos alunos no semestre anterior...
#e criei o data_frame before(). Eu fiz isso para poder usar testes pareados como tinha mencionado...
#a questão.
#Como o p-valor foi muito baixo, admite-se H1, que entre as médias há diferença entre o semestre...
#passado e o atual em favor.
