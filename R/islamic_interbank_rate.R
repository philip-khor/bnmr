#' Islamic Interbank Rate
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' islamic_interbank_rate()
#' @source https://api.bnm.gov.my/
#'
#'
islamic_interbank_rate <- function() get_bnm_data("/islamic-interbank-rate")
