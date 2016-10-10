#' @title Range Value
#' @param x numeric vector
#' @return range as max - min
range_value <- function(x, na.rm = FALSE) {
  if (na.rm){
    x = x[!is.na(x)]
  }
  max(x) - min(x)
}
