library(dplyr)
library(tidyr)
data(Titanic)

my_tidy_titanic_data<-function(){

    tit <- as.data.frame(as.matrix(ftable(Titanic)))
    tit <- dplyr::mutate(tit, tmp = rownames(tit))
    tit <- tidyr::gather(tit, survived, counts, No:Yes)
    tit_tidy <- tidyr::separate(tit, "tmp", c("class", "sex", "age"), "_")
    tit_tidy
  }

aggregate_away_sex<-function(x){
  grp_data <- dplyr::group_by(x, class, age, survived)
  agg_data <- dplyr::summarise(grp_data, counts=sum(counts))
  as.data.frame(agg_data)
}
tita<- my_tidy_titanic_data()
head(aggregate_away_sex(tita))
