
#' Calculate weighted mean, variance and standard deviation
           #'
           #' @param d data matrix
           #'
           #' @return list
           #'
           #' @export
           #'
           #' @examples
           #' probs=runif(10)
           #' weighted(list(x = runif(10), p=(probs/sum(probs))))
           #'
           weighted = function(d)
           {
              mu = sum(d$x * d$p)
              vari = sum(((d$x-mu)^2)*d$p)
              sd = sqrt(vari)
              list(mu = mu,vari = vari,sd = sd)
           }
           