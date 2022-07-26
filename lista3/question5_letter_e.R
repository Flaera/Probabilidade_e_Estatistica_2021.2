table = read.table("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/table_question5.csv",
                   sep=",", header=TRUE)
table

result1 = lm(table$x~table$y)
summary(result1)

b=-19.6670 
a=1.2491

cat("Equação da reta:")
cat("y = (",a,")*x + (",b,")")
