
#' Finds the MLE based on given data, distribution and interval
#' 
#' @param dataset dataset to use
#' @param distribution distribution function
#' @param interval interval to search
#' 
#' @return MLE
#' 
#' @export
#' 
#' @examples
#' #' loglikelihood(x, binomial, c(-100,100))
            loglikelihood = function(dataset, distribution, interval)
            {
              logger = function(theta)
              {
                sum(distribution(theta,dataset))
              }
              opt = optimize(logger, maximum=TRUE, interval)
              opt$maximum
            }
            