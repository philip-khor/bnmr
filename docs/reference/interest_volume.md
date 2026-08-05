# Interest Volume

Deprecated. Use
[`get_interest_volume`](https://bnmr.philipscurve.com/reference/get_interbank_rates.md)

## Usage

``` r
interest_volume(
  product = "money_market_operations",
  date = NULL,
  year = NULL,
  month = NULL
)
```

## Arguments

- product:

  One of "money_market_operations", "interbank" or "overall"

- date:

  Character string of date with format as defined by RFC 3339, section
  5.6 (YYYY-MM-DD). If specified, return values for the specified date.

- year:

  Year and month as integers. If date, year and month left blank, return
  today's values.

- month:

  Year and month as integers. If date, year and month left blank, return
  today's values.
