url_linux <- ("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/Atividade 1/ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")
#url_win <- ("C:Probabilidade_e_Estatistica_2021.2/Atividade 1/ENEM_AL_EXCEL_AJUS_OKSNZ - Sheet 1.csv")
library(readxl)

#ENEM <- 0
#try:
  #ENEM2019 = read.table(file=url_linux, header=TRUE, sep=";", dec=",")
#except:
  #ENEM2019 = read.table(file=url_win, header=TRUE, sep=";", dec=",")
#ENEM <- read.table(file=url_linux, header=TRUE, sep=";", dec=",")

limitesclas <- c(300, 400, 500, 600, 700, 800, 900, 1000)
classes <- c("300 - 400", "400 - 500", "500 - 600", "600 - 700", "700 - 800", "800 - 900", "900 - 1000")

dados_excel = read_excel(path=url_linux, sheet=1)
vector = dados_excel$NOTA_ENEN
#cat("vector=", vector)
FreqAbso = FreqAbs(round(vector, digits=2))
FreqRel = prop.table(vector)
FreqRelAbso = cumsum(FreqAbso)
FreqRelAc = cumsum(FreqRel)

notes <- table(cut(vector, breaks=limitesclas, right=FALSE, labels=classes))
notes
#FreqAbso;FreqRel;FreqRelAbs;FreqRelAc
#tab_resul <- cbind(notes, FreqRel<-round(FreqRel, digits=2),
 #                  FreqRelAbs<-round(FreqRelAbso, digits=2),
  #                 FreqRelAc<-round(FreqRelAc, digits=2))
tab_resul <- cbind(notes, FreqRel,
                  FreqRelAbso,
                  FreqRelAc)
tab_resul
