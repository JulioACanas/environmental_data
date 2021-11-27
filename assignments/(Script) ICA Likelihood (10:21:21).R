library("here")
require("here")

here()
dat_bird=read.csv(here("data","bird.sta.csv"))
file.exists(here("data", "hab.sta.csv"))
head(dat_bird)
summary(dat_bird)

here()
dat_habitat=read.csv(here("data","hab.sta.csv"))
file.exists(here("data", "hab.sta.csv"))
head(dat_habitat)
summary(dat_habitat)

wiwa_counts = c(2, 6)
dpois(x = wiwa_counts, lambda = 4.5)

sum(log(dpois(x = wiwa_counts, lambda = 1)))
#This is the one:
sum(log(dpois(x = wiwa_counts, lambda = 4))) 
#Mean value of observations will be the lambda value to use

wiwr_counts<-dat_bird$WIWR
summary(wiwr_counts)
hist(wiwr_counts, breaks = 0:7 - 0.5, main = "Histogram of Wilson's Wren counts", xlab="Wilson's Wren Count")

sum(log(dpois(x = wiwr_counts, lambda = 1.46)))

#Mean value of observations will be the lambda value to use
mean(wiwr_counts)
sum(log(dpois(x = wiwr_counts, lambda = 1.456023)))


sum(log(dbinom(wiwr_counts, 1046, 0.05)))
sum(log(dbinom(wiwr_counts, 1046, 0.005)))
sum(log(dbinom(wiwr_counts, 1046, 0.001)))

sum(log(dbinom(wiwr_counts, 38, 0.5)))
sum(log(dbinom(wiwr_counts, 38, 0.038)))
