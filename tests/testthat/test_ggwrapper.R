
            context("Create plots")
            test_that("ggwrapper creates a ggplot", {
            d = read.csv("http://www.stat.umn.edu/geyer/3701/data/growth.csv")
            ggplot2::is.ggplot(ggwrapper(d, d[,1], d[,2]))
           })
           