
#' Simulates the R function apply
           #'
           #' @param X data vector
           #' @param MARGIN number (1=row-wise, 2=col-wise)
           #' @param FUN function to apply to data vector
           #'
           #' @return vector
           #'
           #' @export
           #'
           #' @examples
           #' myapply(matrix(rnorm(20),nrow=4,ncol=5),2,mean)
           #'
           myapply = function(X, MARGIN, FUN, ...)
            {
              if (length(dim(X))!=2)
                {stop("not a 2d array")}
              if (!(MARGIN %in% c(1,2)))
                {stop("margin not 1 or 2")}

              f = match.fun(FUN)
              R = dim(X)[1] # nrows
              C = dim(X)[2] # ncols

              if (MARGIN == 1)
              {
                result = list()   # need to store in a list because we do not
                for (i in 1:R)    # know the length or storage type beforehand
                {
                  result[[i]] = f(X[i,],...)
                }
              }
              else if (MARGIN == 2)
              {
                result = list()
                for (j in 1:C)
                {
                  result[[j]] = f(X[,j],...)
                }
              }
              return(simplify2array(result))
            }
           