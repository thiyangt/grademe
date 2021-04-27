#' R function to grade marks
#'
#' @param vector of marks
#' @return vector containing grades
#' @export
pg_grademe <- function(marks){
  n <- length(marks)
  grade <- numeric(n)
  for (i in 1:n){
  if(marks[i] >= 85){
    grade[i] = "A+"
  } else if(marks[i] >= 70 & marks[i] <= 84 ){
    grade[i] = "A"
  } else if(marks[i] >= 65 & marks[i] <= 69){
    grade[i] = "A-"
  } else if(marks[i] >= 60 & marks[i] <= 64){
    grade[i] = "B+"
  } else if(marks[i] >= 55 & marks[i] <= 59){
    grade[i] = "B"
  } else if(marks[i] >= 50 & marks[i] <= 54){
    grade[i] = "B-"
  } else if(marks[i] >= 45 & marks[i] <= 49){
    grade[i] = "C+"
  } else if(marks[i] >= 40 & marks[i] <= 44){
    grade[i] = "C"
  } else if (marks[i] >= 35 & marks[i] <= 39){
    grade[i] = "C-"
  } else if (marks[i] >= 30 & marks[i] <= 34){
    grade[i] = "D+"
  } else if (marks[i] >= 25 & marks[i] <= 29){
    grade[i] = "D"
  } else if (marks[i] >= 0 & marks[i] <= 24){
    grade[i] = "F"
  } else if (marks[i] == "ab"){
    grade[i] = "ab"
  } else {
    grade[i] = "inspect this case!"
  }
    }



grade


}
#'
#'@example
#'marks <- 1:100
#'pg_grademe(marks)
