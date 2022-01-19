library(dplyr)

one <- mtcars[1:4, ]
two <- mtcars[11:14, ]

rbind_all(list(one, two))
