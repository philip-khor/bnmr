# Monetary and banking system: deposits

Monetary and banking system: deposits

## Usage

``` r
get_sys_deps_type(year = NULL)

get_islm_deps_type_holder(year = NULL, type = "commercial")

get_sys_deps_holder(year = NULL)

get_sys_dd_holder(year = NULL, ins = "commercial")

get_sys_sav_fd_deps_holder(year = NULL, ins = "commercial")

get_sys_repo_holder(year = NULL, ins = "commercial")

get_sys_nid_holder(year = NULL, type = "total")

get_sys_fc_deps_holder(year = NULL, type = "total")

get_sys_fd_maturity(year = NULL, type = "total")
```

## Arguments

- year:

  Scalar integer

- type:

  Banking institution type; one of "commercial" "islamic" "investment"
  "total"

- ins:

  One of "commercial", "islamic"

## Functions

- `get_sys_deps_type()`: 1.24 Banking System: Total Deposits by Type

- `get_islm_deps_type_holder()`: 1.24.2 Islamic Banking System -
  Deposits by Type & Holder

- `get_sys_deps_holder()`: 1.25 Banking System: Total Deposits by Holder

- `get_sys_dd_holder()`: 1.25.1 Banking System: Demand Deposits by
  Holder

- `get_sys_sav_fd_deps_holder()`: 1.25.2 Banking System: Savings and
  Fixed Deposits, Special and General Investment Deposits by Holder

- `get_sys_repo_holder()`: 1.25.3 Banking System: Repurchase Agreements
  by Holder

- `get_sys_nid_holder()`: 1.25.4 Banking System: Negotiable Instruments
  of Deposits by Holder

- `get_sys_fc_deps_holder()`: 1.25.5 Banking System: Foreign Currency
  and Other Deposits by Holder

- `get_sys_fd_maturity()`: 1.25.6 Banking System: Fixed Deposits,
  Special Investment Deposits and General Deposit Investment by Original
  Maturity
