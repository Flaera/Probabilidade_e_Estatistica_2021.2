library(readxl)
library(tcltk)

dados <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")
notas <- dados$NOTA_ENEN
windows()
x <- nclass.Sturges(notas)
x
z <- quantile(notas)
z
y <- c(318.44, 455.20, 497.22, 553.04, 796.14)
y
hist(notas, breaks = y, main = "1B - Histograma das notas", col = "red", xlab = "Notas", ylab = "Frequencias")

prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)