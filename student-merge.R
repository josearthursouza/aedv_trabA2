library(ggplot2)
d2=read.csv("student-por.csv")

#d2$Z <- runif(649, 0, 5)

graf1 <- ggplot(d2, aes(x=absences, y=G3, colour=sex)) + geom_point()
print(graf1)

graf11 <- ggplot(d2, aes(x=age, y=G3, colour=sex)) + geom_point()
print(graf11)

graf12 <- ggplot(d2, aes(x=age, y=absences, colour=sex)) + geom_point()
print(graf12)
#ggsave("fig1.png",device="png",dpi = 300)

#graf2 <- ggplot(d2, aes( x=famrel, y=Dalc)) + geom_tile()
#print(graf2)

#graf3 <- ggplot(d2, aes( x=goout, y=Dalc)) + geom_tile()
#print(graf3)


# Grouped
graf3 <- ggplot(d2, aes(fill=sex, y=absences, x=famrel)) + 
  geom_bar(position="dodge", stat="identity")
#print(graf3)