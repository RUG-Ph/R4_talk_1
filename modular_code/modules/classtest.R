#' @export
ClassTest <- R6::R6Class(
  'ClassTest',
  public = list(
    #' @export
    initialize = function() {
      print("initialize class")
    },
    #' @export
    public_method = function() {
      print("public method")
      private$private_method()
    }
  ),
  private = list(
    private_method = function() {
      print("private method")
    }
  )
)