url <- ("/home/flaera/Área de Trabalho/Ufal AC Simões/ufal_periodo2021.2/pe/Aula 1.2/IMCvalores.csv")

IMC <- read.table(file = url, header=TRUE, sep=";", dec=",")
IMC

Amplitude <- max(IMC)-min(IMC); Amplitude

NK <- round(1+3.222*log10(30), digits=2); NK

AmpClasse <- round(Amplitude/NK, digits=0); AmpClasse

limitesclas <- c(15.68, 18.68, 21.68, 24.68, 27.68, 30.68, 33.68)

classes<-c("15.68 - 18.68", "18.68 - 21.68", "21.68 - 24.68", "24.68 - 27.68",
           "27.68 - 30.68", "30.68 - 33.68")

Freq <- table(cut(IMC$IMCplan, breaks=limitesclas, right=FALSE, labels=classes))
Freq

FreqAc <- cumsum(Freq)
FreqRel <- prop.table(Freq)
FreqRelAc <- cumsum(FreqRel)
FreqAc; FreqRel; FreqRelAc

TabResul <- cbind(Freq, FreqAc, FreqRel <- round(FreqRel*100, digits=2),
                  FreqRelAc = round(FreqRelAc*100, digits=2))
TabResul

h = hist(IMC$IMCplan, breaks=limitesclas, labels=classes, col="orange",
         xlim=c(15,35), ylim=c(0,10), main="Histograma",
         ylab="Frequencias absolutas", xlab="Faixas/classes")

des <- c(0,h$counts,0);des
lines(c(min(h$breaks), h$mids, max(h$breaks)), des, type="l")

boxplot(IMC, col="red", notch=TRUE)
boxplot(IMC, col="orange", notch=TRUE, varwidth = TRUE)

mean(IMC$IMCplan)  

median(IMC$IMCplan)

var(IMC$IMCplan)

sd(IMC$IMCplan)

quantile(IMC$IMCplan)

#---Classes desiguais---

limitesclas <- c(14, 18.4, 24.9, 29.9, 40)
difclas=0
for (i in 1:4){difclas[i]=limitesclas[i+1]-limitesclas[i]}

classes<-c(" Abaixo (14,0 |-- 18,4)", " Normal (18,4 |-- 24,9)", 
           " Acima  (24,9 |-- 29,9)", " Obeso  (29,9 |-- 40,0)")

Freq = table(cut(IMC$IMCplan, breaks=limitesclas, right=FALSE, labels = classes))
Freq

FreqRel = prop.table(Freq)

TabResul = cbind(Freq,FreqRel = round(FreqRel*100,digits = 2), 
                 difclas, 
                 densidade= round(FreqRel/difclas,digits = 4))
TabResul

hist(IMC$IMCplan, breaks = limitesclas, labels = classes, col="green",
     xlim=c(15, 40), ylim = c (0,0.10), ylab="Densidade de Frequencia", 
     xlab = "IMCs", main="Histograma - IMC ideal")

# --- QUARTIS COMO CLASSES ---

limitesclas = quantile(IMC$IMCplan)

difclas = 0

for (i in 1:4) { difclas[i] = limitesclas[i+1] - limitesclas[i]}

Freq.IMC.cut <- table( cut (IMC$IMCplan, breaks = limitesclas,
                            include.lowest=TRUE))
Freq.IMC.cut
FreqAc <- cumsum(Freq.IMC.cut)
FreqRel <- prop.table(Freq.IMC.cut)
#FreqRelAc <- cumsum(FreqRel)
densidade<-0

TabResul = cbind(Freq.IMC.cut, FreqAc, 
                 FreqRel = round(FreqRel,digits = 2),
                 densidade= round(FreqRel/difclas,digits = 4))
TabResul

h = hist(IMC$IMCplan, breaks = limitesclas, col="orange",
         main="Histograma", xlim=c(15, 35), ylim = c (0,0.14), 
         ylab="Densidade", xlab = "IMC")
