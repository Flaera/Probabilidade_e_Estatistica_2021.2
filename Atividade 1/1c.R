url_linux <- ("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/Atividade 1/ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")

library(readxl)

limitesclas <- c(0, 250, 500, 750, 1000)
classes <- c("0 - 250", "250 - 500", "500 - 750", "750 - 1000")

dados_excel = read_excel(path=url_linux, sheet=1)
vector_notes = dados_excel$NOTA_ENEN
vector_sex = dados_excel$TP_SEXO

table_enem = table(cut(vector_notes, breaks=limitesclas, right=FALSE, labels=classes), vector_sex)
table_enem

barplot(table_enem, beside=TRUE, ylab="Quantidade de pessoas", xlab="Sexo")
