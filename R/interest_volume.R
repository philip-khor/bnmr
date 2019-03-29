#' Interest Volume
#'
#' This function allows you to ... from the BNM API.
#' @keywords ...
#' @examples
#' interest_volume()
#' @source https://api.bnm.gov.my/
#'
#'
interest_volume <- function() get_bnm_data("/interest-volume")
