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
