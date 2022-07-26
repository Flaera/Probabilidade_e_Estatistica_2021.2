xx=16

n = 500

prob1 = prop.test(230,n,conf.level = 0.95)
prob1

prob2 = prop.test(230,n,conf.level = 0.99)
prob2

prob3 = prop.test(300,n,conf.level = 0.95)
prob3

prob4 = prop.test(300,n,conf.level = 0.99)
prob4

prob5 = prop.test(158,n,conf.level = 0.95)
prob5

prob6 = prop.test(158,n,conf.level = 0.99)
prob6
