> x<-1
> x
[1] 1
> x<-1:20
> x
[1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
> x[10]
[1] 10
> x<-c(0,5,0,6) #numérico
> x
[1] 0 5 0 6
> y<-c(T,F) # lógico T = Verdadeiro e F = Falso
> y
[1]  TRUE FALSE
> z<-c("a","b","c") # Caracteres
> z
[1] "a" "b" "c"
> x<-c(0:6)
> class(x)
[1] "integer"
> as.numeric(x)
[1] 0 1 2 3 4 5 6
> as.logical(x)
[1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
> as.character(x)
[1] "0" "1" "2" "3" "4" "5" "6"
> x1<-as.integer(x)
> x1
[1] 0 1 2 3 4 5 6
> class(x1)
[1] "integer"
> l<-list(1, "a", T)
> l
[[1]]
[1] 1

[[2]]
[1] "a"

[[3]]
[1] TRUE

> m<-matrix(nrow = 2, ncol = 3)
> m
[,1] [,2] [,3]
[1,]   NA   NA   NA
[2,]   NA   NA   NA
> dim(m)
[1] 2 3
> n<-matrix(1:6, nrow = 2, ncol = 3)
> n
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> n[1,1]
[1] 1
> n[,3]
[1] 5 6
> n[1]
[1] 1
> n[1,]
[1] 1 3 5
> n[2,3]
[1] 6
> m<-c(1:6)
> m
[1] 1 2 3 4 5 6
> dim(m)<-c(2,3)
> m
[,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
> x<-rep(10,3) # repete o número 10 três vezes
> x
[1] 10 10 10
> y<-seq(from = 100, to = 300, by = 100) # sequência de 100 à 300, contando de 100 em 100
> y
[1] 100 200 300
> cbind(x,y)
x   y
[1,] 10 100
[2,] 10 200
[3,] 10 300
> rbind(x,y)
[,1] [,2] [,3]
x   10   10   10
y  100  200  300
> a<-1:5
> a
[1] 1 2 3 4 5
> b<-11:15
> b
[1] 11 12 13 14 15
> data.frame(a,b)
a  b
1 1 11
2 2 12
3 3 13
4 4 14
5 5 15
> data.frame(a=1:5, b=11:15)
a  b
1 1 11
2 2 12
3 3 13
4 4 14
5 5 15
> x<-data.frame(seculo=c(15:17), populacao=c(1000, 5000, 10000), canibais=c(F,T,F))
> x
seculo populacao canibais
1     15      1000    FALSE
2     16      5000     TRUE
3     17     10000    FALSE
> x$seculo
[1] 15 16 17
> x$populacao
[1]  1000  5000 10000
> x$canibais
[1] FALSE  TRUE FALSE
> View(x)
> write.csv(x, file="c:/R Studio/Aula 1/x.csv")