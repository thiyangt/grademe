
<!-- README.md is generated from README.Rmd. Please edit that file -->

# grademe

<!-- badges: start -->

<!-- badges: end -->

The goal of `grademe` is to grade marks.

## Installation

``` r
devtools::install_github("thiyangt/grademe")
library(grademe)
```

## Grading scheme - MSc/ PG

| Range of Marks | Letter Grade | GPA  |
| -------------- | ------------ | ---- |
| 85 - 100       | A+           | 4.00 |
| 70 - 84        | A            | 4.00 |
| 65 - 69        | A-           | 3.70 |
| 60 - 64        | B+           | 3.30 |
| 55 - 59        | B            | 3.00 |
| 50 - 54        | B-           | 2.70 |
| 45 - 49        | C+           | 2.30 |
| 40 - 44        | C            | 2.00 |
| 35 - 39        | C-           | 1.70 |
| 30 - 34        | D+           | 1.30 |
| 25 - 29        | D            | 1.00 |
| 00 - 24        | F            | 0.00 |

# Usage

``` r
library(grademe)
marks <- 1:100
grade <- pg_grademe(marks)
data.frame(grade=grade)
#>     grade
#> 1       F
#> 2       F
#> 3       F
#> 4       F
#> 5       F
#> 6       F
#> 7       F
#> 8       F
#> 9       F
#> 10      F
#> 11      F
#> 12      F
#> 13      F
#> 14      F
#> 15      F
#> 16      F
#> 17      F
#> 18      F
#> 19      F
#> 20      F
#> 21      F
#> 22      F
#> 23      F
#> 24      F
#> 25      D
#> 26      D
#> 27      D
#> 28      D
#> 29      D
#> 30     D+
#> 31     D+
#> 32     D+
#> 33     D+
#> 34     D+
#> 35     C-
#> 36     C-
#> 37     C-
#> 38     C-
#> 39     C-
#> 40      C
#> 41      C
#> 42      C
#> 43      C
#> 44      C
#> 45     C+
#> 46     C+
#> 47     C+
#> 48     C+
#> 49     C+
#> 50     B-
#> 51     B-
#> 52     B-
#> 53     B-
#> 54     B-
#> 55      B
#> 56      B
#> 57      B
#> 58      B
#> 59      B
#> 60     B+
#> 61     B+
#> 62     B+
#> 63     B+
#> 64     B+
#> 65     A-
#> 66     A-
#> 67     A-
#> 68     A-
#> 69     A-
#> 70      A
#> 71      A
#> 72      A
#> 73      A
#> 74      A
#> 75      A
#> 76      A
#> 77      A
#> 78      A
#> 79      A
#> 80      A
#> 81      A
#> 82      A
#> 83      A
#> 84      A
#> 85     A+
#> 86     A+
#> 87     A+
#> 88     A+
#> 89     A+
#> 90     A+
#> 91     A+
#> 92     A+
#> 93     A+
#> 94     A+
#> 95     A+
#> 96     A+
#> 97     A+
#> 98     A+
#> 99     A+
#> 100    A+
```

``` r
pg_grademe(c("1", "100", "ab", "deferred"))
#> Warning in pg_grademe(c("1", "100", "ab", "deferred")): NAs introduced by
#> coercion

#> Warning in pg_grademe(c("1", "100", "ab", "deferred")): NAs introduced by
#> coercion
#> [1] "F"        "A+"       "ab"       "deferred"
```

## Read marksheet and grade

``` r
library(here)
#> here() starts at /Users/thiyangashaminitalagala/packages/grademe
marks <- readmarks(here("exampledata",
                       "example1.xlsx"), 1, "R4C1:R7C4")
marks
#> # A tibble: 3 x 4
#>   `Index No` Name    Mid   End
#>        <dbl> <chr> <dbl> <dbl>
#> 1          1 xxx      10    40
#> 2          2 yyy      20    50
#> 3          3 zzz      30    60
marks$Final <- marks$Mid + marks$End
marks$grade <- pg_grademe(marks$Final)
marks
#> # A tibble: 3 x 6
#>   `Index No` Name    Mid   End Final grade
#>        <dbl> <chr> <dbl> <dbl> <dbl> <chr>
#> 1          1 xxx      10    40    50 B-   
#> 2          2 yyy      20    50    70 A    
#> 3          3 zzz      30    60    90 A+
```
