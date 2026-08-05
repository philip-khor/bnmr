# Malaysia Overnight Rate - I

Malaysia Overnight Rate - I

## Usage

``` r
get_overnight_rate(date = NULL, year = NULL, month = NULL)
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
if (FALSE) get_overnight_rate() # \dontrun{}
get_overnight_rate(date = "2022-05-05")
#> [[1]]
#> [[1]]$reference_date
#> [1] "2022-05-05"
#> 
#> [[1]]$publication_date
#> [1] "2022-05-06"
#> 
#> [[1]]$reference_rate
#> [1] "1.74"
#> 
#> [[1]]$aggregate_volume
#> [1] "23642.90"
#> 
#> [[1]]$index
#> [1] "1.0019895312"
#> 
#> [[1]]$average_1m
#> [1] "1.73012"
#> 
#> [[1]]$average_3m
#> NULL
#> 
#> [[1]]$average_6m
#> NULL
#> 
#> 
get_overnight_rate(year = 2022, month = 5)
#> [[1]]
#> [[1]]$reference_date
#> [1] "2022-05-05"
#> 
#> [[1]]$publication_date
#> [1] "2022-05-06"
#> 
#> [[1]]$reference_rate
#> [1] "1.74"
#> 
#> [[1]]$aggregate_volume
#> [1] "23642.90"
#> 
#> [[1]]$index
#> [1] "1.0019895312"
#> 
#> [[1]]$average_1m
#> [1] "1.73012"
#> 
#> [[1]]$average_3m
#> NULL
#> 
#> [[1]]$average_6m
#> NULL
#> 
#> 
#> [[2]]
#> [[2]]$reference_date
#> [1] "2022-05-06"
#> 
#> [[2]]$publication_date
#> [1] "2022-05-09"
#> 
#> [[2]]$reference_rate
#> [1] "1.75"
#> 
#> [[2]]$aggregate_volume
#> [1] "23977.60"
#> 
#> [[2]]$index
#> [1] "1.0021336530"
#> 
#> [[2]]$average_1m
#> [1] "1.73212"
#> 
#> [[2]]$average_3m
#> NULL
#> 
#> [[2]]$average_6m
#> NULL
#> 
#> 
#> [[3]]
#> [[3]]$reference_date
#> [1] "2022-05-09"
#> 
#> [[3]]$publication_date
#> [1] "2022-05-10"
#> 
#> [[3]]$reference_rate
#> [1] "1.73"
#> 
#> [[3]]$aggregate_volume
#> [1] "21970.30"
#> 
#> [[3]]$index
#> [1] "1.0021811514"
#> 
#> [[3]]$average_1m
#> [1] "1.73179"
#> 
#> [[3]]$average_3m
#> NULL
#> 
#> [[3]]$average_6m
#> NULL
#> 
#> 
#> [[4]]
#> [[4]]$reference_date
#> [1] "2022-05-10"
#> 
#> [[4]]$publication_date
#> [1] "2022-05-11"
#> 
#> [[4]]$reference_rate
#> [1] "1.69"
#> 
#> [[4]]$aggregate_volume
#> [1] "25134.10"
#> 
#> [[4]]$index
#> [1] "1.0022275538"
#> 
#> [[4]]$average_1m
#> [1] "1.73012"
#> 
#> [[4]]$average_3m
#> NULL
#> 
#> [[4]]$average_6m
#> NULL
#> 
#> 
#> [[5]]
#> [[5]]$reference_date
#> [1] "2022-05-11"
#> 
#> [[5]]$publication_date
#> [1] "2022-05-12"
#> 
#> [[5]]$reference_rate
#> [1] "1.94"
#> 
#> [[5]]$aggregate_volume
#> [1] "26474.70"
#> 
#> [[5]]$index
#> [1] "1.0022808228"
#> 
#> [[5]]$average_1m
#> [1] "1.73813"
#> 
#> [[5]]$average_3m
#> NULL
#> 
#> [[5]]$average_6m
#> NULL
#> 
#> 
#> [[6]]
#> [[6]]$reference_date
#> [1] "2022-05-12"
#> 
#> [[6]]$publication_date
#> [1] "2022-05-13"
#> 
#> [[6]]$reference_rate
#> [1] "1.99"
#> 
#> [[6]]$aggregate_volume
#> [1] "21897.30"
#> 
#> [[6]]$index
#> [1] "1.0023354677"
#> 
#> [[6]]$average_1m
#> [1] "1.74614"
#> 
#> [[6]]$average_3m
#> NULL
#> 
#> [[6]]$average_6m
#> NULL
#> 
#> 
#> [[7]]
#> [[7]]$reference_date
#> [1] "2022-05-13"
#> 
#> [[7]]$publication_date
#> [1] "2022-05-17"
#> 
#> [[7]]$reference_rate
#> [1] "1.96"
#> 
#> [[7]]$aggregate_volume
#> [1] "24911.10"
#> 
#> [[7]]$index
#> [1] "1.0025507639"
#> 
#> [[7]]$average_1m
#> [1] "1.77817"
#> 
#> [[7]]$average_3m
#> NULL
#> 
#> [[7]]$average_6m
#> NULL
#> 
#> 
#> [[8]]
#> [[8]]$reference_date
#> [1] "2022-05-17"
#> 
#> [[8]]$publication_date
#> [1] "2022-05-18"
#> 
#> [[8]]$reference_rate
#> [1] "1.92"
#> 
#> [[8]]$aggregate_volume
#> [1] "19829.00"
#> 
#> [[8]]$index
#> [1] "1.0026035008"
#> 
#> [[8]]$average_1m
#> [1] "1.78585"
#> 
#> [[8]]$average_3m
#> NULL
#> 
#> [[8]]$average_6m
#> NULL
#> 
#> 
#> [[9]]
#> [[9]]$reference_date
#> [1] "2022-05-18"
#> 
#> [[9]]$publication_date
#> [1] "2022-05-19"
#> 
#> [[9]]$reference_rate
#> [1] "1.95"
#> 
#> [[9]]$aggregate_volume
#> [1] "20096.50"
#> 
#> [[9]]$index
#> [1] "1.0026570646"
#> 
#> [[9]]$average_1m
#> [1] "1.79253"
#> 
#> [[9]]$average_3m
#> NULL
#> 
#> [[9]]$average_6m
#> NULL
#> 
#> 
#> [[10]]
#> [[10]]$reference_date
#> [1] "2022-05-19"
#> 
#> [[10]]$publication_date
#> [1] "2022-05-20"
#> 
#> [[10]]$reference_rate
#> [1] "1.96"
#> 
#> [[10]]$aggregate_volume
#> [1] "21513.40"
#> 
#> [[10]]$index
#> [1] "1.0027109059"
#> 
#> [[10]]$average_1m
#> [1] "1.79954"
#> 
#> [[10]]$average_3m
#> NULL
#> 
#> [[10]]$average_6m
#> NULL
#> 
#> 
#> [[11]]
#> [[11]]$reference_date
#> [1] "2022-05-20"
#> 
#> [[11]]$publication_date
#> [1] "2022-05-23"
#> 
#> [[11]]$reference_rate
#> [1] "1.96"
#> 
#> [[11]]$aggregate_volume
#> [1] "23137.70"
#> 
#> [[11]]$index
#> [1] "1.0028724385"
#> 
#> [[11]]$average_1m
#> [1] "1.82357"
#> 
#> [[11]]$average_3m
#> NULL
#> 
#> [[11]]$average_6m
#> NULL
#> 
#> 
#> [[12]]
#> [[12]]$reference_date
#> [1] "2022-05-23"
#> 
#> [[12]]$publication_date
#> [1] "2022-05-24"
#> 
#> [[12]]$reference_rate
#> [1] "1.96"
#> 
#> [[12]]$aggregate_volume
#> [1] "26742.90"
#> 
#> [[12]]$index
#> [1] "1.0029262914"
#> 
#> [[12]]$average_1m
#> [1] "1.83192"
#> 
#> [[12]]$average_3m
#> NULL
#> 
#> [[12]]$average_6m
#> NULL
#> 
#> 
#> [[13]]
#> [[13]]$reference_date
#> [1] "2022-05-24"
#> 
#> [[13]]$publication_date
#> [1] "2022-05-25"
#> 
#> [[13]]$reference_rate
#> [1] "1.99"
#> 
#> [[13]]$aggregate_volume
#> [1] "29034.20"
#> 
#> [[13]]$index
#> [1] "1.0029809715"
#> 
#> [[13]]$average_1m
#> [1] "1.84126"
#> 
#> [[13]]$average_3m
#> NULL
#> 
#> [[13]]$average_6m
#> NULL
#> 
#> 
#> [[14]]
#> [[14]]$reference_date
#> [1] "2022-05-25"
#> 
#> [[14]]$publication_date
#> [1] "2022-05-26"
#> 
#> [[14]]$reference_rate
#> [1] "1.99"
#> 
#> [[14]]$aggregate_volume
#> [1] "26342.60"
#> 
#> [[14]]$index
#> [1] "1.0030356545"
#> 
#> [[14]]$average_1m
#> [1] "1.84928"
#> 
#> [[14]]$average_3m
#> NULL
#> 
#> [[14]]$average_6m
#> NULL
#> 
#> 
#> [[15]]
#> [[15]]$reference_date
#> [1] "2022-05-26"
#> 
#> [[15]]$publication_date
#> [1] "2022-05-27"
#> 
#> [[15]]$reference_rate
#> [1] "2.00"
#> 
#> [[15]]$aggregate_volume
#> [1] "25301.60"
#> 
#> [[15]]$index
#> [1] "1.0030906154"
#> 
#> [[15]]$average_1m
#> [1] "1.85896"
#> 
#> [[15]]$average_3m
#> NULL
#> 
#> [[15]]$average_6m
#> NULL
#> 
#> 
#> [[16]]
#> [[16]]$reference_date
#> [1] "2022-05-27"
#> 
#> [[16]]$publication_date
#> [1] "2022-05-30"
#> 
#> [[16]]$reference_rate
#> [1] "2.00"
#> 
#> [[16]]$aggregate_volume
#> [1] "21929.30"
#> 
#> [[16]]$index
#> [1] "1.0032555070"
#> 
#> [[16]]$average_1m
#> [1] "1.88567"
#> 
#> [[16]]$average_3m
#> NULL
#> 
#> [[16]]$average_6m
#> NULL
#> 
#> 
#> [[17]]
#> [[17]]$reference_date
#> [1] "2022-05-30"
#> 
#> [[17]]$publication_date
#> [1] "2022-05-31"
#> 
#> [[17]]$reference_rate
#> [1] "2.00"
#> 
#> [[17]]$aggregate_volume
#> [1] "23067.94"
#> 
#> [[17]]$index
#> [1] "1.0033104799"
#> 
#> [[17]]$average_1m
#> [1] "1.88945"
#> 
#> [[17]]$average_3m
#> NULL
#> 
#> [[17]]$average_6m
#> NULL
#> 
#> 
#> [[18]]
#> [[18]]$reference_date
#> [1] "2022-05-31"
#> 
#> [[18]]$publication_date
#> [1] "2022-06-01"
#> 
#> [[18]]$reference_rate
#> [1] "2.00"
#> 
#> [[18]]$aggregate_volume
#> [1] "20133.90"
#> 
#> [[18]]$index
#> [1] "1.0033654558"
#> 
#> [[18]]$average_1m
#> [1] "1.89786"
#> 
#> [[18]]$average_3m
#> NULL
#> 
#> [[18]]$average_6m
#> NULL
#> 
#> 
```
