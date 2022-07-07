f_impress = read.table(
  "/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/fabricas_question2.csv",
  header=TRUE, sep=',', dec='.')
f_impress

#Testando a normalidade das amostras:
bartlett.test(f_impress$Nota_dos_funcionarios, f_impress$Fabricas)
#Como p-value > alfa (5%), aceita-se a normalidade das amostras e prossegue os cálculos com elas.

result = aov(formula=f_impress$Nota_dos_funcionarios ~ factor(f_impress$Fabricas))
anova(result)
# Como p-value é inferior a 0.05 rejeita-se H0, ou seja há um nivel de significância razoável...
# nas amostras.
#ERRADA!!!!!!!!!!!