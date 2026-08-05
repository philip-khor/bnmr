# Interbank forex rates

Interbank forex rates

## Usage

``` r
get_usd_interbank_intraday_rate(date = NULL, year = NULL, month = NULL)

get_kl_usd_reference_rate(date = NULL, year = NULL, month = NULL)
```

## Source

https://apikijangportal.bnm.gov.my/

## Arguments

- date:

  Character string of date with format as defined by RFC 3339, section
  5.6 (YYYY-MM-DD). If specified, return values for the specified date.

- year, month:

  Year and month as integers. If date, year and month left blank, return
  today's values.

## Details

USD Interbank Intraday Rate: Obtain USD/MYR interbank intraday highest
and lowest rate from the BNM API. Rates are obtained from the best U.S.
dollar against Malaysian ringgit interbank highest and lowest dealt
rates by commercial banks on the specific date. KL USD Reference Rate:
Obtain a reference rate that is computed based on weighted average
volume of the interbank USD/MYR FX spot rate transacted by the domestic
financial institutions and published daily at 3:30 p.m from the BNM API.

## Functions

- `get_usd_interbank_intraday_rate()`: USD Interbank Intraday Rate

- `get_kl_usd_reference_rate()`: KL USD Reference Rate

## Examples

``` r
if (FALSE) get_usd_interbank_intraday_rate() # \dontrun{}
get_usd_interbank_intraday_rate(date = "2018-01-03")
#> $date
#> [1] "2018-01-03"
#> 
#> $highest_rate
#> [1] 4.028
#> 
#> $lowest_rate
#> [1] 4.014
#> 
get_usd_interbank_intraday_rate(year = 2016, month = 2)
#> [[1]]
#> [[1]]$date
#> [1] "2016-02-02"
#> 
#> [[1]]$highest_rate
#> [1] 4.215
#> 
#> [[1]]$lowest_rate
#> [1] 4.16
#> 
#> 
#> [[2]]
#> [[2]]$date
#> [1] "2016-02-03"
#> 
#> [[2]]$highest_rate
#> [1] 4.245
#> 
#> [[2]]$lowest_rate
#> [1] 4.222
#> 
#> 
#> [[3]]
#> [[3]]$date
#> [1] "2016-02-04"
#> 
#> [[3]]$highest_rate
#> [1] 4.165
#> 
#> [[3]]$lowest_rate
#> [1] 4.143
#> 
#> 
#> [[4]]
#> [[4]]$date
#> [1] "2016-02-05"
#> 
#> [[4]]$highest_rate
#> [1] 4.168
#> 
#> [[4]]$lowest_rate
#> [1] 4.117
#> 
#> 
#> [[5]]
#> [[5]]$date
#> [1] "2016-02-10"
#> 
#> [[5]]$highest_rate
#> [1] 4.18
#> 
#> [[5]]$lowest_rate
#> [1] 4.12
#> 
#> 
#> [[6]]
#> [[6]]$date
#> [1] "2016-02-11"
#> 
#> [[6]]$highest_rate
#> [1] 4.15
#> 
#> [[6]]$lowest_rate
#> [1] 4.1005
#> 
#> 
#> [[7]]
#> [[7]]$date
#> [1] "2016-02-12"
#> 
#> [[7]]$highest_rate
#> [1] 4.19
#> 
#> [[7]]$lowest_rate
#> [1] 4.14
#> 
#> 
#> [[8]]
#> [[8]]$date
#> [1] "2016-02-15"
#> 
#> [[8]]$highest_rate
#> [1] 4.167
#> 
#> [[8]]$lowest_rate
#> [1] 4.1155
#> 
#> 
#> [[9]]
#> [[9]]$date
#> [1] "2016-02-16"
#> 
#> [[9]]$highest_rate
#> [1] 4.156
#> 
#> [[9]]$lowest_rate
#> [1] 4.115
#> 
#> 
#> [[10]]
#> [[10]]$date
#> [1] "2016-02-17"
#> 
#> [[10]]$highest_rate
#> [1] 4.223
#> 
#> [[10]]$lowest_rate
#> [1] 4.19
#> 
#> 
#> [[11]]
#> [[11]]$date
#> [1] "2016-02-18"
#> 
#> [[11]]$highest_rate
#> [1] 4.181
#> 
#> [[11]]$lowest_rate
#> [1] 4.15
#> 
#> 
#> [[12]]
#> [[12]]$date
#> [1] "2016-02-19"
#> 
#> [[12]]$highest_rate
#> [1] 4.233
#> 
#> [[12]]$lowest_rate
#> [1] 4.185
#> 
#> 
#> [[13]]
#> [[13]]$date
#> [1] "2016-02-22"
#> 
#> [[13]]$highest_rate
#> [1] 4.218
#> 
#> [[13]]$lowest_rate
#> [1] 4.195
#> 
#> 
#> [[14]]
#> [[14]]$date
#> [1] "2016-02-23"
#> 
#> [[14]]$highest_rate
#> [1] 4.213
#> 
#> [[14]]$lowest_rate
#> [1] 4.173
#> 
#> 
#> [[15]]
#> [[15]]$date
#> [1] "2016-02-24"
#> 
#> [[15]]$highest_rate
#> [1] 4.247
#> 
#> [[15]]$lowest_rate
#> [1] 4.215
#> 
#> 
#> [[16]]
#> [[16]]$date
#> [1] "2016-02-25"
#> 
#> [[16]]$highest_rate
#> [1] 4.224
#> 
#> [[16]]$lowest_rate
#> [1] 4.2025
#> 
#> 
#> [[17]]
#> [[17]]$date
#> [1] "2016-02-26"
#> 
#> [[17]]$highest_rate
#> [1] 4.232
#> 
#> [[17]]$lowest_rate
#> [1] 4.19
#> 
#> 
#> [[18]]
#> [[18]]$date
#> [1] "2016-02-29"
#> 
#> [[18]]$highest_rate
#> [1] 4.235
#> 
#> [[18]]$lowest_rate
#> [1] 4.203
#> 
#> 
if (FALSE) get_kl_usd_reference_rate() # \dontrun{}
get_kl_usd_reference_rate(date = "2018-01-03")
#> $date
#> [1] "2018-01-03"
#> 
#> $rate
#> [1] 4.0236
#> 
get_kl_usd_reference_rate(year = 2016, month = 2)
#> list()
```
