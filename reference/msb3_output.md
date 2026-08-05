# External sector and macroeconomic indicators: aggregate output

External sector and macroeconomic indicators: aggregate output

## Usage

``` r
get_aggregate_output(year = NULL, metric = "gdp", output_by = "expenditure")
```

## Arguments

- year:

  Scalar integer

- metric:

  One of "gdp", "gni"

- output_by:

  One of "expenditure", "activity"

## Value

nested list with "amt" and "change". Different base rates are nested
within.

## Examples

``` r
if (FALSE) { # \dontrun{
# we retrieve GDP by expenditure by default 
res <- get_aggregate_output()

# result is a nested list
str(res)

# to get change at 2000 prices run the following: 
res$change$base_2000 
} # }
```
