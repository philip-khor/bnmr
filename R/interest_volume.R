#' Interest Volume
#'
#' This function allows you to ... from the BNM API.
#' @param date Character string or ... in ISO-8601 format (YYYY-MM-DD).
#' If specified, return interest volume for the
#' specified date. If left blank, return today's interest volume.
#' @param year,month Year and month as integers.
#' @keywords ...
#' @examples
#' interest_volume()
#' @source https://api.bnm.gov.my/
#'
#'

interest_volume <- function(date, year, month) {
  if(missing(date) & missing(year) & missing(month)){
    get_bnm_data("/interest-volume")
  } else if (missing(month) & !missing(year)){
    map_dfr(1:12, ~ get_bnm_data(glue("/interest-volume/year/{year}/month/{.}")))
  } else if(!(missing(year) & missing(month))){
    get_bnm_data(glue("/interest-volume/year/{year}/month/{month}"))
  }  else {
    # add check to ensure in ISO-8601 format
    get_bnm_data(glue("/interest-volume/date/{date}"))
  }
}
