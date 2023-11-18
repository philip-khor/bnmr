#' Interbank Swap
#'
#' This function allows you to obtain daily interbank swap
#' volume by tenure from the BNM API.
#' @keywords rates_and_volumes
#' @examples
#' get_interbank_swap()
#' @export
#' @source https://apikijangportal.bnm.gov.my/
#'
#'
get_interbank_swap <- function() get_bnm_data("/interbank-swap")

