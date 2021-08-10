# DS Course 2 Week 1

library(tidyverse)
setwd("~/Downloads")

# Expression (Numeric and Character vector)
# Print and auto print
x <- 1
print(x)

msg <- "Hello"
print(msg)

y <- 1:20
y

# Data Types - Objects and Attributes

# Vectors and Lists

# Matrices
m <- matrix(1:6, nrow = 2, ncol = 3)
m
attributes(m)

ma <- 1:10
dim(ma) <- c(2, 5)
ma

# Factors - Categorical Data

# Missing Values

# Data Frames

# Summary

##################

# Reading Tabular Data

# Reading Large Tables (Generally need 2x the RAM of data frame)
  # In example, the data frame is 1.34gb. Will need 2x the RAM to read it in and store

# Textual Data Formats

# Connections: Interfaces to the Outside World

# Subsetting: Basics

# Subsetting - Lists

# Subsetting - Matrices
  # Drop = false to keep dimensions of matrix

# Subsetting - Partial Matching

# Subsetting - Removing Missing Values

# Vectorized Operations

####################

# Swirl Exercises
packageVersion("swirl")
library(swirl)

install_from_swirl("R Programming")
swirl()
# Don't forget that you can, temporarily, leave the lesson by typing play() and then return by typing nxt().



########### Quiz Stuff
x <- 4
x <- c(4, "a", TRUE)
class(x)

x <- c(1,3, 5)
y <- c(3, 2, 10)
cbind(x, y)

x <- list(2, "a", "b", TRUE)
x[[2]]

x <- c(3, 5, 1, 10, 12, 6)
x[x < 6 ] <- 0
x



x <- 1:4
y <- 2:3
Z <- x + y
class(Z)

quizdata <- read.csv("hw1_data.csv")

head(quizdata)
print(quizdata)

sum(is.na(quizdata$Ozone))
bad <- is.na(quizdata)
x[!bad]

good <- complete.cases(quizdata)
quizdata[good, ]
na.omit(quizdata)
mean(quizdata$Ozone, na.omit(FALSE))

quizdata[quizdata$Ozone > 14, ]


print(quizdata)
# Pick specific row or column. Or number in row and column x
quizdata[41, ]

# Subsetting examples (Columns, Rows)
head(quizdata[, 1:3])
head(quizdata[20:22, ])

# Subsetting and getting specific values/ making conditions (Similar to what I needed)
print(quizdata[quizdata$Ozone > 31 & quizdata$Temp > 90, ])
test <- (quizdata[quizdata$Ozone > 31 & quizdata$Temp > 90, ])
mean(test$Solar.R, na.rm = TRUE)
# Need to figure out how to remove NA values and get the mean (Found out how to remove missing!!!!!!!)
# Just need to add na.rm it seems
mean(test$Solar.R, na.rm = TRUE)


# Temp and Month question (Got this one! Bc no missing values)
test2 <- (quizdata[quizdata$Month == 6, ])
mean(test2$Temp)

# Find max of ozone in month may
testt <- (quizdata[quizdata$Month == 5, ])
summary(testt)


# Easier way to find mean of ozone
mean(quizdata$Ozone, na.rm = TRUE)


