library(ggplot2)
clipped_normal<-function(limit=200, mean=5,sd=2){
  count<-0
  vector_result<- c()
  while(count<limit)
  {
    value<- rnorm(1,mean,sd)
    vector_result<-c(vector_result,value)
    if(value> 2*sd){
      count=count+1
    }
  }
  vector_result


  ggplot(data=NULL, aes(x=vector_result))+ geom_histogram(aes(vector_result))

}
clipped_normal()

set.seed(4711)
clipped <- clipped_normal(200,5,2)
sum(clipped>(2*2))
length(clipped)
