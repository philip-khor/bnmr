# External sector and macroeconomic indicators

External sector and macroeconomic indicators

## Usage

``` r
get_federal_finance(year = NULL)

get_federal_revenue(year = NULL)

get_federal_opex(year = NULL)

get_federal_devex(year = NULL)

get_federal_debt(year = NULL, by = "holder")

get_rentas_foreign_debt_holdings(year = NULL)

get_economic_indicators(year = NULL)
```

## Arguments

- year:

  Scalar integer

- by:

  Classification of government debt: one of "original_maturity",
  "holder", "currency_and_remaining_maturity"

## Functions

- `get_federal_finance()`: 3.1 Federal Government Finance

- `get_federal_revenue()`: 3.1.1 Federal Government Revenue

- `get_federal_opex()`: 3.1.2 Federal Government Operating Expenditure
  by Object

- `get_federal_devex()`: 3.1.3 Federal Government Development
  Expenditure: A Functional Classification

- `get_federal_debt()`: 3.1.4-3.1.6 Federal Government Debt

- `get_rentas_foreign_debt_holdings()`: 3.2 RENTAS- Foreign Holdings in
  Debt Securities and Sukuk

- `get_economic_indicators()`: 3.5 Selected Economic Indicators
