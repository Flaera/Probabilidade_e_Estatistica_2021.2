jacares_locais = read.table(
  "/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/lista3/locais_quantidades_jacares3.csv",
  sep=",", header=TRUE)

bartlett.test(jacares_locais$Quantidades, jacares_locais$Locais)
#Aceita-se que as amostras estão homogênias uma vez que p-value em bartlett.test foi maior que 0.01.
shapiro.test(jacares_locais$Quantidades)
#Aceita-se H0 pois p-value > 0.01. As amostras estão normalizadas.
result <- aov(formula=jacares_locais$Quantidades ~ factor(jacares_locais$Locais))
anova(result)
#Percebe-se pelo resultados da anova() que F crítico < F value, logo rejeita-se H0
#ERRADA!!!!!