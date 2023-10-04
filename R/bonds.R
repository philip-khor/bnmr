#' Market highlights
#' @export
#' @param year,month Year and month as integers. If date, year and month left blank, return today's values.
#' @param date Character string of date with format as defined by RFC 3339, section 5.6
#' (YYYY-MM-DD).
#' If specified, return values for the specified date.
#' @keywords bonds
get_market_highlights <- function(date = NULL, year = NULL, month = NULL) {
  .get_monthly_data(
    stub = "/bih/market-highlights",
    date = date,
    year = year,
    month = month
  )
}
