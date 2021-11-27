install.packages("here")

#Loading packages
library("here")
require("here")

here()
dat_habitat=read.csv(here("data","hab.sta.csv"))
file.exists(here("data", "hab.sta.csv"))
head(dat_habitat)
summary(dat_habitat)

png(filename = here("images", "Elev hist DE&DF W3"))
hist(x=dat_habitat$elev, main="Elevation Histogram", xlab="Elevation")
dev.off()

png(filename = here("images", "Aspect hist DE&DF W3"))
hist(x=dat_habitat$aspect, main="Aspect Histogram", xlab="Aspect")
dev.off()

png(filename = here("images", "Slope hist DE&DF W3"))
hist(x=dat_habitat$slope, main="Slope Histogram", xlab="Slope")
dev.off()

png(filename = here("images", "ParPlot Hist Terrain Variables"))
par(mfrow = c(3, 1))
hist(x=dat_habitat$elev, main="Elevation Histogram", xlab="Elevation")
hist(x=dat_habitat$aspect, main="Aspect Histogram", xlab="Aspect")
hist(x=dat_habitat$slope, main="Slope Histogram", xlab="Slope")
dev.off()

png(filename = here("images", "Elev plot DE&DF W3"))
plot(x=dat_habitat$elev, y=dat_habitat$ba.tot, main="Elevation vs Total Basal Area", xlab="Elevation", ylab="Total Basal Area", col="blue")
dev.off()

png(filename = here("images", "Slope plot DE&DF W3"))
plot(x=dat_habitat$slope, y=dat_habitat$ba.tot, main="Slope vs Total Basal Area", xlab="Slope", ylab="Total Basal Area", col="blue")
dev.off()

png(filename = here("images", "Aspect plot DE&DF W3"))
plot(x=dat_habitat$aspect, y=dat_habitat$ba.tot, main="Aspect vs Total Basal Area", xlab="Aspect", ylab="Total Basal Area", col="blue")
dev.off()

line_point_slope = function(x, x1, y1, slope)
{
  get_y_intercept = 
    function(x1, y1, slope) 
      return(-(x1 * slope) + y1)
  
  linear = 
    function(x, yint, slope) 
      return(yint + x * slope)
  
  return(linear(x, get_y_intercept(x1, y1, slope), slope))
}

data_center_elev=mean(dat_habitat$elev)
data_center_elev
data_center_ba.tot=mean(dat_habitat$ba.tot)
data_center_ba.tot

png(filename = here("images", "Aspect plot 2 DE&DF W3"))
plot(x=dat_habitat$elev, y=dat_habitat$ba.tot, main="Elevation vs Total Basal Area", xlab="Elevation", ylab="Total Basal Area", col="blue")
points(x = data_center_elev, y = data_center_ba.tot, col = "red")
curve(
  line_point_slope(
    x, 
    data_center_elev, 
    data_center_ba.tot,
    0.0995), col="red",
  add = TRUE)
dev.off()

data_center_slope=mean(dat_habitat$slope)
data_center_slope

png(filename = here("images", "Slope plot 2 DE&DF W3"))
plot(x=dat_habitat$slope, y=dat_habitat$ba.tot, main="Slope vs Total Basal Area", xlab="Slope", ylab="Total Basal Area", col="blue")
points(x = data_center_slope, y = data_center_ba.tot, col = "red")
curve(
  line_point_slope(
    x, 
    data_center_slope, 
    data_center_ba.tot,
    0.5), col="red",
  add = TRUE)
dev.off()

data_center_aspect=mean(dat_habitat$aspect)
data_center_aspect

png(filename = here("images", "Aspect plot 2 DE&DF W3"))
plot(x=dat_habitat$aspect, y=dat_habitat$ba.tot, main="Aspect vs Total Basal Area", xlab="Aspect", ylab="Total Basal Area", col="blue")
points(x = data_center_aspect, y = data_center_ba.tot, col = "red")
curve(
  line_point_slope(
    x, 
    data_center_aspect, 
    data_center_ba.tot,
    0.15), col="red",
  add = TRUE)
dev.off()

png(filename = here("images", "ParPlot Hist&Plot Terrain Variables"))
par(mfrow = c(3, 2))
hist(x=dat_habitat$elev, main="Elevation Histogram", xlab="Elevation")
plot(x=dat_habitat$elev, y=dat_habitat$ba.tot, main="Elevation vs Total Basal Area", xlab="Elevation", ylab="Total Basal Area", col="blue")
hist(x=dat_habitat$aspect, main="Aspect Histogram", xlab="Aspect")
plot(x=dat_habitat$aspect, y=dat_habitat$ba.tot, main="Aspect vs Total Basal Area", xlab="Aspect", ylab="Total Basal Area", col="blue")
hist(x=dat_habitat$slope, main="Slope Histogram", xlab="Slope")
plot(x=dat_habitat$slope, y=dat_habitat$ba.tot, main="Slope vs Total Basal Area", xlab="Slope", ylab="Total Basal Area", col="blue")
dev.off()

