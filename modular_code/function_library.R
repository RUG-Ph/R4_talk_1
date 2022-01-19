arithmetic_sequence <- function(from, by, n) {
  check_if_positive_integers(c(from, by, n))
  from + by * (0:(n - 1))
}

arithmetic_sum <- function(from, by, n) {
  check_if_positive_integers(c(from, by, n))
  (n/2) * (2*from + (n-1) * by)
}

arithmetic_mean <- function(x) {
  check_if_positive_integers(x)
  mean(x)
}

geometric_sequence <- function(from, by, n) {
  check_if_positive_integers(c(from, by, n))
  from * by ^ (0:(n-1))
}

geometric_sum <- function(from, by, n) {
  check_if_positive_integers(c(from, by, n))
  from * ((1 - by^n) / (1 - by))
}

geometric_mean <- function(x) {
  check_if_positive_integers(x)
  exp(mean(log(x)))
}

check_if_positive_integers <- function(x) {
  if (!all(x == abs(floor(x))))
    stop("All values should be positive integers")
}
