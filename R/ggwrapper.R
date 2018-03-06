
#' Make a plot with user's x and y variables from a dataset
#'
#' @param data user's dataset
#' @param X independent variable
#' @param Y dependent variable
#'
#' @return plot
#'
#' @export
#'
#' @examples
#' d = read.csv("http://www.stat.umn.edu/geyer/3701/data/growth.csv")
#' ggwrapper(d, d[,1], d[,2])
           ggwrapper = function(data, X, Y)
           {
            plot = ggplot2::ggplot(data=data, ggplot2::aes_string(x = X, y = Y)) + ggplot2::geom_point()
            return(plot)
           }
           