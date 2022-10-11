#Mirkka Puente 

######################## EXERCISES #################################

#1. Create a vector with numbers from 1 to 31. 
#With this vector and the command paste() create a vector 
#named “tree.name” with 31 tree names, from “Tree_1” to “Tree_31”.

v <- c(1:31)
tree.name <- paste0("Tree_", 1:31)

#2. Make and object called “d0” with the data frame “trees” in R 
#datasets. Look into the help to see what is into this data frame. 
#¿How many variables and observations there are in d0?

#data()
data(trees)
d0 <- trees
#Observations=31, variables=3

#3. Add your variable tree.name to d0

#row.names(d0) <- tree.name
d0$tree.name <- tree.name

#4. Make the code to extract the name in tree.name of the larger
# (volume), the highest and the widest tree.

#Volume
#row.names(d0)[d0$Volume == max(d0$Volume)]
d0$tree.name[d0$Volume == max(d0$Volume)]

#Highest
d0$tree.name[d0$Height == max(d0$Height)]
#Widest
d0$tree.name[d0$Girth == max(d0$Girth)]

#5. Using the function mean() calculate the mean Diameter, Height 
# and Volume.

#Diameter
MD <- mean(d0$Girth)
MV <- mean(d0$Volume)
MH <- mean(d0$Height)

max_volume <- d0$Volume > MV



