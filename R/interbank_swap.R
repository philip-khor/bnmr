#' Interbank Swap
#'
#' This function allows you to obtain daily interbank swap
#' volume by tenure from the BNM API.
#' @keywords ...
#' @examples
#' interbank_swap()
#' @export
#' @source https://api.bnm.gov.my/
#'
#'
interbank_swap <- function() get_bnm_tbl("/interbank-swap")
