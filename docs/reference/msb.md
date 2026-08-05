# MSB Data

MSB Data

## Usage

``` r
get_reserve_money(year = NULL)

get_curr_in_circ_by_denom(year = NULL)

get_monetary_agg(year = NULL)

get_m3(year = NULL)

get_m3_factors(year = NULL)

get_bnm_stmt_assets(year = NULL)

get_bnm_stmt_cap_lbl(year = NULL)

get_bnm_special_funds(year = NULL)

get_sys_stmt_assets(year = NULL)

get_islm_stmt_assets(year = NULL, type = "commercial")

get_sys_stmt_cap_lbl(year = NULL)

get_islm_stmt_cap_lbl(year = NULL, type = "commercial")

get_stry_lqa_req(year = NULL)

get_liq_cov_rt(year = NULL)

get_sys_const_cap(year = NULL)

get_islm_const_cap(year = NULL, capital = "total")

get_cc_mas(year = NULL)

get_sys_lf_ratio(year = NULL)

get_islm_inv(year = NULL)

get_islm_stmt_assets_inv(year = NULL)

get_islm_fin_inv_type(year = NULL)

get_islm_fin_inv_concept(year = NULL)

get_islm_fin_inv_purpose_sectors(year = NULL)

get_islm_inv_maturity(year = NULL)
```

## Arguments

- year:

  Scalar integer

- type:

  Banking institution type; one of "commercial" "islamic" "investment"
  "total"

- capital:

  One of "ibs", "islamic", "total"

## Functions

- `get_reserve_money`: 1.1 Reserve Money

- `get_curr_in_circ_by_denom`: 1.2 Currency in circulation by
  denomination

- `get_monetary_agg`: 1.3 Monetary aggregates

- `get_m3`: 1.3.1 Broad Money, M3

- `get_m3_factors`: 1.3.2 Factors affecting M3

- `get_bnm_stmt_assets`: 1.4 Bank Negara Malaysia: Statement of Assets

- `get_bnm_stmt_cap_lbl`: 1.5 Bank Negara Malaysia: Statement of Capital
  and Liabilities

- `get_bnm_special_funds`: 1.6 Bank Negara Malaysia's Special Funds

- `get_sys_stmt_assets`: 1.7 Banking System: Statement of Assets

- `get_islm_stmt_assets`: 1.7.1 Islamic Banking System: Statement of
  Assets

- `get_sys_stmt_cap_lbl`: 1.9 Banking System: Statement of Capital and
  Liabilities

- `get_islm_stmt_cap_lbl`: 1.9.1 Islamic Banking System: Statement of
  Capital and Liabilities

- `get_stry_lqa_req`: 1.27 Statutory Reserve and Liquid Asset
  Requirement

- `get_liq_cov_rt`: 1.28a Liquidity Coverage Ratio

- `get_sys_const_cap`: 1.29a Banking System: Constituents of Capital

- `get_islm_const_cap`: 1.29.1a Islamic Banking System : Constituents of
  Capital

- `get_cc_mas`: 1.30 Credit Card Operations in Malaysia

- `get_sys_lf_ratio`: 1.31 Banking System: Loan to Fund Ratio, Loan to
  Fund and Equity Ratio and Outstanding Surplus Liquidity placed with
  Bank Negara Malaysia

- `get_islm_inv`: 1.32 Islamic Banking System: Total Investment Account
  by Type and Holder

- `get_islm_stmt_assets_inv`: 1.32.1 Islamic Banking System: Statement
  of Total Assets funded through Investment Account

- `get_islm_fin_inv_type`: 1.32.2 Islamic Banking System: Total
  Financing funded through Investment Account by Type

- `get_islm_fin_inv_concept`: 1.32.3 Islamic Banking System: Total
  Financing funded through Investment Account by Concept

- `get_islm_fin_inv_purpose_sectors`: 1.32.4 Islamic Banking System:
  Total Financing funded through Investment Account by Purpose and
  Sectors

- `get_islm_inv_maturity`: 1.32.5 Islamic Banking System: Total
  Investment Account by Original Maturity

## See also

[`msb_loans`](https://bnmr.philipscurve.com/reference/msb_loans.md),
[`msb_deposits`](https://bnmr.philipscurve.com/reference/msb_deposits.md)

## Examples

``` r
if (FALSE) get_reserve_money()
if (FALSE) get_reserve_money(year = 2010)
```
