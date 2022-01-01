
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bnmr

<img src="man/figures/logo.png" width=120 height=139 align="right" /></img>

<!-- badges: start -->

[![Codecov test
coverage](https://codecov.io/gh/philip-khor/bnmr/branch/master/graph/badge.svg)](https://codecov.io/gh/philip-khor/bnmr?branch=master)
[![R build
status](https://github.com/philip-khor/bnmr/workflows/R-CMD-check/badge.svg)](https://github.com/philip-khor/bnmr/actions)
<!-- badges: end -->

The goal of **bnmr** is to provide a set of convenient wrapper functions
for the Central Bank of Malaysia’s API.

</br></br></br></br>

## Installation

To install **bnmr**, run the following code (requires remotes):

``` r
# install.packages("remotes")
remotes::install_github("philip-khor/bnmr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(bnmr)
get_base_rate()
#> # A tibble: 35 x 6
#>    bank_code   bank_name           base_rate base_lending_ra~ indicative_eff_le~
#>    <chr>       <chr>                   <dbl>            <dbl>              <dbl>
#>  1 "AFFINBANK" Affin Bank               2.7              5.56               3.3 
#>  2 "ALLIANCEB" Alliance Bank            2.57             5.42               3.11
#>  3 "AMBANK"    AmBank                   2.6              5.45               3.25
#>  4 "BANGKOK"   Bangkok Bank Berhad      3.22             5.87               4.42
#>  5 "BANKCHINA" Bank of China (Mal~      2.55             5.35               3.55
#>  6 "CIMB BANK" CIMB Bank Berhad         2.75             5.6                3.5 
#>  7 "CITIBANK"  Citibank Berhad          2.4              5.55               3.2 
#>  8 ""          Hong Leong Bank Ma~      2.63             5.64               3.5 
#>  9 ""          HSBC Bank Malaysia~      2.39             5.49               3.5 
#> 10 ""          Industrial and Com~      2.52             5.45               3.47
#> # ... with 25 more rows, and 1 more variable: base_financing_rate <dbl>
```

## License

This project is licensed under the terms of the MIT license.
