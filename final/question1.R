xx = 16
n = 52
prob_figuras = 3/52*4

prob = pnorm(n-1)-pnorm(prob_figuras)
prob
