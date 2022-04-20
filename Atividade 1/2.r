library(readxl)
library(tcltk)

dados <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")
municipio <- subset(dados, NO_MUNICIPIO_PROVA == "Rio Largo")
alunos <- subset(municipio, TP_SEXO == "Masculino")
alunas <- subset(municipio, TP_SEXO == "Feminino")
notas_alunos <- alunos$NOTA_ENEN
notas_alunas <- alunas$NOTA_ENEN
windows()
hist(notas_alunos, breaks = 10, main = "2 - Histograma das notas dos alunos",
                    col = "blue", xlab = "Notas", ylab = "Frequencias")

prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)

windows()                    
hist_alunas <- hist(notas_alunas, breaks = 10, main = "2 - Histograma das notas dos alunas",
                    col = "red", xlab = "Notas", ylab = "Frequencias")

prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)