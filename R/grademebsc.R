#' R function to grade marks
#'
#' @param marks of marks
#' @return vector containing grades
#' @export
bsc_grademe <- function(marks){
  n <- length(marks)
  grade <- character(n)
  for (i in 1:n){
    if(is.na(as.numeric(marks[i])) == FALSE){
      mark = as.numeric(marks[i])
  ## grading
  if(mark >= 85){
    grade[i] = "A+"
  } else if(mark >= 70 & mark <= 84 ){
    grade[i] = "A"
  } else if(mark >= 65 & mark <= 69){
    grade[i] = "A-"
  } else if(mark >= 60 & mark <= 64){
    grade[i] = "B+"
  } else if(mark >= 55 & mark <= 59){
    grade[i] = "B"
  } else if(mark >= 50 & mark <= 54){
    grade[i] = "B-"
  } else if(mark >= 45 & mark <= 49){
    grade[i] = "C+"
  } else if(mark >= 40 & mark <= 44){
    grade[i] = "C"
  } else if (mark >= 35 & mark <= 39){
    grade[i] = "C-"
  } else if (mark >= 25 & mark <= 34){
    grade[i] = "D+"
  } else if (mark >= 20 & mark <= 24){
    grade[i] = "D"
  } else if (mark >= 0 & mark <= 19){
    grade[i] = "F"
  } else if (marks[i] == "ab"){
    grade[i] = "ab"
  } else {
    grade[i] = "inspect this case!"
  }
      } else {
        grade[i] = marks[i]
      }
    }



grade


}
#'
#'@example
#'marks <- 1:100
#'pg_grademe(marks)
#'pg_grademe(c("1", "100", "ab"))
