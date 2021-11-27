#dat_birds=read.csv("/Users/juliocanas/Documents/environmental_data/data/bird.sta.csv")
dat_birds = read.csv(here("data","bird.sta.csv"))
dat_birds
head(dat_birds)
summary(dat_birds)

dat_habitat=read.csv(here("data","hab.sub.csv"))
dat_habitat
head(dat_habitat)
summary(dat_habitat)

pairs(iris)

pairs(iris[, c("Petal.Width", "Sepal.Width", "Sepal.Length")])

#require(psych)
pairs(dat_habitat[,c("ba.con","ba.hard","ba.snag")])

hist(x=dat_birds$CBCH)

hist(x=dat_birds$WIWA, xlab="Wilson's Warbler Abundance",breaks=0:7-0.5, main = "Wilson's Warbler Frequency Histogram")
