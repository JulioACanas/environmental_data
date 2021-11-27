dbinom(x=3,size=4,prob=0.75)

dbinom(x=0,size=4,prob=0.75)+
  dbinom(x=1,size=4,prob=0.75)+
  dbinom(x=2,size=4,prob=0.75)+
  dbinom(x=3,size=4,prob=0.75)
pbinom(q=3,size=4,prob=0.75)

dbinom(x=3,size=5,prob=0.75)+
  dbinom(x=4,size=5,prob=0.75)+
  dbinom(x=5,size=5,prob=0.75)
1-pbinom(q=2,size=5,prob=0.75)

pnorm(1.2, mean=2, sd=2)

1-pnorm(1.2, mean=2, sd=2)

pnorm(3.2, mean=2, sd=2)-pnorm(1.2, mean=2, sd=2)