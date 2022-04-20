library(readxl)
library(tcltk)
library(dplyr)



dados <- read_excel("ENEM_AL_EXCEL_AJUS_OKSNZ.xlsx")
municipio <- subset(dados, NO_MUNICIPIO_PROVA == "Rio Largo")
notas <- data.frame(municipio$NU_NOTA_REDACAO, municipio$NU_NOTA_CN, municipio$NU_NOTA_CH,
                    municipio$NU_NOTA_LC, municipio$NU_NOTA_MT, municipio$NOTA_ENEN)
notas

summarise(group_by())