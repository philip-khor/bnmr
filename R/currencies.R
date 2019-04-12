#' Renminbi
#'
#' This function allows you to extract indicative CNY/MYR
#' forward prices for trade settlement and RMB deposit acceptance rates
#' from the BNM API.
#' @param type "dar" for Deposit Acceptance Rate and "fx_forward" for FX Forward Prices
#' @keywords ...
#' @examples
#' renminbi()
#' renminbi(type = "dar")
#' renminbi(type = "fx_forward")
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


