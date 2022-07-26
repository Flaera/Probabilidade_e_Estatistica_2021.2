table = read.table("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/table_question5.csv",
                   sep=",", header=TRUE)
table

result = lm(table$x~table$y)
summary(result)
#Interpretação:
#Como p-value < alfa(0.05), também por não estar na região do intervalo de confiança,...
#Rejeita-se H0.