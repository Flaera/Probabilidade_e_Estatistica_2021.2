table = read.table("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/table_question5.csv",
                   sep=",", header=TRUE)
table

#Coeficiente de correlação:
c = cor(table$x, table$y)
c
#Coeficiente de determinação
det = c^2
det
