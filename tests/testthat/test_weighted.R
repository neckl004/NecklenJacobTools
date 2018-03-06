
           context("Calculate weighted mean/variance/standard deviation")
           test_that("weighted returns a 3 object list", {
           x = weighted(list(x = rnorm(10), p=runif(10)))
           is.list(x) && length(x) == 3
           })
           