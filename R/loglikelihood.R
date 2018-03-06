
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
#' b <- scan(url("http://www.stat.umn.edu/geyer/3701/data/q1p7b.txt"))
#' binom = function(theta, b) {dbinom(b, 20, prob = 1 / (1 + exp(- theta)), log = TRUE)}
#' loglikelihood(b, binom, c(-100,100))
            loglikelihood = function(dataset, distribution, interval)
            {
              logger = function(theta)
              {
                sum(distribution(theta,dataset))
              }
              opt = optimize(logger, maximum=TRUE, interval)
              opt$maximum
            }
            