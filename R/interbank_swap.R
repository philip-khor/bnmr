#' Interbank Swap
#'
#' This function allows you to obtain daily interbank swap
#' volume by tenure from the BNM API.
#' @keywords api
#' @examples
#' get_interbank_swap()
#' @export
#' @source https://api.bnm.gov.my/
#'
#'
get_interbank_swap <- function() get_bnm_tbl("/interbank-swap")

# EXCLUDE COVERAGE START
#' Interbank Swap
#'
#' Deprecated. Use \code{\link{get_interbank_swap}}
#'
#' @export
interbank_swap <- function() {
  .Deprecated("get_interbank_swap")
  get_interbank_swap()
}
# EXCLUDE COVERAGE END
