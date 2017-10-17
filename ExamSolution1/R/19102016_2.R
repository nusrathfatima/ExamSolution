randomNumgen<- setRefClass(Class = "randomNumgen",
                           fields =  list(),
                           methods = list(

                         ))

print.randomNumgen<-function(x,...){
  print(paste0("I am a random generator of type:",class(x)[1]))
}
norm<- setRefClass(Class="norm",
                   contains= "randomNumgen",
                   fields = list(mu="numeric", sigma="numeric"),
                   methods = list(
                     draw_rnd= function(){
                      rnorm(1,mean=mu,sd=sigma )
                     }
                   )
                   )
beta<- setRefClass(Class="beta",
                   contains= "randomNumgen",
                   fields = list(shape1="numeric", shape2="numeric"),
                   methods = list(
                     draw_rnd=function(){
                      rbeta(1,shape1 = shape1, shape2 = shape2)
                     }
                   ))



a<- norm$new(mu=2,sigma=3)
a$draw_rnd()
print(a)

b<- beta$new(shape1=2,shape2=3)
b$draw_rnd()
print(b)


draw_rnd<-function(x,...){
  x$draw_rnd()
}
draw_rnd(b)
