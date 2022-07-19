xx = 16

n_moedas = 30
quant_caras = 5#(xx/3)
quant_caras

prob = pbinom(quant_caras, n_moedas, quant_caras/(2*30), lower.tail=FALSE)
prob
