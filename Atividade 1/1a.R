library(readxl)
library(tcltk)

dados_excel <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx", sheet=1)
vector      <- dados_excel$NOTA_ENEN

frequencia_abs <- table(cut(vector, breaks = quantile(vector),
               labels = c("318.44 - 455.20", "455.20 - 497.22",
               "497.22 - 553.04", "553.04 - 796.14")))
frequencia_abs

frequencia_rel <- prop.table(frequencia_abs) * 100
soma_freq_abs <- cumsum(frequencia_abs)
soma_freq_rel <- cumsum(frequencia_rel)
tabela <- cbind(frequencia_abs, soma_freq_abs, frequencia_rel, soma_freq_rel)
tabela

windows()
boxplot(vector, horizontal=TRUE)

prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)