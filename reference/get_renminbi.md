# Renminbi

Extract indicative CNY/MYR forward prices for trade settlement and RMB
deposit acceptance rates from the BNM API as a tidy tibble.

## Usage

``` r
get_renminbi(type = "dar")
```

## Source

https://apikijangportal.bnm.gov.my/

## Arguments

- type:

  String. Either "dar" or "fx_forward".

## Examples

``` r
if (FALSE) get_renminbi(type = "dar") # \dontrun{}
get_renminbi(type = "fx_forward")
#> # A tibble: 8 × 4
#>   date       period    buying selling
#>   <chr>      <chr>      <dbl>   <dbl>
#> 1 2020-12-29 spot       0.620   0.620
#> 2 2020-12-29 2_weeks   -9.6    -9    
#> 3 2020-12-29 1_month  -10.1    -8.5  
#> 4 2020-12-29 2_months -18.9   -16.6  
#> 5 2020-12-29 3_months -22.2   -19.8  
#> 6 2020-12-29 4_months -29.5   -24.3  
#> 7 2020-12-29 5_months -37.5   -29.3  
#> 8 2020-12-29 6_months -41.3   -38.1  
```
