library(readxl)
library(tcltk)

dados <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")
notas <- dados$NOTA_ENEN
windows()

hist(notas, breaks = quantile(notas), main = "1B - Histograma das notas", col = "red", 
     xlab = "Notas", ylab = "Frequencias")

prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)