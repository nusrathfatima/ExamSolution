counter_factory<-function(start, max){
  counter<-start
  function(){
 if(counter!=max)
  {  counter<<-counter+1
   }

    print(counter)
  }

}
cnt <- counter_factory(start = 2, max = 4)
cnt()
cnt()
cnt()
