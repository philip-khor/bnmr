#' Base rate
#'
#' This function allows you to obtain base rate data from the BNM API.
#' @param bank_code ... per https://api.bnm.gov.my/
#' @keywords ...
#' @examples
#' base_rate()
#' @source https://api.bnm.gov.my/
#'

base_rate <- function(bank_code){

  # Checking if any argument provided to the function
  if (!missing(bank_code)) {
    stopifnot(length(bank_code) == 1)
    # Handle the exception for invalid params value
    tryCatch(get_bnm_data(glue("/base-rate/{bank_code}")),
             error = function(e){
             e$message <-
               paste0(e$message, bank_code, " is not a valid SWIFT code.")
               stop(e)
             })
  }
  # If no argument provided, return all the base rate
  else get_bnm_data("/base-rate/")
}

# write a print method that shows meta?
