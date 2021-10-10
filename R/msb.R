.get_msb_data <- function(section, year = NULL) {
  path <- paste0("/msb/", section)
  if (is_null(year)) {
    get_bnm_data(path)
  } else {
    assert_that(is_scalar_integerish(year))
    assert_that(year > 1900 && year < 2100)
    get_bnm_data(paste0(path, "/year/", as.integer(year)))
  }
}
#' MSB Data
#' @describeIn msb 1.1 Reserve Money
#' @param Year. Scalar integer
#' @examples
#' \dontrun{get_reserve_money()}
#' \dontrun{get_reserve_money(year = 2010)}
get_reserve_money <- function(year = NULL) {
  .get_msb_data("1.1", year = year)
}

#' @describeIn msb 1.2 Currency in circulation by denomination
#' @inheritParams get_reserve_money
get_curr_in_circ_by_denom <- function(year = NULL) {
  .get_msb_data("1.2", year = year)
}

#' @describeIn msb 1.3 Monetary aggregates
#' @inheritParams get_reserve_money
get_monetary_agg <- function(year = NULL) {
  .get_msb_data("1.3", year = year)
}

#' @describeIn msb 1.4 Bank Negara Malaysia: Statement of Assets
#' @inheritParams get_reserve_money
get_bnm_stmt_assets <- function(year = NULL) {
  .get_msb_data("1.4", year = year)
}

#' @describeIn msb 1.5 Bank Negara Malaysia: Statement of Capital and Liabilities
#' @inheritParams get_reserve_money
get_bnm_stmt_cap_lbl <- function(year = NULL) {
  .get_msb_data("1.5", year = year)
}

#' @describeIn msb 1.6 Bank Negara Malaysia's Special Funds
get_bnm_special_funds <- function(year = NULL) {
  .get_msb_data("1.6", year = year)
}
