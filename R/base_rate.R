#' Base Rate
#'
#' This function allows you to obtain current Base Rates and
#' Base Lending Rates for retail loans or financing facilities
#' and Indicative Effective Lending Rates for a standard housing
#' loan/home financing offered by financial institutions
#' from the BNM API.
#' @param bank_code 8 characters of SWIFT code per https://api.bnm.gov.my/
#' @keywords api
#' @examples
#' get_base_rate()
#' @export
#' @import lubridate
#' @importFrom glue glue
#' @importFrom rlang is_null
#' @source https://api.bnm.gov.my/
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


#' @templateVar old base_rate
#' @templateVar new get_base_rate
#' @templateVar fun base_rate
#' @template template-depr_fun
#'
#' @export
base_rate <- function(bank_code = NULL) {
  .Deprecated(new = "get_base_rate")
  get_base_rate(bank_code = bank_code)
}

# write a print method that shows meta?
