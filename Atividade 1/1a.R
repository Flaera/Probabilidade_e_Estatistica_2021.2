url_linux <- ("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/Atividade 1/ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")
library(readxl)

limitesclas <- c(300, 400, 500, 600, 700, 800, 900, 1000)
classes <- c("300 - 400", "400 - 500", "500 - 600", "600 - 700", "700 - 800", "800 - 900", "900 - 1000")

dados_excel = read_excel(path=url_linux, sheet=1)
vector = dados_excel$NOTA_ENEN

notes <- table(cut(vector, breaks=limitesclas, right=FALSE, labels=classes))
#notes <- table(vector)
notes

FreqRel = prop.table(notes)
FreqAbsoAc = cumsum(notes)
FreqRelAc = cumsum(FreqRel)

boxplot(notes, horizontal=TRUE)

#FreqAbso;FreqRel;FreqRelAbso;FreqRelAc

tab_resul <- cbind(notes, FreqRel, FreqAbsoAc, FreqRelAc)
tab_resul
