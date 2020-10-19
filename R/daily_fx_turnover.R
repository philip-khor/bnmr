#' Daily Foreign Exchange Turnover
#'
#' This function allows you to obtain daily foreign exchange
#' turnover for all currencies including interbank and customer deals
#' from the BNM API.
#' @keywords api
#' @examples
#' get_daily_fx_turnover()
#' @export
#' @source https://api.bnm.gov.my/
#'
#'
get_daily_fx_turnover <- function() get_bnm_tbl("/fx-turn-over")

#' Daily Foreign Exchange Turnover
#'
#' Deprecated. Use \code{\link{get_daily_fx_turnover}}
#' @inheritParams get_daily_fx_turnover
#'
#' @export
daily_fx_turnover <- function() {
  .Deprecated("get_daily_fx_turnover")
  get_daily_fx_turnover()
}
