require(palmerpenguins)
dat_ade = droplevels(subset(penguins, species == "Adelie"))
head(dat_ade)
summary(dat_ade)
hist(dat_ade$body_mass_g, main = "Adelie Penguins: Body Mass", xlab = "body mass (g)")

#Q1
boxplot(dat_ade$body_mass_g~sex, data=dat_ade, main="Body Mass of Adelie Penguins", ylab="Body mass (g)")

#Q2
?t.test
#No
t.test(dat_ade$body_mass_g, mu=0)

#Yes, we can reject the H0 (for the p-value and for the body mass differs from 0)
sex_female=subset(dat_ade, sex=="female")
t.test(sex_female$body_mass_g, mu=0)

#Q4
sex_male=subset(dat_ade, sex=="male")
t.test(sex_male$body_mass_g, mu=4000)
#Yes, no upper value because is a 1-tailed (greater than 4000)
t.test(sex_male$body_mass_g, mu=4000, alternative="greater")

#Q6
t.test(sex_female$body_mass_g, sex_male$body_mass_g)

#Q8
t.test(sex_male$body_mass_g, sex_female$body_mass_g, alternative="greater") #Us
t.test(sex_female$body_mass_g, sex_male$body_mass_g, alternative="l") #Mike

t.test(sex_male$body_mass_g, sex_female$body_mass_g, alternative="less") #Us
t.test(sex_female$body_mass_g, sex_male$body_mass_g, alternative="g") #Mike
