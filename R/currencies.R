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
