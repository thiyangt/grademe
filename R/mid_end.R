#' R function to grade marks
#'
#' @param mid marks of mid and assignments
#' @param end marks of end assignment
#' @param var a character vector of variables to join by
#' @return table combining marks of mid and end
#' @importFrom dplyr full_join
#' @export
mid_end <- function(mid, end, var){
  x <- eval(substitute(var), end)
  mid.end <- dplyr::full_join(mid, end, by=x)
  mid.end

}
#'
#'@example
#'library(tidyverse)
#'mid <- tibble(ID=c("AS301", "AS302", "AS303"), midmarks=c(10, 20, 30))
#'end <- tibble(ID=c("AS301", "AS302", "AS305"), endmarks=c(10, 20, 100))
#'mid_end(mid, end, "ID")

