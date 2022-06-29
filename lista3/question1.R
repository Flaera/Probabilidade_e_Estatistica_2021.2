#f1 <- c(68.5,74.0,67.2,69.9,68.0)
#f2 = c(76.3,75.3,74.0,71.2,74.5)
#f3 <- c(70.6,75.2,70.8,74.7,72.9)
#f4 = c(75.4,69.9,72.6,67.5,70.4)

f_table = read.table("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/fornecedores_da_question1.csv",
                     header=TRUE, sep=',', dec='.')
f_table

result = aov(formula=(f_table$Taxa_de_cevada ~ factor(f_table$Fornecedores)))
anova(result)
#Rejeita-se H0 por Pr(>F) ter 4%, mas isso não descreve as diferenças, então roda-se o TukeyHSD
TukeyHSD(result)
#Observando-se as diferenças entre diff e p adj, há uma alta diff entre o fornecedor 2 e 1...
#segundo essas observações.