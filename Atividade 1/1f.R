library(readxl)
library(tcltk)

dados <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")
notas <- dados$NOTA_ENEN
notas2 <- dados$NOTA_ENEN

frequencia_abs <- table(cut(notas, breaks = 10,
               labels = c("318 - 366", "366, 414", "414 - 462", "462 - 510", "510 - 557",
                "557 - 605",
                          "605 - 653", "653 - 701", "701 - 748", "748 - 797")))

frequencia_rel <- prop.table(frequencia_abs) * 100
soma_freq_abs <- cumsum(frequencia_abs)
soma_freq_rel <- cumsum(frequencia_rel)
tabela <- cbind(frequencia_abs, soma_freq_abs, frequencia_rel, soma_freq_rel)
tabela

windows()
hist(notas, breaks = 10, main = "1F - Histograma das notas", 
          col = "blue", xlab = "Notas", ylab = "Frequencias")
prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)
windows()
boxplot(notas2, horizontal=TRUE)
prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)