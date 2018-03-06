
#' Calculate weighted mean, var, sd with GIEMO
           #'
           #' @param d data vector
           #'
           #' @return list
           #'
           #' @export
           #'
           #' @examples
           #' probs=runif(10)
           #' weightedGIEMO(list(x = runif(10), p=(probs/sum(probs))))
           #'
           weightedGIEMO = function(d)
           {
           stopifnot(length(d$x)!=0)
           stopifnot(is.numeric(d$x))
           stopifnot(is.finite(d$x))
           stopifnot(length(d$p)!=0)
           stopifnot(is.numeric(d$p))
           stopifnot(is.finite(d$p))
           stopifnot(all.equal(sum(d$p),1))
           mu = sum(d$x * d$p)
           vari = sum(((d$x-mu)^2)*d$p)
           sd = sqrt(vari)
           list(mu = mu,vari = vari,sd = sd)
           }
           