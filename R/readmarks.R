#' R function to read marks table in the excel sheet
#'
#' @param path path to xlsx file
#' @param sheet Sheet to read. Either a string (the name of a sheet), or an integer (the position of the sheet
#' @param range column range string for example "R6C1:R29C2". This reads raws from R6 to R29 and columns from C1 to C2.
#' @return table of marks information
#' @importFrom readxl read_excel
#' @export
readmarks <- function(path, sheet, range){

  marksinfo <- read_excel(path, sheet, range)
  return(marksinfo)

}
#'
#'@example
#'library(here)
#'marks <- readmarks(here("exampledata",
#'                         "example1.xlsx"), 1,
#'                    range = "R4C1:R7C4")
#'marks
