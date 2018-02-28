
#' Make a plot wither user's x and y variables from a dataset
#' 
#' @param data user's dataset
#' @param X independent variable
#' @param Y dependent variable
#' 
#' @return plot
#' 
#' @export
           ggwrapper = function(data, X, Y)
           {
            plot <- ggplot(data=data, aes_string(x = X, y = Y)) + geom_point()
            print(plot)
            return(plot)
           }
           