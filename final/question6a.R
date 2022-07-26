xx = 16

table = read.table("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/final/table_question6.csv",
                   sep=";")


result = lm(table$V2 ~ factor(table$V1))
anova(result)
