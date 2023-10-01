#' Financing Applied
#'

#' @keywords financial_inclusion api
#' @examples
#' get_financing_applied()
#' @export
#' @source https://apikijangportal.bnm.gov.my/
#'
#'
get_financing_applied <- function(year = NULL) {
  path <- "/financial_inclusion/1.11"
  if (!is_null(year)) {
    assertthat::is.count(year)
    path <- paste0(path, "/", as.character(year))
  }
  get_bnm_tbl(path)
}

#' Financing Approved
#'

#' @keywords financial_inclusion api
#' @examples
#' get_financing_approved()
#' @export
#' @source https://apikijangportal.bnm.gov.my/
#'
#'
get_financing_approved <- function(year = NULL) {
  path <- "/financial_inclusion/1.12"
  if (!is_null(year)) {
    assertthat::is.count(year)
    path <- paste0(path, "/", as.character(year))
  }
  get_bnm_tbl(path)
}
