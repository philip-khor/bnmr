# Payments

Payments

## Usage

``` r
get_basic_payments(year = NULL)

get_epayment(year = NULL)

get_cards(year = NULL)

get_internet_banking(year = NULL)

get_eftpos(year = NULL)
```

## Source

https://apikijangportal.bnm.gov.my/

## Arguments

- year:

  year

## Functions

- `get_basic_payments()`: Basic Payments Indicators

- `get_epayment()`: Electronic Payments Volume and Value of Transactions

- `get_cards()`: Number of Cards and Users of Payment Instruments

- `get_internet_banking()`: Internet Banking and Mobile Banking
  Subscribers

- `get_eftpos()`: Number of Electronic Fund Transfer at Point-of-Sale
  (EFTPOS) Terminals

## Examples

``` r
if (FALSE) { # \dontrun{
get_basic_payments()
get_epayment()
get_cards()
} # }
```
