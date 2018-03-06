
#' Standardizes the columns of a given matrix
           #'
           #' @param mat data matrix
           #'
           #' @return matrix (standardized)
           #'
           #' @export
           #'
           #' @examples
           #' standardCols(matrix(rnorm(20), nrow=5, ncol=4))
           #'
           standardCols = function(mat)
            {
              stopifnot(is.numeric(mat))
              stopifnot(is.finite(mat))
              stopifnot(length(mat)!=0)
              stopifnot(nrow(mat)>1)

              apply(mat, 2, function(x) {(x -mean(x)) / sd(x)})
            }
           