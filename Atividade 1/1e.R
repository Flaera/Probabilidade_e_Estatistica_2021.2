url_linux <- ("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/pratica com r_studio/Atividade 1/ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")

library(readxl)
library(ggplot2)

data_excel <- read_excel(path=url_linux, sheet=1)

opt_raca <- data_excel$TP_COR_RACA
old_year <- data_excel$NU_IDADE

classes = c("0 - 20", "20 - 40", "40 - 60", "60 - 80")
#table_enem = table(opt_raca, cut(old_year, right=FALSE, breaks=c(0,20,40,60,80), labels=classes))
table_enem = table(opt_raca, old_year)
dt_frame = data.frame(table_enem)
dt_frame

graph_disp <- ggplot(dt_frame, aes(x=opt_raca, y=Freq)) +
  geom_point(aes(col="red"))+
  labs(x="Raça optada", y="Frequência de pessoas", 
       title="Diagrama de dispersão da identificação dos candidatos por raça")+
  scale_color_manual(c("Candidatos"), values=c("red"))

graph_disp

#Interpretação: os candidatos no ENEM de 2019 tendem a se declarar mais como pardos ou brancos.