# Exchange Rates: KL Interbank Foreign Exchange Market

Obtain currency exchange rates from the Interbank Foreign Exchange
Market in Kuala Lumpur in relation to Ringgit.

## Usage

``` r
get_exchange_rate(currency = NULL, session = "1130", quote = "rm")
```

## Source

https://apikijangportal.bnm.gov.my/

## Arguments

- currency:

  3-characters currency code based on ISO4217 standard

- session:

  Character string "0900", "1130", "1200" or "1700". A snapshot of the
  exchange rate daily at 0900, 1130, 1200 and 1700 intervals

- quote:

  Base currency (Ringgit ("rm") or foreign currency ("fx")) as the
  denominator for the exchange rate

## Examples

``` r
get_exchange_rate()
#> [[1]]
#> [[1]]$currency_code
#> [1] "USD"
#> 
#> [[1]]$unit
#> [1] 1
#> 
#> [[1]]$rate
#> [[1]]$rate$date
#> [1] "2026-08-05"
#> 
#> [[1]]$rate$buying_rate
#> [1] 4.074
#> 
#> [[1]]$rate$selling_rate
#> [1] 4.099
#> 
#> [[1]]$rate$middle_rate
#> NULL
#> 
#> 
#> 
#> [[2]]
#> [[2]]$currency_code
#> [1] "SGD"
#> 
#> [[2]]$unit
#> [1] 1
#> 
#> [[2]]$rate
#> [[2]]$rate$date
#> [1] "2026-08-05"
#> 
#> [[2]]$rate$buying_rate
#> [1] 3.1668
#> 
#> [[2]]$rate$selling_rate
#> [1] 3.2088
#> 
#> [[2]]$rate$middle_rate
#> NULL
#> 
#> 
#> 
#> [[3]]
#> [[3]]$currency_code
#> [1] "JPY"
#> 
#> [[3]]$unit
#> [1] 100
#> 
#> [[3]]$rate
#> [[3]]$rate$date
#> [1] "2026-08-05"
#> 
#> [[3]]$rate$buying_rate
#> [1] 2.5684
#> 
#> [[3]]$rate$selling_rate
#> [1] 2.6134
#> 
#> [[3]]$rate$middle_rate
#> NULL
#> 
#> 
#> 
#> [[4]]
#> [[4]]$currency_code
#> [1] "GBP"
#> 
#> [[4]]$unit
#> [1] 1
#> 
#> [[4]]$rate
#> [[4]]$rate$date
#> [1] "2026-08-05"
#> 
#> [[4]]$rate$buying_rate
#> [1] 5.4673
#> 
#> [[4]]$rate$selling_rate
#> [1] 5.5173
#> 
#> [[4]]$rate$middle_rate
#> NULL
#> 
#> 
#> 
#> [[5]]
#> [[5]]$currency_code
#> [1] "EUR"
#> 
#> [[5]]$unit
#> [1] 1
#> 
#> [[5]]$rate
#> [[5]]$rate$date
#> [1] "2026-08-05"
#> 
#> [[5]]$rate$buying_rate
#> [1] 4.6884
#> 
#> [[5]]$rate$selling_rate
#> [1] 4.7334
#> 
#> [[5]]$rate$middle_rate
#> NULL
#> 
#> 
#> 
#> [[6]]
#> [[6]]$currency_code
#> [1] "CAD"
#> 
#> [[6]]$unit
#> [1] 1
#> 
#> [[6]]$rate
#> [[6]]$rate$date
#> [1] "2026-08-05"
#> 
#> [[6]]$rate$buying_rate
#> [1] 2.8802
#> 
#> [[6]]$rate$selling_rate
#> [1] 2.9252
#> 
#> [[6]]$rate$middle_rate
#> NULL
#> 
#> 
#> 
#> [[7]]
#> [[7]]$currency_code
#> [1] "AUD"
#> 
#> [[7]]$unit
#> [1] 1
#> 
#> [[7]]$rate
#> [[7]]$rate$date
#> [1] "2026-08-05"
#> 
#> [[7]]$rate$buying_rate
#> [1] 2.8549
#> 
#> [[7]]$rate$selling_rate
#> [1] 2.8999
#> 
#> [[7]]$rate$middle_rate
#> NULL
#> 
#> 
#> 
```
