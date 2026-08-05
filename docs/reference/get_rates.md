# Islamic Interbank Rate

This function allows you to obtain daily weighted average of Islamic
interbank deposit rates for various tenures. (Jan 2015-present) from the
BNM API.

## Usage

``` r
get_islamic_interbank_rate(date = NULL, year = NULL, month = NULL)
```

## Source

https://api.bnm.gov.my/

## Arguments

- date:

  Character string of date with format as defined by RFC 3339, section
  5.6 (YYYY-MM-DD). If specified, return values for the specified date.

- year, month:

  Year and month as integers. If date, year and month left blank, return
  today's values.

## Examples

``` r
if (FALSE) islamic_interbank_rate()
get_islamic_interbank_rate(date = "2018-01-01")
#> # A tibble: 1 x 2
#>   date       overnight
#>   <chr>          <dbl>
#> 1 2018-01-01      2.99
get_islamic_interbank_rate(year = 2016, month = 2)
#> # A tibble: 26 x 7
#>    date       overnight `1_week` `1_month` `3_month` `6_month` `1_year`
#>    <chr>          <dbl> <lgl>    <lgl>         <dbl> <lgl>     <lgl>   
#>  1 2016-02-01      3.2  NA       NA             3.88 NA        NA      
#>  2 2016-02-03      3.19 NA       NA             3.87 NA        NA      
#>  3 2016-02-04      3.19 NA       NA            NA    NA        NA      
#>  4 2016-02-05      3.19 NA       NA            NA    NA        NA      
#>  5 2016-02-06      3.19 NA       NA            NA    NA        NA      
#>  6 2016-02-07      3.19 NA       NA            NA    NA        NA      
#>  7 2016-02-08      3.19 NA       NA            NA    NA        NA      
#>  8 2016-02-10      3.2  NA       NA            NA    NA        NA      
#>  9 2016-02-11      3.19 NA       NA            NA    NA        NA      
#> 10 2016-02-12      3.19 NA       NA             3.76 NA        NA      
#> # ... with 16 more rows
```
