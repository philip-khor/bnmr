#' Daily Foreign Exchange Turnover
#'
#' This function allows you to obtain daily foreign exchange
#' turnover for all currencies including interbank and customer deals
#' from the BNM API.
#' @keywords ...
#' @examples
#' daily_fx_turnover()
#' @export
#' @source https://api.bnm.gov.my/
#'
#'
daily_fx_turnover <- function() get_bnm_tbl("/fx-turn-over")
