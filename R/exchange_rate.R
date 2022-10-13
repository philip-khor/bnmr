#' Exchange Rates: KL Interbank Foreign Exchange Market
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

#' Renminbi
#'
#' Extract indicative CNY/MYR
#' forward prices for trade settlement and RMB deposit acceptance rates
#' from the BNM API as a tidy tibble.
#' @param type String. Either "dar" or "fx_forward".
#' @keywords rates_and_volumes
#' @importFrom tidyr spread unnest
#' @importFrom tibble tibble
#' @importFrom purrr map_dbl
#' @importFrom rlang .data
#' @examples
#' \dontrun{get_renminbi(type = "dar")}
#' get_renminbi(type = "fx_forward")
#' @source https://apikijangportal.bnm.gov.my/
#' @export

get_renminbi <- function(type = "dar") {
  stopifnot(type %in% c("dar", "fx_forward"))
  paths <- c(
    dar = "/renminbi-deposit-acceptance-rate",
    fx_forward = "/renminbi-fx-forward-price"
  )


  if (type == "dar") {
    rmb_tibble <- get_bnm_tbl(paths[[type]])
    rmb_tibble[["term"]] <- names(rmb_tibble[["deposit"]])
    spread(unnest(rmb_tibble, cols = c(.data[["deposit"]])), "term", "deposit")
  }
  else {
    fx_forward_list <- bnm_api(paths[[type]])[["content"]][["data"]]
    tibble(
      date = fx_forward_list[["date"]],
      period = c("spot", "2_weeks", "1_month", "2_months", "3_months", "4_months", "5_months", "6_months"),
      buying = map_dbl(period, ~ fx_forward_list[["buying"]][[.]]),
      selling = map_dbl(period, ~ fx_forward_list[["selling"]][[.]])
    )
  }
}


