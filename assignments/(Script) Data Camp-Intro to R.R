a<-c("Julio")
a

b1<-45.6
b1

b2<-"45.6"
b2

c1<-0:3
c1

b1+c1

v1<--2:2
v1

v2<-3*v1
v2

sum(v2)

vec_4<-1:12

mat_1<-matrix(data=vec_4, nrow=3, byrow=TRUE)
mat_1

mat_2<-matrix(data=vec_4, nrow=3, byrow=FALSE)
mat_2

my_list_1<-list(5:2, "five point two", c(0:5))
names(my_list_1)<-c("two", "one", "three")
my_list_1

my_list_1[3]
my_list_1[2]

my_vec = rep(1:3, 5)
my_vec

my_bool_vec<-my_vec==3
my_bool_vec

data.frame(my_vec, my_bool_vec)

my_vec[my_bool_vec]