#' Daily Foreign Exchange Turnover
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' daily_fx_turnover()
#' @source https://api.bnm.gov.my/
#'
#'
daily_fx_turnover <- function() get_bnm_data("/fx-turn-over")
