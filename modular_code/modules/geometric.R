box::use(
  dplyr[...]
)

box::use(
  modules/helpers
)

#' @export
sequence <- function(from, by, n) {
  helpers$check_if_positive_integers(c(from, by, n))
  from * by ^ (0:(n-1))
}

#' @export
sum <- function(from, by, n) {
  helpers$check_if_positive_integers(c(from, by, n))
  from * ((1 - by^n) / (1 - by))
}

#' @export
average <- function(x) {
  helpers$check_if_positive_integers(x)
  exp(mean(log(x)))
}

#' @export
sample <- function() {
  mtcars %>%
    filter(cyl == 6)
}
