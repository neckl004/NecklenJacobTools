
            context("Calculates MLE")
            test_that("loglikelihood calculates the MLE and stores as a double", {
            bdata <- scan(url("http://www.stat.umn.edu/geyer/3701/data/q1p7b.txt"))
            binomial = function(theta, b) {dbinom(b, 20, prob = 1 / (1 + exp(- theta)), log = TRUE)}
            is.double(loglikelihood(bdata,  binomial, c(-100,100)))
           })
           