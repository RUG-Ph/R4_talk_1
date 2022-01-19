library(dplyr)

one <- mtcars[1:4, ]
two <- mtcars[11:14, ]

bind_rows(list(one, two))
