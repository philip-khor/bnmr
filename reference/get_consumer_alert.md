# Financial Consumer Alert

This function allows you to obtain a list of known companies and
websites which are neither authorised nor approved under the relevant
laws and regulations administered by BNM from the BNM API.

## Usage

``` r
get_consumer_alert()
```

## Source

https://apikijangportal.bnm.gov.my/

## Examples

``` r
get_consumer_alert()
#> # A tibble: 431 × 4
#>    name                                   regisration_number added_date websites
#>    <chr>                                  <chr>              <chr>      <list>  
#>  1 1globalcash                            ""                 2012-07-13 <NULL>  
#>  2 1Gold.com.my                           ""                 2012-07-13 <list>  
#>  3 3Sixty Venture Capital PLC             ""                 2014-12-30 <list>  
#>  4 A.A.M Global Corporation Sdn Bhd       ""                 2017-05-17 <NULL>  
#>  5 Ace Global Sales & Services            ""                 2013-05-02 <NULL>  
#>  6 Ace Dimension Network Sdn Bhd          ""                 2015-04-10 <NULL>  
#>  7 AE Group Holding Pte. Ltd. (201322498… ""                 2015-05-14 <list>  
#>  8 Agarwood Venture   (002273031-A)       ""                 2014-02-19 <NULL>  
#>  9 Agar Wood Chamber of Commerce Malaysia ""                 2015-05-21 <NULL>  
#> 10 Ahmad Zulkhairi Associates PLT (LLP00… ""                 2017-06-22 <list>  
#> # ℹ 421 more rows
```
