#' Payments
#'
#' @name payments
#' @keywords payments api
#' @examples
#' \dontrun{
#' get_basic_payments()
#' get_epayment()
#' get_cards()
#' }
#' @param year year
#' @source https://apikijangportal.bnm.gov.my/
#'
NULL

.get_payment_statistic <- function(sub_path, year = NULL) {
  path <- glue("/payment-statistic/{sub_path}")
  if (!is_null(year)) {
    assertthat::is.count(year)
    path <- paste0(path, "/", as.character(year))
  }
  get_bnm_tbl(path)
}

#' @describeIn payments Basic Payments Indicators
#' @export
get_basic_payments <- function(year = NULL) {
  .get_payment_statistic("01-basic-payments-indicator", year = year)
}

#' @describeIn payments Electronic Payments Volume and Value of Transactions
#' @export
get_epayment <- function(year = NULL) {
  .get_payment_statistic("02-epayment", year = year)
}

#' @describeIn payments Number of Cards and Users of Payment Instruments
#' @export
get_cards <- function(year = NULL) {
  .get_payment_statistic("03-cards", year = year)
}

#' @describeIn payments Internet Banking and Mobile Banking Subscribers
#' @export
get_internet_banking <- function(year = NULL) {
  get_payment_statistic("04-internet-mobile-banking", year = year)
}

#' @describeIn payments Number of Electronic Fund Transfer at Point-of-Sale (EFTPOS) Terminals
#' @export
get_eftpos <- function(year = NULL) {
  get_payment_statistic("05-eftpos-terminals", year = year)
}
