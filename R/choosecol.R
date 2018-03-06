
#' Filter for a specific column in a matrix
#'
#' @param data user's dataset
#' @param colname name of column to filter for
#'
#' @return list with filtered column
#'
#' @export
#'
#' @examples
#' x = read.csv("http://www.stat.umn.edu/geyer/3701/data/growth.csv")
#' choosecol(x, "HT10")
            choosecol = function(data, colname)
            {
              col = dplyr::select(data, dplyr::contains(colname))
              return(col)
            }
           