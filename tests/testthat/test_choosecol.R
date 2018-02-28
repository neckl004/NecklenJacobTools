
            context("Choose columns")
            test_that("Chooses columns user wants", {
            d = read.csv("http://www.stat.umn.edu/geyer/3701/data/growth.csv")
            CC = choosecol(d, "HT10")
            CC
            })
            