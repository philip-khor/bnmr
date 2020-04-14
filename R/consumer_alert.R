#' Consumer Alert
#'
#' This function allows you to obtain a list of known companies
#' and websites which are neither authorised nor approved
#' under the relevant laws and regulations administered by BNM
#' from the BNM API.
#' @keywords ...
#' @examples
#' consumer_alert()
#' @export
#' @source https://api.bnm.gov.my/
#'
#'
consumer_alert <- function() get_bnm_tbl("/consumer-alert")
