library("here")
require("here")

here()
dat_cat=read.csv(here("data","catrate.csv"))
head(dat_cat)
summary(dat_cat)

png(filename = here("images", "Catastrophe Rate"))
hist(dat_cat$cat.rate, xlab="Catastrophe Rate", main="Histogram of Catastrophe Rate")
dev.off()

shapiro.test(dat_cat$cat.rate)

?shapiro.test

?t.test
t.test(dat_cat$cat.rate, mu=2/7)

t.test(dat_cat$cat.rate, mu=2/7, alternative="greater")
t.test(dat_cat$cat.rate, mu=2/7, alternative="less")

wilcox.test(dat_cat$cat.rate, mu=2/7)

require(palmerpenguins)
penguin_dat = droplevels(subset(penguins, species != "Gentoo"))
summary(penguin_dat)

boxplot(
  flipper_length_mm ~ species, 
  data = penguin_dat,
  ylab = "Flipper Length (mm)")

shapiro.test(penguin_dat$flipper_length_mm)

dat_adelie = subset(penguin_dat, species == "Adelie")
shapiro.test(dat_adelie$flipper_length_mm)

dat_chinstrap = subset(penguin_dat, species == "Chinstrap")
shapiro.test(dat_chinstrap$flipper_length_mm)

png(filename = here("images", "ParPlot Hist FL of Chinstrap&Adeline"))
par(mfrow = c(2, 1))
hist(dat_chinstrap$flipper_length_mm, xlab="Flipper length (mm)", main="Histogram of Chinstrap Flipper Lenght")
hist(dat_adelie$flipper_length_mm, xlab="Flipper length (mm)", main="Histogram of Adelie Flipper Lenght")
dev.off()

png(filename = here("images", "ParPlot Hist FL of Chinstrap&Adeline2"))
par(mfrow = c(1, 2))
hist(dat_chinstrap$flipper_length_mm, xlab="Flipper length (mm)", main="Histogram of Chinstrap Flipper Lenght")
hist(dat_adelie$flipper_length_mm, xlab="Flipper length (mm)", main="Histogram of Adelie Flipper Lenght")
dev.off()

t.test(dat_chinstrap$flipper_length_mm, dat_adelie$flipper_length_mm)
t.test(dat_adelie$flipper_length_mm, dat_chinstrap$flipper_length_mm)
