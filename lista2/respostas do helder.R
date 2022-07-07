## QuestÃ£o primeira

alfa <- 0.10
variancia <- 14
amostra <- 120
media <- 9
desvioPadrao <- sqrt(variancia)
zc <- qnorm(0.05, 0,1, lower.tail = FALSE)
erro = zc * desvioPadrao/sqrt(amostra)
cat("[", media - erro, ",", media + erro, "]")

##QuestÃ£o segunda: 
amostra <- c(80, 75, 71, 82, 77, 64, 78, 67, 81, 79)
shapiro.test(amostra) #para saber se a amostra segue uma distribuiÃ§Ã£o normal
t.test(amostra, conf=0.98)

##QuestÃ£o terceira
populacao <- 3500
favoraveis <- 0.65*populacao
prop.test(x = favoraveis, n = populacao, conf.level=0.95)

##QuestÃ£o quarta
qnorm(0.05, 0, 1, lower.tail = FALSE) #o nosso intervalo vai de -1.64 a 1.64
#calculando Z:
media <- 43
dp <- sqrt(36)
n <- 20
hipotese <- 45
z <- (media - hipotese) / (dp/sqrt(n))
z #-1.49: estÃ¡ dentro do intervalo [-1.64, 1.64]. NÃ£o rejeitamos a hipÃ³tese nula

#QuestÃ£o quinta - queremos saber se Ã© maior
interv <- qnorm(0.05, 0, 1, lower.tail = FALSE) #(1.64, INF) (como Ã© monocaudal, nÃ£o dividimos)
mediaAmostra <- 550
n <- 15
dp <- 25
hipotese <- 510 #porque eu quero saber se Ã© menorigual ou maior
z <- (mediaAmostra - hipotese) / (dp/sqrt(n))
z #6.196 -> bem maior do que 1.64

#QuestÃ£o sexta 
notas <- c(125, 124, 125, 125, 125, 125, 124, 123, 122, 123, 123, 123, 123, 124, 124)
shapiro.test(notas) #rigor nÃ©
t.test(notas, conf.level = 0.95) # nesse caso a gente pode se guiar pelo p-valor, que Ã© minÃºsculo
# rejeitamos h0 e concluÃ­mos que as notas atuais sÃ£o diferentes das antigas.

#QuestÃ£o sÃ©tima
bfs <- c(32,27,38,35,33,29,25,19,31,24)
dfs <- c(26,21,20,37,30,18,19,25,32,34)
var.test(bfs, dfs) #homogÃªneas
t.test(bfs, dfs, paired = TRUE, var.equal = TRUE, conf.level = 0.95)

#QuestÃ£o oitava
antes <- c(54,61,50,74,79,58,55,49,63)
depois <- c(57,66,53,73,82,58,56,53,63)
var.test(antes, depois) #homogÃªneas
t.test(antes, depois, paired=TRUE, var.equal = TRUE, conf.level=0.95)

#QuestÃ£o nona
anterior <- c(89,84,96,82,74,92,85,91)
atual <- c(83,83,92,84,76,91,80,91)
var.test(anterior, atual) #homogÃªneas
t.test(anterior, atual, paired=TRUE, var.equal = TRUE, conf.level=0.90, alternative="less")

#QuestÃ£o dÃ©cima
tecAtual <- c(300,280,344,385,372,360,288,321,376,290,301,283)
tecNova <- c(274,220,308,336,198,300,315,258,318,310,332,263)
var.test(tecAtual, tecNova) #homogÃªneas
t.test(tecAtual, tecNova, alternative = "greater", paired = FALSE, conf.level=0.98) #rejeitar H0
