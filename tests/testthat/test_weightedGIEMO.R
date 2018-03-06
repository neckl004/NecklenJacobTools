
           context("Calculate weighted mean/variance/standard deviation w/ GIEMO")
           test_that("weightedGIEMO returns a 3 object list", {
           probs = runif(10)
           r = weightedGIEMO(list(x = rnorm(10), p=probs/sum(probs)))
           is.list(r) && length(r) == 3
           })
           