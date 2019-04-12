
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bnmr

<!-- badges: start --> [![Travis build
status](https://travis-ci.org/philip-khor/bnmr.svg?branch=master)](https://travis-ci.org/philip-khor/bnmr)
<!-- badges: end -->

The goal of bnmr is to …

## Installation

You can install the released version of bnmr from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("bnmr")
```

For now, to install `bnmr`, do the following:

``` r
# install.packages("devtools")
devtools::install_github("philip-khor/bnmr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bnmr)
current_base_rates <- base_rate()
head(current_base_rates)
#> # A tibble: 6 x 6
#>   bank_code bank_name base_rate base_lending_ra… indicative_eff_…
#>   <chr>     <chr>         <dbl>            <dbl>            <dbl>
#> 1 BKKBMYKL  Bangkok …      4.72             7.37             5.92
#> 2 CIBBMYKL  CIMB Ban…      4.25             7.1              5   
#> 3 CITIMYKL  Citibank…      3.9              7.05             4.7 
#> 4 HLBBMYKL  Hong Leo…      4.13             7.14             5   
#> 5 HBMBMYKL  HSBC Ban…      3.89             6.99             5   
#> 6 ICBKMYKL  Industri…      4.02             6.95             4.75
#> # … with 1 more variable: base_financing_rate <dbl>
```
