.interest <- function(type, date, year, month){

  # stopifnot(type %in% c("volume", "rate"),
  #           is.numeric(year),
  #           is.numeric(month),
  #           month <= 12)

  if (missing(date)){
    if (missing(month)){
      if (missing(year)){
        get_bnm_data(glue("/interest-{type}"))
      } else {
        map_dfr(1:12, ~ get_bnm_data(glue("/interest-{type}/year/{year}/month/{.}")))
      }
    } else if (!missing(year)){
      stopifnot(is.numeric(year))
      get_bnm_data(glue("/interest-{type}/year/{year}/month/{month}"))
    } else {
      stop("Please provide the year")
    }
  } else if (!missing(year) || !missing(month)){
    warning("Date and year/month combination provided; querying based on date")
    get_bnm_data(glue("/interest-{type}/date/{date}"))
  } else {
    get_bnm_data(glue("/interest-{type}/date/{date}"))
  }
}

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

interest_volume <- function(date, year, month){
  .interest(type = "volume", date = date, year = year, month = month)
}

#' Interest Rate
#'
#' This function allows you to ... from the BNM API.
#' @param date ...
#' @param year,month ...
#' @keywords ...
#' @examples
#' interest_rate()
#' @source https://api.bnm.gov.my/
#'
#'
#'
interest_rate <- function(date, year, month){
  .interest(type = "rate", date = date, year = year, month = month)
}
#
# interest_volume <- function(date, year, month){
#
#   stopifnot(is.numeric(year), is.numeric(month), month <= 12)
#
#   if (missing(date)){
#     if (missing(month)){
#       if (missing(year)){
#         get_bnm_data("/interest-volume")
#       } else {
#         map_dfr(1:12, ~ get_bnm_data(glue("/interest-volume/year/{year}/month/{.}")))
#       }
#     } else if (!missing(year)){
#       get_bnm_data(glue("/interest-volume/year/{year}/month/{month}"))
#     } else {
#       warning("Please provide the year")
#     }
#   } else if (!missing(year) || !missing(month)){
#     warning("Date and year/month combination provided; querying based on date")
#     get_bnm_data(glue("/interest-volume/date/{date}"))
#   } else {
#     get_bnm_data(glue("/interest-volume/date/{date}"))
#   }
# }

# interest_volume <- function(date, year, month) {
#   if (missing(date) & missing(year) & missing(month)){
#     get_bnm_data("/interest-volume")
#   } else if (missing(month) & !missing(year)){
#     # obtain for entire year
#     map_dfr(1:12, ~ get_bnm_data(glue("/interest-volume/year/{year}/month/{.}")))
#   } else if(!(missing(year) & missing(month))){
#     get_bnm_data(glue("/interest-volume/year/{year}/month/{month}"))
#   } else {
#     # add check to ensure in ISO-8601 format
#     get_bnm_data(glue("/interest-volume/date/{date}"))
#   }
# }
