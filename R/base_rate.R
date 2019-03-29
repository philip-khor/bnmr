#' Base rate
#'
#' This function allows you to obtain base rate data from the BNM API.
#' @param bank_code ... per https://api.bnm.gov.my/
#' @keywords ...
#' @examples
#' base_rate()
#' @source https://api.bnm.gov.my/
#'

base_rate <- function(bank_code = ""){
  get_bnm_data(glue("/base-rate/{bank_code}"))
}

# write a print method that shows meta?
