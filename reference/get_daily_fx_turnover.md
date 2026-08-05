# Daily Foreign Exchange Turnover

This function allows you to obtain daily foreign exchange turnover for
all currencies including interbank and customer deals from the BNM API.

## Usage

``` r
get_daily_fx_turnover()
```

## Source

https://apikijangportal.bnm.gov.my/

## Examples

``` r
get_daily_fx_turnover()
#> $date
#> [1] "2026-08-05"
#> 
#> $total_sum
#> [1] 22.17
#> 
```
