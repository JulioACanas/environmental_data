dpois(x = 7, lambda = 10.4)

#Q1
dpois(x = 8, lambda = 10.4)

#Q2
dbinom(x=4, size=6, prob=2/3)

#Q3
dbinom(x=0, size=6, prob=2/3)

ppois(q = 7, lambda = 10.4)
1 - ppois(q = 7, lambda = 10.4)

#Q4: p(0, 1, 2, 3, 4)
pbinom(q=4, size=6, prob=2/3)

#Q5: p(4, 5, 6) = 1-p(0, 1, 2, 3)
1-pbinom(q=3, size=6, prob=2/3)