#' Daily Foreign Exchange Turnover
#'
#' This function allows you to obtain daily foreign exchange
#' turnover for all currencies including interbank and customer deals
#' from the BNM API.
#' @keywords rates_and_volumes api
#' @examples
#' get_daily_fx_turnover()
#' @export
#' @source https://apikijangportal.bnm.gov.my/
#'
#'
get_daily_fx_turnover <- function() get_bnm_data("/fx-turn-over")
