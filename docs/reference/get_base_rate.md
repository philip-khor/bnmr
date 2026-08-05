# Base Rates/BLR/Effective LR

This function allows you to obtain current Base Rates and Base Lending
Rates for retail loans or financing facilities and Indicative Effective
Lending Rates for a standard housing loan/home financing offered by
financial institutions from the BNM API.

## Usage

``` r
get_base_rate(bank_code = NULL)
```

## Source

https://apikijangportal.bnm.gov.my/

## Arguments

- bank_code:

  8 characters of SWIFT code per https://apikijangportal.bnm.gov.my/

## Examples

``` r
get_base_rate()
#> # A tibble: 35 × 6
#>    bank_code   bank_name      base_rate base_lending_rate indicative_eff_lendi…¹
#>    <chr>       <chr>              <dbl>             <dbl>                  <dbl>
#>  1 "AFFINBANK" Affin Bank          2.7               5.56                   3.3 
#>  2 "ALLIANCEB" Alliance Bank       2.57              5.42                   3.11
#>  3 "AMBANK"    AmBank              2.6               5.45                   3.25
#>  4 "BANGKOK"   Bangkok Bank …      3.22              5.87                   4.42
#>  5 "BANKCHINA" Bank of China…      2.55              5.35                   3.55
#>  6 "CIMB BANK" CIMB Bank Ber…      2.75              5.6                    3.5 
#>  7 "CITIBANK"  Citibank Berh…      2.4               5.55                   3.2 
#>  8 ""          Hong Leong Ba…      2.63              5.64                   3.5 
#>  9 ""          HSBC Bank Mal…      2.39              5.49                   3.5 
#> 10 ""          Industrial an…      2.52              5.45                   3.47
#> # ℹ 25 more rows
#> # ℹ abbreviated name: ¹​indicative_eff_lending_rate
#> # ℹ 1 more variable: base_financing_rate <dbl>
```
