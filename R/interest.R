.interest <- function(type,
                      product = "money_market_operations",
                      date, year, month){
  if (missing(date)){
    if (missing(month)){
      if (missing(year)){
        get_bnm_data(glue("/interest-{type}?product={product}"))
      } else {
        map_dfr(1:12,
                ~ get_bnm_data(glue("/interest-{type}/year/{year}/month/{.}?product={product}")))
      }
    } else if (!missing(year)){
      stopifnot(is.numeric(year))
      get_bnm_data(glue("/interest-{type}/year/{year}/month/{month}?product={product}"))
    } else {
      stop("Please provide the year")
    }
  } else if (!missing(year) || !missing(month)){
    warning("Date and year/month combination provided; querying based on date")
    get_bnm_data(glue("/interest-{type}/date/{date}?product={product}"))
  } else {
    get_bnm_data(glue("/interest-{type}/date/{date}?product={product}"))
  }
}

#' Interest Volume
#'
#' This function allows you to ... from the BNM API.
#' @param product Either "money_market_operations", "interbank" or "overall"
#' @param date Character string or ... in ISO-8601 format (YYYY-MM-DD).
#' If specified, return interest volume for the
#' specified date. If left blank, return today's interest volume.
#' @param year,month Year and month as integers.
#' @keywords ...
#' @examples
#' interest_volume()
#' @source https://api.bnm.gov.my/
#'

interest_volume <- function(product = "money_market_operations",
                            date, year, month){
  .interest(type = "volume",
            product = product,
            date = date, year = year, month = month)
}

#' Interest Rate
#'
#' This function allows you to ... from the BNM API.
#' @param product ...
#' @param date ...
#' @param year,month ...
#' @keywords ...
#' @examples
#' interest_rate()
#' @source https://api.bnm.gov.my/
#'
#'
#'

interest_rate <- function(product = "money_market_operations",
                          date, year, month){
  .interest(type = "rate",
            product = product,
            date = date, year = year, month = month)

}
