
            context("Calculates MLE")
            test_that("Calculates the maximum likelihood estimate", {
            bdata <- scan(url("http://www.stat.umn.edu/geyer/3701/data/q1p7b.txt"))
            binomial = function(theta, b) {dbinom(b, 20, prob = 1 / (1 + exp(- theta)), log = TRUE)}
            binomint = c(-100,100)
            LL = loglikelihood(bdata,  binomial, binomint)
            LL
           })
           