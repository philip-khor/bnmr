.er <- function(path, session = session, quote = quote){
  stopifnot(session %in% c("0900", "1130", "1200", "1700"),
            quote %in% c("rm", "fx"))

  get_bnm_data(path,
               query = list(session = session,
                            quote = quote))
}

#' Exchange Rate
#'
#' This function allows you to ... from the BNM API.
#' @param currency 3-characters currency code based on ISO4217 standard
#' @param session Character string "0900", "1130", "1200" or "1700".
#' A snapshot of the exchange rate daily at 0900, 1130, 1200 and 1700 intervals
#' @param quote Base currency (Ringgit ("rm") or foreign currency ("fx")) as the denominator for the exchange rate
#' @keywords ...
#' @examples
#' exchange_rate()
#' @source https://api.bnm.gov.my/
#'
#'
#'
exchange_rate <- function(currency,
                          session = "1130",
                          quote = "rm"){
  path <- "/exchange-rate"

  if (!missing(currency)) {
    if (! toupper(currency) %in% ISOcodes::ISO_4217[["Letter"]]){
      stop("Invalid currency code.")
    }
    path <- paste0(path, "/", currency)
  }

  .er(path = path, session = session, quote = quote)
}
