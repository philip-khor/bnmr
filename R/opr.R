#' Overnight Policy Rate (OPR)
#'
#' This function allows you to ... from the BNM API.
#' @param year Optional. ...
#' @keywords ...
#' @examples
#' opr()
#' @source https://api.bnm.gov.my/
#'
#'
opr <- function(year) {
  if (missing(year)){
    get_bnm_data("/opr")
  } else {
    if (!(is.numeric(year) & year >= 2000)){
      stop("Only integer values above 2000 accepted for year")
    }
    get_bnm_data(glue("/opr/year/{year}"))
  }
}
