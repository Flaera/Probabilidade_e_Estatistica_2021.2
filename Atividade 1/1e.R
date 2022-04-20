library(readxl)
library(ggplot2)
library(tcltk)

data_excel <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")

opt_raca <- data_excel$TP_COR_RACA
old_year <- data_excel$NU_IDADE

classes = c("0 - 20", "20 - 40", "40 - 60", "60 - 80")
table_enem = table(opt_raca, old_year)
dt_frame = data.frame(table_enem)
dt_frame
windows()
graph_disp <- ggplot(dt_frame, aes(x=opt_raca, y=Freq)) +
  geom_point(aes(col="red"))+
  labs(x="Raca optada", y="Frequencia de pessoas", 
       title="Diagrama de dispersao da identificacao dos candidatos por raca")+
  scale_color_manual(c("Candidatos"), values=c("red"))

graph_disp

prompt  <- "Aperte a barra de espaco para fechar o grafico"
capture <- tk_messageBox(message = prompt)