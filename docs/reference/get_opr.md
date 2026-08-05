# Overnight Policy Rate (OPR)

This function allows you to obtain data on Overnight Policy Rate (OPR)
decided by the Monetary Policy Committee from the BNM API.

## Usage

``` r
get_opr(year = NULL)
```

## Source

https://apikijangportal.bnm.gov.my/

## Arguments

- year:

  Optional. Integer value above 2000. Series of integer values also
  supported (experimental).

## Details

This function has initial support for vectorisation, i.e. returning a
single tibble given a vector of years as arguments.

## Examples

``` r
if (FALSE) get_opr() # \dontrun{}
get_opr(2018:2019)
#> # A tibble: 12 × 4
#>     year date       change_in_opr new_opr_level
#>    <int> <chr>              <dbl>         <dbl>
#>  1  2018 2018-01-25          0.25          3.25
#>  2  2018 2018-03-07          0             3.25
#>  3  2018 2018-05-10          0             3.25
#>  4  2018 2018-07-11          0             3.25
#>  5  2018 2018-09-05          0             3.25
#>  6  2018 2018-11-08          0             3.25
#>  7  2019 2019-05-07         -0.25          3   
#>  8  2019 2019-07-09          0             3   
#>  9  2019 2019-09-12          0             3   
#> 10  2019 2019-11-05          0             3   
#> 11  2019 2019-01-24          0             3.25
#> 12  2019 2019-03-05          0             3.25
```
