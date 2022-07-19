xx = 16

porc_esq = xx/100
porc_dir = 30/100
porc_cen = (100-xx-30)/100

pri_esq = (xx+20)/100
pri_dir = 0.6
pri_cen = 0.9

pri_desfavoravel = pnorm(pri_dir*porc_dir)+pnorm(pri_cen*porc_cen)-pnorm(pri_esq*porc_esq)
pri_desfavoravel
