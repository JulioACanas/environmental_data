library("here")
require("here")

here()
dat_ginko=read.csv(here("data","ginkgo_data_2021.csv"))
head(dat_ginko)
summary(dat_ginko)

?boxplot

boxplot(max_width~seeds_present, data=dat_ginko,
         xlab="Seed present",
         ylab="Width",
         main="Ginko Leaf Width by seeds present")

plot(dat_ginko$max_depth~dat_ginko$max_width,
     xlab="Max depth",
     ylab="Max width",
     main="Scatterplot Max depth vs Max widht")