#Mirkka Puente 
#October 11th, 2022

######################## EXERCISES #################################

#1. Create a vector with numbers from 1 to 31. 
#With this vector and the command paste() create a vector 
#named “tree.name” with 31 tree names, from “Tree_1” to “Tree_31”.

vec <- c(1:31)
tree.name <- paste0("Tree_", vec)
class(tree.name)
#paste0 takes two prameters and concate them

#2. Make and object called “d0” with the data frame “trees” in R 
#datasets. Look into the help to see what is into this data frame. 
#¿How many variables and observations there are in d0?

#See the data in R
#data()
#Seee the dataframe 'trees'
#data(trees)
d0 <- trees
#Observations=31, variables=3
class(d0)

#3. Add your variable tree.name to d0

#Change the row names to Tree_#
#row.names(d0) <- tree.name

#Add another variable to the data frame d0
#   data_frame$name_of_new_variable <- vector_with_values
d0$tree_names <- tree.name

#4. Make the code to extract the name in tree.name of the larger
# (volume), the highest and the widest tree.

#Volume

#If we had the row name as tree_names
#row.names(d0)[d0$Volume == max(d0$Volume)]

#Create a logical vector, the location in the column will be followed 
#by the TRUE value only
location_highest_volume <- d0$Volume == max(d0$Volume)
highest_volume_tree_name <- d0$tree_names[location_highest_volume]
#result = 'Tree_31'

#Highest
location_tallest <- d0$Height == max(d0$Height)
tallest_tree_name <- d0$tree_names[location_tallest]
#result = 'Tree_31'

#Widest
location_widest <- d0$Girth == max(d0$Girth)
widest_tree_name <- d0$tree_names[location_widest]
#result = 'Tree_31'

#5. Using the function mean() calculate the mean Diameter, Height 
# and Volume.

<<<<<<< HEAD
#Mean diameter
MD <- mean(d0$Girth)
#result = 13.248
=======
#Diameter
MD <- mean(d0$Girth)
#Volume
MV <- mean(d0$Volume)
#Height
MH <- mean(d0$Height)

#6. Make a new factor variable into d0 with two levels: “Large” 
#for trees with volume larger or equal the mean and “Small” with 
#trees with volume smaller than the mean. ¿How many “Large” trees are there?

shor_big_than <- d0$Volume > MV

d0$Large_Small[shor_big_than] <- "Large"
d0$Large_Small[!shor_big_than] <- "Small"

#7. Make a new factor variable into d0 with “Tall” for trees taller or equal
#the mean and “Short” with trees with Height shorter than the mean.

tall_short_than <- d0$Height > MH

d0$Tall_Short[tall_short_than] <- "Tall"
d0$Tall_Short[!tall_short_than] <- "Short"

#8. Make a subset with the trees that are both short and large 
#and calculate the mean diameter of these Short-Large trees in meters. 
#How many “Short_Large” trees are there?

short_large <- (d0$Volume) >= MV & d0$Height < MH

subset <- d0[short_large, ]

m <- mean(subset$Girth)

>>>>>>> 6bde57f5e551756b48b5c12149eb8d2ca58765ad

#Mean height
MH <- mean(d0$Height)
# result = 76

#Mean volume
MV <- mean(d0$Volume)
#result = 30.171

#6. Make a new factor variable into d0 with two levels: “Large” 
#for trees with volume larger or equal the mean and “Small” with 
#trees with volume smaller than the mean. ¿How many “Large” trees 
#are there?

#Volume larger or equal than mean - "Large"
true_false_v1 <- d0$Volume >= MV
#[] is an specific location in a column or row
d0$Larger_or_Smaller[true_false_v1] <- "Large"

#Volume smaller or equal than mean - "Small"
d0$Larger_or_Smaller[!true_false_v1] <- "Small"

#How many large trees?
sum(d0$Larger_or_Smaller == "Large")
#Result = 12
sum(d0$Larger_or_Smaller == "Small")
#Result = 19

#7. Make a new factor variable into d0 with “Tall” for trees taller
#or equal the mean and “Short” with trees with Height shorter than 
#the mean.

#Height higher or equal than mean - "Tall"
true_false_v2 <- d0$Height >= MH
#[] is an specific location in a column or row
d0$Taller_or_Shorter[true_false_v2] <- "Tall"

#Volume smaller or equal than mean - "Short"
d0$Taller_or_Shorter[!true_false_v2] <- "Short"

#How many tall trees?
sum(d0$Taller_or_Shorter == "Tall")
#Result = 17

#How many tall trees?
sum(d0$Taller_or_Shorter == "Short")
#Result = 14

#8. Make a subset with the trees that are both short and large 
#and calculate the mean diameter of these Short-Large trees in
#meters. How many “Short_Large” trees are there?

true_false_v3 <- true_false_v1 & !true_false_v2

#How many Short-large trees?
sum(true_false_v3)
#Result = 2

mean(d0$Girth[true_false_v3])
#Result = 15.25
