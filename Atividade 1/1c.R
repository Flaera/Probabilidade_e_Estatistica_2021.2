library(readxl)
library(tcltk)

classes <- c("318.44 - 455.20", "455.20 - 497.22",
               "497.22 - 553.04", "553.04 - 796.14")

dados_excel <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx", sheet=1)
vector_notes <- dados_excel$NOTA_ENEN
vector_sex <- dados_excel$TP_SEXO

table_enem <- table(cut(vector_notes, breaks=quantile(vector_notes), 
                        right=FALSE, labels=classes), vector_sex)

windows()
barplot(table_enem, beside=TRUE, ylab="Quantidade de pessoas", xlab="Sexo")

prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)