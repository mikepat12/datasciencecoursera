# DS Course 2 Week 2

library(tidyverse)
setwd("~/Downloads")
quizdata <- read.csv("hw1_data.csv")

# Control Structures Intro

# Control Structures - If/else
# As many else ifs, but last one needs to be an else

# Control Structures - For loops
x <- c("a", "b", "c", "d")

for(i in 1:4) {
  print (x[i])
}

for(letter in x) {
  print (letter)
}
# Nested for loops
x <- matrix(1:6, 2, 3)
for (i in seq_len(nrow(x))) {
  for (j in seq_len(ncol(x))) {
    print(x[i, j])
  }
}

# Control Structures - While loops
# Stops working at 10 for the code below
count <- 0
while (count < 10) {
  print(count)
  count <- count + 1
}

z<-5
while(z>=3&&z<=10){ print(z)
  coin <- rbinom(1, 1, 0.5)
  if(coin == 1) { ## random walk z<-z+1
  }else{ z<-z-1
  }
}


# Control Structures - Repeat, Next, Break

# Your First R Function
add2 <- function(x, y) {
  x + y
}

above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x, n = 10) {
  use <- x > n
  x[use]
}

# removeNA removes missing values
columnmean <- function(x, removeNA = TRUE) {
  nc <- ncol(x)
  means <- numeric(nc)
  for(i in 1:nc) {
    means[i] <- mean(x[, i], na.rm = removeNA)
  }
  means
}


# Functions part 1
# Argument matching

# Functions part 2
# Argument value can be null
f <- function(a, b = 1, c = 2, d = NULL) {
  
}
# Lazy evaluation (Don't specify b but function does not use b so argument is not evaluated)
f <- function(a, b) {
  a ^ 2
}
# Error comes after a is printed
f <- function(a, b) {
  print(a)
  print(b)
}
# ... Argument (Arguments after the ... have to be named explicitly)

# Scoping Rules - Symbol Binding
search()
# Lexical scoping

# Scoping Rules - R Scoping Rules 
make.power <- function(n) {
  pow <- function(x) {
    x ^ n
  }
  pow
}
# In console, can use cube <- make.power(3) to make cube function and etc. for other powers
ls(environment(cube))
get("n", environment(cube))
# Lexical vs dynamic scoping

# Scoping Rules - Optimization Example (OPTIONAL)

# Coding Standards

# Dates and Times
x <- Sys.time()
p <- as.POSIXlt(x)
names(unclass(p))
p$sec

##################
# Swirl Exercises
packageVersion("swirl")
library(swirl)

install_from_swirl("R Programming")
swirl()
# Don't forget that you can, temporarily, leave the lesson by typing play() and then return by typing nxt().

# 1 - Logical Vectors

# 2 - Functions

# 3 - Dates and Time


##################
# Quiz

cube <- function(x, n) {
  x^3
}


f <- function(x) {
  g <- function(y) {
    y + z
  }
  z <- 4
  x + g(x)
}

x <- 5
y <- if(x < 3) {
  NA
} else {
  10
}

h <- function(x, y = NULL, d = 3L) {
  z <- cbind(x, d)
  if(!is.null(y))
    z <- z + y
  else
    z <- z + f
  g <- x + y / z
  if(d == 3L)
    return(g)
  g <- g + 10
  g
}


