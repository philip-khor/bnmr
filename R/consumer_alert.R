#' Consumer Alert
#'
#' This function allows you to obtain a list of known companies
#' and websites which are neither authorised nor approved
#' under the relevant laws and regulations administered by BNM
#' from the BNM API.
#' @keywords api
#' @examples
#' get_consumer_alert()
#' @export
#' @source https://api.bnm.gov.my/
#'
#'
get_consumer_alert <- function() get_bnm_tbl("/consumer-alert")

#' Consumer Alert
#'
#' Deprecated. Use \code{\link{get_consumer_alert}}
#' @inheritParams get_consumer_alert
#'
#' @export
consumer_alert <- function() {
  .Deprecated("get_consumer_alert")
  get_consumer_alert()
}
