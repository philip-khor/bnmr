#' Exchange Rate
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' exchange_rate()
#' @source https://api.bnm.gov.my/
#'
#'
exchange_rate <- function() get_bnm_data("/exchange-rate")
