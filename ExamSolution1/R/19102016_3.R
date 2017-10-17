sekrit_msg<-function(msg){
  tell_count<-0
 result<- list(change = function(chnsec){
                          msg<<- chnsec          },
               tell=function(){
                 tell_count<<-tell_count+1

                 cat("[",tell_count,"]",msg)

               },
               double_agent=function(change_function, fake_msg) {
                 chg_env <- environment(change_function)
                 chg_env$msg <- fake_msg
               }
               )

}
ll <- sekrit_msg("Nothing here")
change <- ll$change
tell <- ll$tell
tell()
tell()
change("Meet me under the bridge")
tell()

double_agent(change, "No, changed my mind again, let's make it in the garage")
tell()

change("No, changed my mind, let's make it in the bar")
tell()

tell()
