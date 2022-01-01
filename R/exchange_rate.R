#' KL Interbank Foreign Exchange Market Exchange Rate
#'
#' Obtain currency exchange rates
#' from the Interbank Foreign Exchange Market in Kuala Lumpur
#' in relation to Ringgit.
#' 
#' @param currency 3-characters currency code based on ISO4217 standard
#' @param session Character string "0900", "1130", "1200" or "1700".
#' A snapshot of the exchange rate daily at 0900, 1130, 1200 and 1700 intervals
#' @param quote Base currency (Ringgit ("rm") or foreign currency ("fx")) as the denominator for the exchange rate
#' @keywords rates_and_volumes
#' @examples
#' get_exchange_rate()
#' @export
#' @source https://apikijangportal.bnm.gov.my/
#'
get_exchange_rate <- function(currency = NULL,
                          session = "1130",
                          quote = "rm") {
  path <- "/exchange-rate"

  if (!is_null(currency)) {
    if (!toupper(currency) %in% ISOcodes::ISO_4217[["Letter"]]) {
      stop("Invalid currency code.")
    }
    path <- paste0(path, "/", currency)
  }
  stopifnot(
    session %in% c("0900", "1130", "1200", "1700"),
    quote %in% c("rm", "fx")
  )

  get_bnm_tbl(path,
              query = list(
                session = session,
                quote = quote
              )
  )
}
