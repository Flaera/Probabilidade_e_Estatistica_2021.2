amostras_concen = 
  read.table("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/amostras_concentracoes.csv",
             sep=",", dec=".", header=TRUE)
amostras_concen

#Calculando equação da reta:
result = lm(amostras_concen$X~amostras_concen$Y, amostras_concen)
summary(result)
b = -0.11509
a = 1.01243
# Logo a equaão da reta é:
cat("Equação da reta:")
cat("y = (",a,")*x + (",b,")")

