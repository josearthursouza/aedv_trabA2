rel_fam <- rep(1:5, each = 5) #categoria de rel familiar
drink <- rep(1:5, times = 5) #categoria de quanto bebe
cont <- rep(0, times = 25) #quantidade de individuos por categoria conjunta
cont2 <- rep(0, times = 5) #quantidade de individuos por cat de rel familiar

for (i in 1:nrow(d2)){
  a <- d2[i,]
  f <- a$famrel
  d <- a$Dalc
  tipo <- (f-1)*5 + d
  
  cont[tipo] = cont[tipo] + 1
  cont2[f] = cont2[f]+1
}

cont22 <- rep(cont2, each = 5)

porcentagens <- rep(0, each = 25)
porcentagens3 <- rep(0, each = 25)
for(i in 1:25){
  porcentagens[i] = 100*cont[i]/cont22[i]
  porcentagens3[i] = 100*cont[i]/nrow(d2)
  
}
d3 <- data.frame(famrel = rel_fam, Dalf = drink, porcent = porcentagens, porcent2 = porcentagens2,porcent3 = porcentagens3)
heat1 <- ggplot(d3, aes(fill=porcent, y=Dalf, x=famrel)) + geom_tile() + scale_fill_gradient(low="white", high="#edd328")
heat1 <- heat1 + labs(x = "Qualidade das relações familiares", y = "Frequência com que bebe durante a semana", fill = "Porcentagem por categoria familiar", title = "Relação entre consumo de álcool durante a semana e qualidade das relações familiares")
print(heat1)
heat2 <- ggplot(d3, aes(fill=porcent3, y=Dalf, x=famrel)) + geom_tile() + scale_fill_gradient(low="white", high="#edd328")
heat2 <- heat2 + labs(x = "Qualidade das relações familiares", y = "Frequência com que bebe durante a semana", fill = "Porcentagem por amostra total", title = "Relação entre consumo de álcool durante a semana e qualidade das relações familiares")
print(heat2)