# USD Interbank Intraday Rate

Obtain USD/MYR interbank intraday highest and lowest rate from the BNM
API. Rates are obtained from the best U.S. dollar against Malaysian
ringgit interbank highest and lowest dealt rates by commercial banks on
the specific date.

## Usage

``` r
usd_interbank_intraday_rate(date = NULL, year = NULL, month = NULL)
```

## Source

https://apikijangportal.bnm.gov.my/

## Arguments

- date:

  Character string of date with format as defined by RFC 3339, section
  5.6 (YYYY-MM-DD). If specified, return values for the specified date.

- year:

  Year and month as integers. If date, year and month left blank, return
  today's values.

- month:

  Year and month as integers. If date, year and month left blank, return
  today's values.

## Examples

``` r
if (FALSE) usd_interbank_intraday_rate()
usd_interbank_intraday_rate(date = "2018-01-03")
#> # A tibble: 1 x 3
#>   date       highest_rate lowest_rate
#>   <chr>             <dbl>       <dbl>
#> 1 2018-01-03         4.03        4.01
usd_interbank_intraday_rate(year = 2016, month = 2)
#> # A tibble: 18 x 3
#>    date       highest_rate lowest_rate
#>    <chr>             <dbl>       <dbl>
#>  1 2016-02-02         4.22        4.16
#>  2 2016-02-03         4.24        4.22
#>  3 2016-02-04         4.16        4.14
#>  4 2016-02-05         4.17        4.12
#>  5 2016-02-10         4.18        4.12
#>  6 2016-02-11         4.15        4.10
#>  7 2016-02-12         4.19        4.14
#>  8 2016-02-15         4.17        4.12
#>  9 2016-02-16         4.16        4.12
#> 10 2016-02-17         4.22        4.19
#> 11 2016-02-18         4.18        4.15
#> 12 2016-02-19         4.23        4.18
#> 13 2016-02-22         4.22        4.20
#> 14 2016-02-23         4.21        4.17
#> 15 2016-02-24         4.25        4.22
#> 16 2016-02-25         4.22        4.20
#> 17 2016-02-26         4.23        4.19
#> 18 2016-02-29         4.24        4.20
```
