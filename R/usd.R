#' USD rates
#'
#' This function allows you to ... from the BNM API.
#' @param type "interbank" for USD interbank intraday rate,
#' "kl" for KL USD Reference Rate
#' @examples
#' usd()
#' usd(type = "interbank")
#' @source https://api.bnm.gov.my/
#'
#'
usd <- function(type = "interbank"){
  paths <- c(interbank = "/usd-interbank-intraday-rate",
             kl = "/kl-usd-reference-rate")

  get_bnm_data(paths[[type]])
}
