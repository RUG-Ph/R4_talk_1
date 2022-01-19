# library(dplyr)

# box::use(
#   package,
#   package[...],
#   alias = package,
#   alias = package[function, function],
#   package[alias = function]
# )

# library(magrittr)

box::use(
  dplyr[...],
  stats[sfilter = filter]
)

box::unload(d)

# some dplyr manipulation which uses filter()
mtcars %>%
  filter(
    cyl == 6
  ) %>%
  select(mpg, cyl, disp) %>%
  mutate(
    new = 3
  )

# some code using filter() from stats package
sfilter(presidents, rep(1, 3))

# base 
intersect()
setdiff()
union()

# source("function_library.R")

box::use(
  ./function_library
)

options(box.path = getwd())
rm(list = ls(box:::loaded_mods), envir = box:::loaded_mods)

box::use(
  modules/arithmetic,
  modules/geometric
)

x <- arithmetic$sequence(1, 3, 11)

y <- arithmetic$average(x)

z <- arithmetic$sum(3, 4, 8)


a <- geometric$sequence(2, 4, 6)

b <- geometric$average(x)

c <- geometric$sum(4, 2, 7)






box::use(
  modules/classtest
)

apple <- classtest$ClassTest$new()
apple$public_method()
