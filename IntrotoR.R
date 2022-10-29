getwd()
# Interacting with R

## I am adding 3 and 5.
3+5
x <- 3

y <- 5

number <- x + y

##Exercise
x <- 5
y <- 10
number <- x + y 

####  R SYNTAX AND DATA STRUCTURE  ####

# Create a numeric vector and store the vector as a variable called 'glengths'
glengths <- c(4.6, 3000, 50000)
glengths

# Create a character vector and store the vector as a variable called 'species'
species <- c("ecoli", "human", "corn")
species

# Forget to put quotes around corn
species <- c("ecoli", "human", corn)

# Create a character vector and store the vector as a variable called 'species'
species <- c("ecoli", "human", "corn")

# Exercise
#############

#Factors
# Create a character vector and store the vector as a variable called 'expression'
expression <- c("low", "high", "medium", "high", "low", "medium", "high")

# Turn 'expression' vector into a factor
expression <- factor(expression)

#Exercise
samplegroup <- c("CTL", "CTL", "CTL", "KO", "KO", "KO", "OE", "OE", "OE")
samplegroup <- factor(samplegroup)

#Matrix
# Create a data frame and store it as a variable called 'df'
df <- data.frame(species, glengths)

#Exercise
titles <- c("Catch-22", "Pride and Prejudice", "Nineteen Eighty Four")
pages <- c(453, 432, 328)

favorite_books <- data.frame(titles, pages)
favorite_books

list1 <- list(species, df, number)
list1

list2 <- list(species, glengths, number)
list2

#Functions
glengths <- c(glengths, 90) # adding at the end	
glengths <- c(30, glengths) # adding at the beginning

sqrt(81)

sqrt(glengths)

round(3.14159)

#Seeking help on arguments for functions
?round

args(round)

example("round")

round(3.14159, digits=2)

round(3.14159, 2)

#Exercise
?mean

mean(glengths)

test <- c(1, NA, 2, 3, NA, 4)
mean(test, na.rm = TRUE)

sort(test, decreasing = TRUE)

#Reading Data
?read.csv

metadata <- read.csv(file="data/mouse_exp_design.txt")

proj_summary <- read.table(file="data/project-summary.txt")

head(metadata)

class(glengths)
class(metadata)

summary(proj_summary)

length(samplegroup)

dim(proj_summary)

rownames(metadata)

ncol(proj_summary)

#PART 2
#Data Wrangling
age <- c(15, 22, 45, 52, 73, 81)
age[5]

age[-5]

age[c(3,5,6)]

#exercise
alphabets <- c("C", "D", "X", "L", "F")
alphabets[c(1,2,5)]
alphabets[-3]
alphabets[5:1]

age > 50

age > 50 | age < 18

age

age[age > 50 | age < 18]