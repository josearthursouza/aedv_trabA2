library(ggplot2)

d2=read.csv("student-por.csv")

paletasex <- c('#fcc5c0','#7fcdbb')


graf1 <- ggplot(d2, aes( x=famrel, y=Dalc)) +geom_jitter() #ou geom_count()
graf1 <- graf1 + theme_classic()+ labs(title='Distribuição dos alunos segundo o quanto bebem em dia de semana
                               e como classificam a própria família', x='Classificação da família (de ruim a boa)',y='O quanto bebe em dias de semana
(de pouco a muito)')
print(graf1)

graf2 <- ggplot(d2, aes(group=famrel,y=G3))+geom_boxplot()
graf2 <- graf2 + theme_classic()+ labs(title='Distribuições das notas em cada tipo de família', x='Classificação das famílias',y='Nota final do aluno')
print(graf2)

# Grouped
graf3 <- ggplot(d2, aes(fill=sex, y=G3, x=famrel)) + geom_bar(position="dodge", stat="identity")
graf3 <- graf3 + theme_classic()+ scale_fill_manual(values=paletasex)
graf3 <- graf3 + labs(title='Histograma das notas dos alunos segundo a classificação 
                      de suas famílias e seu sexo', x='Classificação das famílias',y='Nota final do aluno', fill='Sexo')
print(graf3)

graf4 <- ggplot(d2, aes(x=G3,fill=sex))+geom_histogram(position='dodge',stat='count')
graf4 <- graf4 + theme_classic()+ scale_fill_manual(values=paletasex) +  facet_wrap(vars(sex))
graf4 <- graf4 + labs(title='Histograma das notas dos alunos segundo a classificação
                      de suas famílias e seu sexo', x='Classificação das famílias',y='Nota final do aluno', fill='Sexo')
print(graf4)

graf5 <- ggplot(d2, aes(x=G3))+geom_histogram(stat='count')
graf5 <- graf5 + theme_classic()+scale_color_manual(values=c('#feb24c'))
graf5 <- graf5 + labs(title='                       Histograma das notas dos alunos', x='Notas dos alunos',y='Frequência')
print(graf5)

#boxplot( d2$G3 ~ d2$famrel)