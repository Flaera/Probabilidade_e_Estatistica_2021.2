library(readxl)
library(tcltk)

dados <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")
notas <- dados$NOTA_ENEN
windows()
hist(notas, main = "Histograma das notas", xlab = "Notas", ylab = "Frequencias")

prompt  <- "hit spacebar to close plots"
extra   <- "some extra comment"
capture <- tk_messageBox(message = prompt, detail = extra)