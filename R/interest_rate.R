#' Interest Rate
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' interest_rate()
#' @source https://api.bnm.gov.my/
#'
#'
interest_rate <- function() get_bnm_data("/interest-rate")
