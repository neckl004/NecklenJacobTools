
#' Filter for a specific column in a matrix
#' 
#' @param data user's dataset
#' @param colname name of column to filter for
#' 
#' @return matrix with filtered column
#' 
#' @export  
#'      
#' @examples
#' #' choosecol(x, "gender")
            choosecol = function(data, colname) 
            {
              datafilter = data %>% dplyr::select(contains(colname))
              return(datafilter)
            }
           