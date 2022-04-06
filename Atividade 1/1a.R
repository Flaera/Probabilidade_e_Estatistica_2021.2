url_linux <- ("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/Atividade 1/ENEM_AL_EXCEL_AJUS_OKSNZ - Sheet 1.csv")
#url_win <- ("C:Probabilidade_e_Estatistica_2021.2/Atividade 1/ENEM_AL_EXCEL_AJUS_OKSNZ - Sheet 1.csv")

ENEM <- 0
ENEM <- str(ENEM)
#try:
  #ENEM2019 = read.table(file=url_linux, header=TRUE, sep=";", dec=",")
#except:
  #ENEM2019 = read.table(file=url_win, header=TRUE, sep=";", dec=",")
ENEM <- read.csv(file=url_linux, header=TRUE, sep=";", dec=",")

limitesclas <- c(300, 400, 500, 600, 700, 800, 900, 1000)
classes <- c("300-400", "500-600", "700-800", "900-1000")
notes <- table(cut(ENEM$NOTA_ENEM, breaks=limitesclas, right=FALSE, labels=classes))


