
            context("Choose columns")
            test_that("choosecol selects column(s) from a matrix and stores as a list", {
            d = read.csv("http://www.stat.umn.edu/geyer/3701/data/growth.csv")
            is.list(choosecol(d, "HT10.5"))
            })
            