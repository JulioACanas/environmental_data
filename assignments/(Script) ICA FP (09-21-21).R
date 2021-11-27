require(here)

#dat_catrate= read.csv("/Users/juliocanas/Documents/environmental_data/data/catrate.csv")
dat_catrate= data.frame(read.csv(here("data", "catrate.csv")))
dat_catrate
head(dat_catrate)
plot(dat_catrate, main="Julio's Scatterplot from data of catrate.csv")

#dat_delomys=read.csv("/Users/juliocanas/Documents/environmental_data/data/delomys.csv")
dat_delomys=read.csv(here("data", "delomys.csv"))
dat_delomys
head(dat_delomys)
plot(dat_delomys, main="Julio's Scatterplot from data of delomys.csv")

#dat_rope=read.csv("/Users/juliocanas/Documents/environmental_data/data/rope.csv")
dat_rope=read.csv(here("data", "rope.csv"))
dat_rope
head(dat_rope)
plot(dat_rope, main="Julio's Scatterplot from data of rope.csv")
#plot(x=dat_rope$p.cut, y=dat_rope$p.strength, main="Rope P.cut vs P.strenght (Julio)", xlab="P.cut", ylab="P.strenght")

png(filename = here("images", "P.cut vs P.strenght plot FP"))
plot(x=dat_rope$p.cut, y=dat_rope$p.strength, main="Rope P.cut vs P.strenght (Julio)", xlab="P.cut", ylab="P.strenght")
dev.off()
