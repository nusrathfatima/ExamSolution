hilbert<-function(n,m){
n<-n
m<-m
value<-0
h<-matrix(0,nrow = n,ncol=m)

  for(i in 1:n){
    for(j in 1:m){
      value<- 1/{i+j-1}
      h[i,j]<-value
    }
  }
h
}


result<- det(t(hilbert(5,5))%*%hilbert(5,5))
result
