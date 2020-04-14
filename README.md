
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bnmr

<!-- badges: start -->

[![Travis build
status](https://travis-ci.org/philip-khor/bnmr.svg?branch=master)](https://travis-ci.org/philip-khor/bnmr)
[![Codecov test
coverage](https://codecov.io/gh/philip-khor/bnmr/branch/master/graph/badge.svg)](https://codecov.io/gh/philip-khor/bnmr?branch=master)
[![R build
status](https://github.com/philip-khor/bnmr/workflows/R-CMD-check/badge.svg)](https://github.com/philip-khor/bnmr/actions)
<!-- badges: end -->

The goal of bnmr is to provide a set of convenient wrapper functions for
the Central Bank of Malaysia’s API.

## Installation

To install `bnmr`, run the following code (requires remotes):

``` r
# install.packages("remotes")
remotes::install_github("philip-khor/bnmr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bnmr)
base_rate()
#> # A tibble: 35 x 6
#>    bank_code bank_name base_rate base_lending_ra~ indicative_eff_~
#>    <chr>     <chr>         <dbl>            <dbl>            <dbl>
#>  1 BKKBMYKL  Bangkok ~      3.97             6.62             5.17
#>  2 CIBBMYKL  CIMB Ban~      3.5              6.35             4.25
#>  3 CITIMYKL  Citibank~      3.15             6.3              3.95
#>  4 HLBBMYKL  Hong Leo~      3.38             6.39             4.25
#>  5 HBMBMYKL  HSBC Ban~      3.14             6.24             4.25
#>  6 ICBKMYKL  Industri~      3.27             6.2              4.22
#>  7 MBBEMYKL  Malayan ~      2.5              6.15             3.95
#>  8 OCBCMYKL  OCBC Ban~      3.33             6.26             4.2 
#>  9 PBBEMYKL  Public B~      3.02             6.22             3.85
#> 10 RHBBMYKL  RHB Bank~      3.25             6.2              4.25
#> # ... with 25 more rows, and 1 more variable: base_financing_rate <dbl>
```
