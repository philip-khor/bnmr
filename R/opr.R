#' Overnight Policy Rate (OPR)
#'
#' This function allows you to obtain data on Overnight Policy Rate (OPR)
#' decided by the Monetary Policy Committee from the BNM API.
#' @param year Optional. Integer value above 2000. Series of
#' integer values also supported (experimental).
#' @keywords opr
#' @importFrom purrr map_dfr
#' @export
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
    if (length(year) == 1) {
      get_bnm_data(glue("/opr/year/{year}"))
    } else {
      map_dfr(year, function(x) {
        Sys.sleep(1)
        get_bnm_data(glue("/opr/year/{x}"))
      })
    }
  }
}
