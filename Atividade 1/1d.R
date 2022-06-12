library(readxl)
library(tcltk)

data_excel <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")

municipio <- data_excel$NO_MUNICIPIO_RESIDENCIA
color_skin <- data_excel$TP_COR_RACA

table_mun_col <- table(municipio, color_skin)

windows()
barplot(table_mun_col, col="green", beside=TRUE, 
        main="Cor da pele por municipio em AL no ENEM de 2019")

prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)