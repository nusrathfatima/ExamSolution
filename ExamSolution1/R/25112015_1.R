rdices<-function(n, dices=2, eyes=6){
  res <- integer(n)
  for(i in 1:n){
    res[i] <- sum(sample(1:eyes, dices, replace = TRUE))
  }
  return(res)
}

rdices(1000)
mean(rdices(100000, dices = 1))



library(ggplot2)
df<-vapply(X=1:1000,FUN = function(X) mean(rdices(X)), numeric(1) )
ggplot(NULL, aes(x=df))+geom_histogram(aes(x=df))

