amostras_concen = 
  read.table("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/amostras_concentracoes.csv",
             sep=",", dec=".", header=TRUE)
amostras_concen

#Calculando equação da reta:
#Soma de X:
sumx = 0
for (i in amostras_concen$X) {
  print(i)
  sumx = sumx + i
}
sumx
#Soma de Y:
sumy = 0
for (j in amostras_concen$Y) {
  print(j)
  sumy = sumy + j
}
sumy
#lenght:
len_xy = length(amostras_concen$X)
#Somatório de x*y:
sum_xy=amostras_concen$X * amostras_concen$Y
sum_xy
sum_xy_final = 0
for (k in sum_xy) {
  sum_xy_final = sum_xy_final + k
}
sum_xy_final
#Definindo square em somatório:
sum_xsquare = 0
for (l in amostras_concen$X) {
  sum_xsquare = (sum_xsquare + l)^2
}
sum_xsquare
#Definindo a e b:
a = (len_xy*sum_xy_final-sumx*sumy)/(len_xy*sum_xsquare-(sumx)^2)
a
b = (sumy/len_xy)-(a*(sumx/len_xy))
b
# Logo a equaão da reta é:
cat("Equação da reta:")
cat("y = (",a,")*x + (",b,")")

#ERRADA!!!!!!!!!!
