# DS Course 2 Week 3

library(tidyverse)
setwd("~/Downloads")


# Loop Functions - lapply

# Loop Functions - apply

# Loop Functions - mapply

# Loop Functions - tapply

# Loop Functions - split
  # The example with the airquality dataset is great!

# Debugging Tools - Diagnosing the Problem

# Debugging Tools - Basic Tools

# Debugging Tools - Using the Tools
  # Environment of browser workspace is your function environments


##################
# Swirl Exercises
packageVersion("swirl")
library(swirl)

install_from_swirl("R Programming")
swirl()
# Don't forget that you can, temporarily, leave the lesson by typing play() and then return by typing nxt().

# 1 - lapply and sapply
  # Great lesson teaching the usefulness and formula for these functions
    # Both take a list as input, apply a function to each element
    # of the list, then combine and return the result. lapply() always returns a list, whereas
    # sapply() attempts to simplify the result.

# 2 - vapply and tapply
  # vapply allows you to specify the format of the output
    # tapply allows you to split your data up into groups based on the value of 
    # some variable, then apply a function to the members of each group

# Notes from end of swirl
  # In this lesson, you learned how to use vapply() as a safer alternative to sapply(), which is
  # most helpful when writing your own functions. You also learned how to use tapply() to split
  # your data into groups based on the value of some variable, then apply a function to each
  # group. These functions will come in handy on your quest to become a better data analyst.



##################
# Quiz Stuff
library(datasets)
data(iris)
?iris

#1
head(iris)
tapply(iris$Sepal.Length, iris$Species, mean)


#2
apply(iris[, 1:4], 2, mean)

# 3 (All work to get the mean of mpg by cylinder)
library(datasets)
data(mtcars)
head(mtcars)

sapply(split(mtcars$mpg, mtcars$cyl), mean)
tapply(mtcars$mpg, mtcars$cyl, mean)
with(mtcars, tapply(mpg, cyl, mean))

#4
tapply(mtcars$hp, mtcars$cyl, mean)


#5
debug(ls)
ls




