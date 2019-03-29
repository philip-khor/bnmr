#' Base rate
#'
#' This function allows you to obtain base rate data from the BNM API.
#' @param bank_code ... per https://api.bnm.gov.my/
#' @keywords ...
#' @examples
#' base_rate()
#' @source https://api.bnm.gov.my/
#'

base_rate <- function(bank_code = ""){
  get_bnm_data(glue("/base-rate/{bank_code}"))
}

# write a print method that shows meta?

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

#' Exchange Rate
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' exchange_rate()
#' @source https://api.bnm.gov.my/
#'
#'
exchange_rate <- function() get_bnm_data("/exchange-rate")

#' Consumer Alert
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' consumer_alert()
#' @source https://api.bnm.gov.my/
#'
#'
consumer_alert <- function() get_bnm_data("/consumer-alert")

#' Interbank Swap
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' interbank_swap()
#' @source https://api.bnm.gov.my/
#'
#'
interbank_swap <- function() get_bnm_data("/interbank-swap")

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

#' Interest Volume
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' interest_volume()
#' @source https://api.bnm.gov.my/
#'
#'
interest_volume <- function() get_bnm_data("/interest-volume")

#' Islamic Interbank Rate
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' islamic_interbank_rate()
#' @source https://api.bnm.gov.my/
#'
#'
islamic_interbank_rate <- function() get_bnm_data("/islamic-interbank-rate")

#' Kijang Emas
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' kijang_emas()
#' @source https://api.bnm.gov.my/
#'
#'
kijang_emas <- function() get_bnm_data("/kijang-emas")


#' Overnight Policy Rate (OPR)
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' opr()
#' @source https://api.bnm.gov.my/
#'
#'
opr <- function() get_bnm_data("/opr")


#' Renminbi
#'
#' This function allows you to ... from the BNM API.
#' @param type "dar" for ... and "fx_forward" for ...
#' @keywords ...
#' @examples
#' renminbi()
#' @source https://api.bnm.gov.my/
#'
#'
#'
renminbi <- function(type = "dar"){
  stopifnot(type %in% c("dar", "fx_forward"))
  paths <- c(dar = "/renminbi-deposit-acceptance-rate",
             fx_forward = "/renminbi-fx-forward-price")
  get_bnm_data(paths[[type]])
}

#' USD Interbank Intraday Rate
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' usd_interbank_intraday_rate()
#' @source https://api.bnm.gov.my/
#'
#'
usd_interbank_intraday_rate <- function(){
  get_bnm_data("/usd-interbank-intraday-rate")
}

#' KL USD Reference Rate
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' kl_usd_reference_rate()
#' @source https://api.bnm.gov.my/
#'
#'
kl_usd_reference_rate <- function(){
  get_bnm_data("/kl-usd-reference-rate")
}
