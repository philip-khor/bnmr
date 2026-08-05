# Kijang Emas

Obtain daily trading prices of Malaysia gold bullion coin from the BNM
API.

## Usage

``` r
get_kijang_emas(date = NULL, year = NULL, month = NULL)
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

## Examples

``` r
if (FALSE) get_kijang_emas() # \dontrun{}
get_kijang_emas(date = "2020-09-01")
#> $effective_date
#> [1] "2020-09-01"
#> 
#> $one_oz
#> $one_oz$buying
#> [1] 8352
#> 
#> $one_oz$selling
#> [1] 8700
#> 
#> 
#> $half_oz
#> $half_oz$buying
#> [1] 4176
#> 
#> $half_oz$selling
#> [1] 4432
#> 
#> 
#> $quarter_oz
#> $quarter_oz$buying
#> [1] 2088
#> 
#> $quarter_oz$selling
#> [1] 2257
#> 
#> 
get_kijang_emas(year = 2016, month = 2)
#> list()
```
