#' Financial Inclusion
#'
#' @name financial_inclusion
#' @keywords financial_inclusion api
#' @examples
#' get_financing_applied()
#' get_financing_approved()
#' @param year year
#' @source https://apikijangportal.bnm.gov.my/
#'
NULL

#' @describeIn financial_inclusion Financing Applied
#' @export
get_financing_applied <- function(year = NULL) {
  path <- "/financial_inclusion/1.11"
  if (!is_null(year)) {
    assertthat::is.count(year)
    path <- paste0(path, "/", as.character(year))
  }
  get_bnm_data(path)
}

#' @describeIn financial_inclusion Financing Approved
#' @export
get_financing_approved <- function(year = NULL) {
  path <- "/financial_inclusion/1.12"
  if (!is_null(year)) {
    assertthat::is.count(year)
    path <- paste0(path, "/", as.character(year))
  }
  get_bnm_data(path)
}
