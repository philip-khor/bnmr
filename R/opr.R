#' Overnight Policy Rate (OPR)
#'
#' This function allows you to obtain data on Overnight Policy Rate (OPR)
#' decided by the Monetary Policy Committee from the BNM API.
#'
#' This function has initial support for vectorisation, i.e. returning a
#' single tibble given a vector of years as arguments.
#'
#' @param year Optional. Integer value above 2000. Series of
#' integer values also supported (experimental).
#' @keywords rates_and_volumes
#' @importFrom purrr map_dfr
#' @importFrom rlang is_integerish
#' @export
#' @examples
#' \dontrun{get_opr()}
#' get_opr(2018:2019)
#' @source https://apikijangportal.bnm.gov.my/
#'
#'
get_opr <- function(year = NULL) {
  if (is_null(year)) {
    as_tibble(get_bnm_data("/opr"))
  } else {
    if (!(is_integerish(year) && all(year >= 2000))) {
      stop("Only integer values above 2000 accepted for year")
    }
    if (length(year) == 1) {
      get_bnm_tbl(glue("/opr/year/{year}"))
    } else {
      map_dfr(glue("/opr/year/{year}"), function(x) {
        Sys.sleep(1)
        get_bnm_tbl(x)
      })
    }
  }
}
