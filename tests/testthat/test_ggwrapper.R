
            context("Create plots")
            test_that("ggwrapper creates plots of two variables", {
            z = read.csv("http://www.stat.umn.edu/geyer/3701/data/growth.csv")
            x = z$HT5
            y = z$HT10
            ggwrapper(z, x, y)
           })
           