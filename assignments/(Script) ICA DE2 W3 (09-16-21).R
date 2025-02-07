install.packages("palmerpenguins")

install.packages("here")

require(palmerpenguins)
require(here)

library("palmerpenguins")

class(penguins)

penguins = data.frame(penguins)

mean(penguins$body_mass_g)
head(penguins)

summary(penguins)

hist(penguins$bill_depth_mm)
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

par(mfrow = c(1, 2))
boxplot(penguins$bill_depth_mm)
boxplot(bill_depth_mm ~ sex, data = penguins)

require(here)
png(filename = here("basic_histogram.png"), width = 800, height = 600)
hist(penguins$body_mass_g)
dev.off()

coplot(body_mass_g ~ bill_depth_mm | sex, data = penguins)

require(here)
png(filename = here("basic_plot.png"), width = 800, height = 600)
plot(penguins$bill_depth_mm, main="Bill depth in mm", xlab="mm", ylab="Frequency")
dev.off()
