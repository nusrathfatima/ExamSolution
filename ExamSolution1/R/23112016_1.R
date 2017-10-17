library(ggplot2)

#' Title
#'
#' @return
#' @export
#'
#' @examples
gen_shape<-function(){

t<-seq(1,2*pi,0.1)
x<- 16 *sin(t)^3
y<-13*cos(t)-5*cos(2*t)-2*cos(3*t)-cos(4*t)
df<- data.frame(t,x,y)
ggplot(df, aes(x=x,y=y))+geom_polygon(aes(x=x,y=y))

return(df)
}
#gen_shape()
