library(dplyr)

# some dplyr manipulation which uses filter()
mtcars %>%
  filter(
    cyl == 6
  )

# some code using filter() from stats package
stats::filter(presidents, rep(1, 3))

source("function_library.R")

x <- arithmetic_sequence(1, 3, 11)

y <- arithmetic_mean(x)

z <- arithmetic_sum(3, 4, 8)


a <- geometric_sequence(2, 4, 6)

b <- geometric_mean(x)

c <- geometric_sum(4, 2, 7)
