
           context("Standardize the columns of a matrix")
           test_that("standardCols standardizes columns and returns a matrix of identical size", {
           a = matrix(rnorm(15),nrow=3,ncol=5)
           b = standardCols(a)
           nrow(a) == nrow(b) && ncol(a) == ncol(b)
           })
           