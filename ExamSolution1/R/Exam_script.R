



# There is a global environment that stores functions and variables. When function is executed, it creates a temporary environment of its own where it stores all variables and/or functions that are used within function.
# As soon as execution of the function ends, the function local environment is deleted.
# Therefore, variables t, x and y are stored in the local environment of the function when gen_shape() is run, but they are not stored in the global environment (global environment does not have an access to them)
# As soon as function execution is finished, the return is outputed into global environment (it can be stored in a variable in global environment) and local function enviroment is removed (t, x and y is not accessible by user)

# Problem 2
# a)

library(ggplot2)

build_city <- setRefClass(
    Class = "build_city",
    fields = list(
        name = "character",
        nr_regions = "numeric",
        hit_bmb="list",
        statistics="data.frame"
    ),
    methods = list(
        initialize = function(name, nr_regions){
          name <<- name
          nr_regions <<- 1:nr_regions

          hit_bmb<<-hit_bmb

        },
        simulate_bombings = function(nr_of_raids){

          bombings <- list()
          temp <- list()

            for (i in 1:nr_of_raids){

                # temp$raid_nr <- i

                for (j in 1:max(nr_regions)){
                    bombs <- rpois(1,0.93)
                    temp$region[j] <- j
                    temp$bombs[j] <- bombs
                }
                bombings[i] <- list(temp)
            }
            hit_bmb<<-bombings
            return(hit_bmb)
        },
        plot=function(name){
         print("Bombing on",name)
          ggplot(hit_bmb,aes(x=hit_bmd$regions,y=hit_bmb$bombs))
          }
    )
)
b<-build_city$new(name="London", nr_regions=4)
b$simulate_bombings(71)
b$plot(london)


