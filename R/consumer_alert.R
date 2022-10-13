#' Financial Consumer Alert
#'
#' This function allows you to obtain a list of known companies
#' and websites which are neither authorised nor approved
#' under the relevant laws and regulations administered by BNM
#' from the BNM API.
#' @keywords rates_and_volumes
#' @examples
#' get_consumer_alert()
#' @export
#' @source https://apikijangportal.bnm.gov.my/
#'
#'
get_consumer_alert <- function() get_bnm_tbl("/consumer-alert")
