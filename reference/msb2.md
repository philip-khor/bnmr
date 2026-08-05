# Financial and capital markets

Financial and capital markets

## Usage

``` r
get_rates_banking(year = NULL)

get_rates_islm_banking(year = NULL)

get_rates_interbank_mm(year = NULL)

get_rates_tbills(year = NULL)

get_tbills_tender(bill_type = "treasury_bills", year = NULL)

get_rates_mgs(year = NULL)

get_rates_myr(year = NULL)

get_rates_myr_daily(year = NULL)

get_volume_interbank_mm(year = NULL)

get_volume_interbank_forex(year = NULL)

get_cap_funds_public(year = NULL)

get_cap_funds_private(year = NULL)

get_bond_issues(year = NULL)

get_bursa_indicators(year = NULL)

get_futures_indicators(year = NULL)

get_mm_turnover(year = NULL)

get_deriv_turnover(year = NULL)

get_debt_turnover(year = NULL)

get_forex_turnover(year = NULL)

get_net_financing(year = NULL)
```

## Arguments

- year:

  Scalar integer

- bill_type:

  One of "treasury_bills", "bank_negara_bills",
  "malaysian_government_securities", "khazanah_bonds"

## Functions

- `get_rates_banking()`: 2.1 Interest Rates: Banking Institutions

- `get_rates_islm_banking()`: 2.2 Islamic Banking System: Financing
  Rate, Profit Rate to Depositors and Rate of Return to Investment
  Account Holders

- `get_rates_interbank_mm()`: 2.3 Interest Rates: Interbank Money Market

- `get_rates_tbills()`: 2.4 Interest Rates: Treasury Bills and Bank
  Negara Bills

- `get_tbills_tender()`: 2.4.1 Treasury Bills, Bank Negara Bills,
  Malaysian Government Securities and Khazanah Bonds: Tender Results \*

- `get_rates_mgs()`: 2.5 Market Indicative Yield: Malaysian Government
  Securities

- `get_rates_myr()`: 2.6 Exchange Rates: Malaysian Ringgit

- `get_rates_myr_daily()`: 2.6.1 Exchange Rates: the Malaysian Ringgit
  (Daily)

- `get_volume_interbank_mm()`: 2.7 Volume of Transaction in Interbank
  Money Market

- `get_volume_interbank_forex()`: 2.8 Volume of Interbank Transactions
  in the Kuala Lumpur Foreign Exchange Market

- `get_cap_funds_public()`: 2.9 Funds Raised in the Capital Market (by
  Public Sector)

- `get_cap_funds_private()`: 2.10 Funds Raised in the Capital Market (by
  Private Sector)

- `get_bond_issues()`: 2.11 New Issues of Corporate Bond and/or Sukuk

- `get_bursa_indicators()`: 2.12 Bursa Malaysia Securities Berhad:
  Selected Indicators

- `get_futures_indicators()`: 2.13 Futures and Options Markets: Selected
  Indicators

- `get_mm_turnover()`: 2.14 Turnover of Conventional and Islamic Money
  Market

- `get_deriv_turnover()`: 2.15 Turnover of Derivatives Transactions

- `get_debt_turnover()`: 2.16 Turnover of Debt Securities and Sukuk

- `get_forex_turnover()`: 2.17 Turnover of Foreign Currency Market
  Transactions

- `get_net_financing()`: 2.18 Net Financing through the Banking System,
  Development Financial Institutions (DFIs) and Corporate Bonds (CB)
