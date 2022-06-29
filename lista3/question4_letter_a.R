amostras_concen = 
  read.table("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/amostras_concentracoes.csv",
             sep=",", dec=".", header=TRUE)
amostras_concen

c = cor(amostras_concen$X, amostras_concen$Y)
c
#Logo pelos resultados da correlação entre as amostras, há uma forte correlação.
#Para avaliar o quão forte esta correlação se possegue nos calculos:
cor.test(amostras_concen$X, amostras_concen$Y, method="pearson")
#Segundo teste de correlação, há um p-value < 0.05 o que significa a rejeição de...
#H0, pois esta longe do intervalo de confiança em cor.test().

#Calculando coeficiente de determinação:
c_det = c^2
c_det
