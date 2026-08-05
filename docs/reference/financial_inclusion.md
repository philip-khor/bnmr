# Financial Inclusion

Financial Inclusion

## Usage

``` r
get_financing_applied(year = NULL)

get_financing_approved(year = NULL)
```

## Source

https://apikijangportal.bnm.gov.my/

## Arguments

- year:

  year

## Functions

- `get_financing_applied()`: Financing Applied

- `get_financing_approved()`: Financing Approved

## Examples

``` r
get_financing_applied()
#> $year_dt
#> [1] 2020
#> 
#> $month_dt
#> [1] 8
#> 
#> $sector
#> [1] "Jumlah / Total"
#> 
#> $pri_agr
#> [1] "404478.690000000000"
#> 
#> $min_and_qua
#> [1] "50233.000000000000"
#> 
#> $man_inc_agr_bas
#> [1] "2183620.250000000000"
#> 
#> $ele_gas_and_wat_sup
#> [1] "121393.000000000000"
#> 
#> $construction
#> [1] "1967183.000000000000"
#> 
#> $who_ret_tra_and_res_hot
#> [1] "4549497.846000000000"
#> 
#> $tra_sto_and_com
#> [1] "573571.000000000000"
#> 
#> $fin_ins_rea_est_and_bus_act
#> [1] "3058661.439000000000"
#> 
#> $edu_hea_oth
#> [1] "608906.000000000000"
#> 
#> $hou_sec
#> [1] "33294.000000000000"
#> 
#> $oth_sec_nec
#> [1] "63898.000000000000"
#> 
#> $tot_loa_fin_app
#> [1] "13614736.225000000000"
#> 
get_financing_approved()
#> $year_dt
#> [1] 2020
#> 
#> $month_dt
#> [1] 8
#> 
#> $sector
#> [1] "Jumlah / Total"
#> 
#> $pri_agr
#> [1] "339179.870000000000"
#> 
#> $min_and_qua
#> [1] "26818.000000000000"
#> 
#> $man_inc_agr_bas
#> [1] "714443.640000000000"
#> 
#> $ele_gas_and_wat_sup
#> [1] "16963.000000000000"
#> 
#> $construction
#> [1] "840035.000000000000"
#> 
#> $who_ret_tra_and_res_hot
#> [1] "1498340.716000000000"
#> 
#> $tra_sto_and_com
#> [1] "376285.000000000000"
#> 
#> $fin_ins_rea_est_and_bus_act
#> [1] "1208932.000000000000"
#> 
#> $edu_hea_oth
#> [1] "100838.000000000000"
#> 
#> $hou_sec
#> [1] "13268.000000000000"
#> 
#> $oth_sec_nec
#> [1] "1210.000000000000"
#> 
#> $tot_loa_fin_app
#> [1] "5136313.226000000000"
#> 
```
