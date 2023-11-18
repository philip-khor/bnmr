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
#' @importFrom purrr map list_rbind
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
      map(glue("/opr/year/{year}"), function(x) {
        Sys.sleep(1)
        get_bnm_tbl(x)
      }) |>
        list_rbind()
    }
  }
}

#' Base Rates/BLR/Effective LR
#'
#' This function allows you to obtain current Base Rates and
#' Base Lending Rates for retail loans or financing facilities
#' and Indicative Effective Lending Rates for a standard housing
#' loan/home financing offered by financial institutions
#' from the BNM API.
#' @param bank_code 8 characters of SWIFT code per https://apikijangportal.bnm.gov.my/
#' @keywords rates_and_volumes api
#' @examples
#' get_base_rate()
#' @export
#' @import lubridate
#' @importFrom glue glue
#' @importFrom rlang is_null
#' @source https://apikijangportal.bnm.gov.my/
#'

get_base_rate <- function(bank_code = NULL) {
  # Checking if any argument provided to the function
  if (!is_null(bank_code)) {
    stopifnot(length(bank_code) == 1)
    # Handle the exception for invalid params value
    tryCatch(as_tibble(get_bnm_data(glue("/base-rate/{bank_code}"))),
             error = function(e) {
               e$message <-
                 paste0(e$message, bank_code, " is not a valid SWIFT code.")
               stop(e)
             }
    )
  }
  # If no argument provided, return all the base rate
  else {
    get_bnm_tbl("/base-rate/")
  }
}

