
           context("Simulates the apply function in base R")
           test_that("myapply returns a vector with dimensions corresponding to the MARGIN and same answers as apply", {
           margin = 2
           m = matrix(rnorm(20),nrow=4,ncol=5)
           n = myapply(m,margin,mean)
           p = apply(m,margin,mean)
           if (margin==1) {nrow(m) == length(n) && is.vector(n) && n == p}
           if (margin==2) {ncol(m) == length(n) && is.vector(n) && n == p}
           })
           