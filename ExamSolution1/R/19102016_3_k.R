function(msg) {
  tellcnt <- 0
  change <- function(newmsg) {
    msg <<- newmsg
  }
  tell <- function() {
    tellcnt <<- tellcnt + 1
    cat(paste("[",tellcnt,"]",msg))
  }
  list(change=change,tell=tell)
}

double_agent<-function(change_function, fake_msg) {
  chg_env <- environment(change_function)
  chg_env$msg <- fake_msg}

double_agent(change, "No, changed my mind again, let's make it in the garage")
tell()
ll <- sekrit_msg("Nothing here")
change <- ll$change
tell <- ll$tell
tell()
