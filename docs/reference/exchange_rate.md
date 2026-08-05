# Exchange rate

Deprecated. Use
[`get_exchange_rate`](https://bnmr.philipscurve.com/reference/get_exchange_rate.md)

## Usage

``` r
exchange_rate(currency = NULL, session = "1130", quote = "rm")
```

## Arguments

- currency:

  3-characters currency code based on ISO4217 standard

- session:

  Character string "0900", "1130", "1200" or "1700". A snapshot of the
  exchange rate daily at 0900, 1130, 1200 and 1700 intervals

- quote:

  Base currency (Ringgit ("rm") or foreign currency ("fx")) as the
  denominator for the exchange rate
