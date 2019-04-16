#' Overnight Policy Rate (OPR)
#'
#' This function allows you to ... from the BNM API.
#' @param year Optional. ...
#' @keywords opr
#' @examples
#' opr()
#' opr(2018:2019)
#' @source https://api.bnm.gov.my/
#'
#'
opr <- function(year) {
  if (missing(year)) {
    get_bnm_data("/opr")
  } else {
    if (!(is.numeric(year) && all(year >= 2000))) {
      stop("Only integer values above 2000 accepted for year")
    }
    if (length(year) == 1) get_bnm_data(glue("/opr/year/{year}"))
    else {
      map_dfr(year, function(x) {
        Sys.sleep(2)
        get_bnm_data(glue("/opr/year/{x}"))
      })
      }
  }
}
