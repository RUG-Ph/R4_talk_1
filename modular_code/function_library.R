#' @export
arithmetic_sequence <- function(from, by, n) {
  check_if_positive_integers(c(from, by, n))
  from + by * (0:(n - 1))
}

#' @export
arithmetic_sum <- function(from, by, n) {
  check_if_positive_integers(c(from, by, n))
  (n/2) * (2*from + (n-1) * by)
}

#' @export
arithmetic_mean <- function(x) {
  check_if_positive_integers(x)
  mean(x)
}

#' @export
geometric_sequence <- function(from, by, n) {
  check_if_positive_integers(c(from, by, n))
  from * by ^ (0:(n-1))
}

#' @export
geometric_sum <- function(from, by, n) {
  check_if_positive_integers(c(from, by, n))
  from * ((1 - by^n) / (1 - by))
}

#' @export
geometric_mean <- function(x) {
  check_if_positive_integers(x)
  exp(mean(log(x)))
}

check_if_positive_integers <- function(x) {
  if (!all(x == abs(floor(x))))
    stop("All values should be positive integers")
}
