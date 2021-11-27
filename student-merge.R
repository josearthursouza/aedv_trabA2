library(ggplot2)

setwd("C:/Users/josea/FGV/aedv/aedv_trabA2")
d2=read.csv("student-por.csv")

#d2$Z <- runif(649, 0, 5)

<<<<<<< HEAD
graf1 <- ggplot(d2, aes(x=absences, y=G3, colour=Pstatus)) + geom_point(position = "jitter")
=======
graf1 <- ggplot(d2, aes(x=absences, y=G3, colour=Pstatus)) + geom_point()
>>>>>>> 78da9d6018855ad4a86e825420c14ba4e3e76284
print(graf1)

graf2 <- ggplot(d2, aes(x=age, y=G3, colour=sex)) + geom_point()
#print(graf2)
<<<<<<< HEAD

graf3 <- ggplot(d2, aes(x=age, y=absences, colour=sex)) + geom_point()
#print(graf3)
#ggsave("fig1.png",device="png",dpi = 300)

graf4 <- ggplot(d2, aes( x=famrel, y=Dalc)) + geom_count() #geom_jitter() #ou geom_count()
print(graf4)

graf5 <- ggplot(d2, aes( x=famrel, y=Dalc)) +geom_jitter() #ou geom_count()
print(graf5)

graf6 <- ggplot(d2, aes(group=famrel,y=G3))+geom_boxplot()
print(graf6)

# Grouped
graf7 <- ggplot(d2, aes(fill=sex, y=G3, x=famrel)) + geom_bar(position="dodge", stat="identity")
print(graf7)

graf8 <- ggplot(d2, aes(x=G3, colour=sex))+geom_histogram(stat='count')
print(graf8)

boxplot( d2$G3 ~ d2$famrel)
=======

graf3 <- ggplot(d2, aes(x=age, y=absences, colour=sex)) + geom_point()
#print(graf3)
#ggsave("fig1.png",device="png",dpi = 300)

graf4 <- ggplot(d2, aes( x=famrel, y=Dalc)) + geom_count() #geom_jitter() #ou geom_count()
print(graf4)

# Grouped
graf5 <- ggplot(d2, aes(fill=sex, y=absences, x=famrel)) + 
  geom_bar(position="dodge", stat="identity")
print(graf5)

graf6 <- ggplot(d2, aes(x=G3))+geom_bar()
print(graf6)
>>>>>>> 78da9d6018855ad4a86e825420c14ba4e3e76284
