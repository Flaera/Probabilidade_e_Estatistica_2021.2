url_linux <- ("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/Atividade 1/ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")

library(readxl)

data_excel <- read_excel(path=url_linux, sheet=1)

municipio <- data_excel$NO_MUNICIPIO_RESIDENCIA
color_skin <- data_excel$TP_COR_RACA
#municipio; color_skin

table_mun_col = table(municipio, color_skin)
table_mun_col

barplot(table_mun_col, col="green", beside=TRUE)
