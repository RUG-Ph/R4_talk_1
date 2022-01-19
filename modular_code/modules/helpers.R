#' @export
check_if_positive_integers <- function(x) {
  if (!all(x == abs(floor(x))))
    stop("All values should be positive integers")
}