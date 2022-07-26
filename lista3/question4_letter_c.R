amostras_concen = 
  read.table("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/amostras_concentracoes.csv",
             sep=",", dec=".", header=TRUE)
amostras_concen

result = lm(amostras_concen$X~amostras_concen$Y, amostras_concen)
summary(result)
b = -0.11509
a = 1.01243
# Logo a equaão da reta é:
cat("Equação da reta:")
cat("y = (",a,")*x + (",b,")")

#Para x=5:
y1 = a*5+b
cat("Para x=5, y= ", y1)
#Para x=12:
y2 = a*12+b
cat("Para x=12, y= ", y2)
