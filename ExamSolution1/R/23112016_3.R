nuclear_plant_factory<- function(){
  heat<-0
  in_meltdown<-FALSE
  n<-1
 function(nr_watts){

        reactor<-rpois(n,lambda = heat)
   if (reactor>11){
        in_meltdown<<-TRUE
        print("Warning: Reactor is in MELTDOWN!")
        }
   else if (heat<10 && in_meltdown==FALSE)
      {
        heat<<-heat+nr_watts
        print("Extracting more power!")
      }
   else  {
        print("Warning: Reactor overheated, cannot extract more power!")
        heat<<-heat-2
       }
 }

}

save_plant<-function(power_plant){
  now<- environment(power_plant)
  now$heat<-0
  now$in_meltdown<-FALSE
  print("Yay, Scorpion has saved the reactor!")
  }
set.seed(4712)
power_plant <- nuclear_plant_factory()
power_plant(5)
set.seed(4712)
power_plant <- nuclear_plant_factory()
power_plant(5)
power_plant(5)
power_plant(5)
power_plant(5)
save_plant(power_plant)
power_plant(5)
