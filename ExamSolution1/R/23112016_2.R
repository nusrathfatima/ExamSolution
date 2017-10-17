#notdone
city<- setRefClass(Class="city",
                   fields = list( name="numeric",nr_regions="numeric",
                                  bombing="data.frame"
                     ),
                   methods = list(
                   build_city(name,nr_regions){
                          name<-name
                          df<-data.frame(regions=(1:nr_regions),hits=numeric(nr_regions))
                          return(df)
                   },
                 simulate_bombings=function(nr_raids){
                   bombing<-df
                      for(i in 1:nr_raids)
                      {
                        for(i in 1:nrow(bombing))
                        {
                          bombing$hits[region]<<-bombing$hits[region]+rpois(1,lambda=0.93)
                       }
                        }
                    }
)
)

london <- build_city(name="London", nr_regions=576)
bombed_london <- simulate_bombings(71)
