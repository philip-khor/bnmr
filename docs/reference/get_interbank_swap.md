# Interbank Swap

This function allows you to obtain daily interbank swap volume by tenure
from the BNM API.

## Usage

``` r
get_interbank_swap()
```

## Source

https://apikijangportal.bnm.gov.my/

## Examples

``` r
get_interbank_swap()
#> $date
#> [1] "2026-08-05"
#> 
#> $overnight
#> [1] 4074.29
#> 
#> $`1_week`
#> [1] 200.14
#> 
#> $`2_week`
#> [1] 1.55
#> 
#> $`1_month`
#> [1] 494.11
#> 
#> $`2_month`
#> [1] 167.49
#> 
#> $`3_month`
#> [1] 409.19
#> 
#> $`6_month`
#> [1] 550.74
#> 
#> $`9_month`
#> [1] 275
#> 
#> $`12_month`
#> [1] 0
#> 
#> $more_1_year
#> [1] 98.68
#> 
```
