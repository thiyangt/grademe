#' R function to read marks table in the excel sheet
#'
#' @param path path to xlsx file
#' @param colrange column range
#' @param rwrange raw range
#' @param sheetIndex number representing the sheet index in the workbook
#' @return table of marks information
#' @importFrom xlsx read.xlsx
#' @export
readmarks <- function(path, sheetIndex, colrange, rwrange){

  marksinfo <- read.xlsx(path, sheetIndex, colrange, rwrange)
  return(marksinfo)

}
#'
#'@example

