library(ggplot2)

f<-function(x){
input<-x
add<- 0
sum<-0
func_sum<-c(0)

  for(i in seq_along(input)){
    add<- add+input[i]
  }


x_bar<-{1/length(input) }*{add}

 for(j in  seq_along(x)){
    func_sum<-func_sum+ abs(input[j]-x_bar)
    }


func_mean<-{1/length(input)} * func_sum

df<-data.frame(input,func_mean)

return(func_mean)
}
library(ggplot2)
xx<-vapply(X=1:200,FUN=function(X) f(rnorm(X)),numeric(1))
ggplot(NULL, aes(x=1:200,y=xx))+geom_line(aes(x=1:200,y=xx))
