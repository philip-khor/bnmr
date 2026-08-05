# KL USD Reference Rate

Obtain a reference rate that is computed based on weighted average
volume of the interbank USD/MYR FX spot rate transacted by the domestic
financial institutions and published daily at 3:30 p.m from the BNM API.

## Usage

``` r
kl_usd_reference_rate(date = NULL, year = NULL, month = NULL)
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
if (FALSE) kl_usd_reference_rate()
kl_usd_reference_rate(date = "2018-01-03")
#> # A tibble: 1 x 2
#>   date        rate
#>   <chr>      <dbl>
#> 1 2018-01-03  4.02
kl_usd_reference_rate(year = 2016, month = 2)
#> # A tibble: 0 x 0
```
