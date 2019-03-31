.get_monthly_data <- function(stub, date, year, month, ...) {
  get_path <- c(ir = "/interest-rate",
                iv = "/interest-volume",
                iir = "/islamic-interbank-rate",
                ke = "/kijang-emas",
                usdiir = "/usd-interbank-intraday-rate",
                usdkl = "/kl-usd-reference-rate")

  path <- get_path[[stub]]

  if (missing(date)){
    if (missing(month)){
      if (missing(year)){
        get_bnm_data(glue("{path}"),
                     query = list(...))
      } else {
        map_dfr(1:12,
                ~ get_bnm_data(glue("{path}/year/{year}/month/{.}"),
                               query = list(...)))
      }
    } else if (!missing(year)){
      stopifnot(is.numeric(year))
      get_bnm_data(glue("{path}/year/{year}/month/{month}"),
                   query = list(...))
    } else {
      stop("Please provide the year")
    }
  } else if (!missing(year) || !missing(month)){
    warning("Date and year/month combination provided; querying based on date")
    get_bnm_data(glue("{path}/date/{date}"),
                 query = list(...))
  } else {
    get_bnm_data(glue("{path}/date/{date}"),
                 query = list(...))
  }
}

#
# .interest <- function(type,
#                       product = "money_market_operations",
#                       date, year, month){
#   if (missing(date)){
#     if (missing(month)){
#       if (missing(year)){
#         get_bnm_data(glue("/interest-{type}"),
#                      query = list(product = product))
#       } else {
#         map_dfr(1:12,
#                 ~ get_bnm_data(glue("/interest-{type}/year/{year}/month/{.}"),
#                                query = list(product = product)))
#       }
#     } else if (!missing(year)){
#       stopifnot(is.numeric(year))
#       get_bnm_data(glue("/interest-{type}/year/{year}/month/{month}"),
#                    query = list(product = product))
#     } else {
#       stop("Please provide the year")
#     }
#   } else if (!missing(year) || !missing(month)){
#     warning("Date and year/month combination provided; querying based on date")
#     get_bnm_data(glue("/interest-{type}/date/{date}"),
#                  query = list(product = product))
#   } else {
#     get_bnm_data(glue("/interest-{type}/date/{date}"),
#                  query = list(product = product))
#   }
# }

#' Islamic Interbank Rate
#'
#' This function allows you to ... from the BNM API.
#' @param date Character string or ... in ISO-8601 format (YYYY-MM-DD).
#' If specified, return interest volume for the
#' specified date. If left blank, return today's interest volume.
#' @param year,month Year and month as integers.
#' @keywords ...
#' @examples
#' islamic_interbank_rate()
#' @source https://api.bnm.gov.my/
#'
#'
islamic_interbank_rate <- function(date, year, month) {
  .get_monthly_data(stub = "iir",
                    date = date, year = year, month = month)
}

.products <- c("money_market_operations",
              "interbank",
              "overall")

#' Interest Volume
#'
#' This function allows you to ... from the BNM API.
#' @inheritParams islamic_interbank_rate
#' @param product Either "money_market_operations", "interbank" or "overall"
#' @keywords ...
#' @examples
#' interest_volume()
#' @source https://api.bnm.gov.my/
#'

interest_volume <- function(product = "money_market_operations",
                            date, year, month){

  stopifnot(product %in% .products)

  .get_monthly_data(stub = "ir",
                    date = date,
                    year = year,
                    month = month,
                    product = product)
  # .interest(type = "volume",
  #           product = product,
  #           date = date, year = year, month = month)
}

#' Interest Rate
#'
#' This function allows you to ... from the BNM API.
#' @inheritParams interest_volume
#' @keywords ...
#' @examples
#' interest_rate()
#' @source https://api.bnm.gov.my/
#'
#'
#'

interest_rate <- function(product = "money_market_operations",
                          date, year, month){

  stopifnot(product %in% .products)
  .get_monthly_data(stub = "iv",
                    date = date,
                    year = year,
                    month = month,
                    product = product)
  # .interest(type = "rate",
  #           product = product,
  #           date = date, year = year, month = month)

}


#' Kijang Emas
#'
#' This function allows you to ... from the BNM API.
#' @inheritParams islamic_interbank_rate

#' @keywords ...
#' @examples
#' kijang_emas()
#' @source https://api.bnm.gov.my/
#'
#'
kijang_emas <- function(date, year, month){
  .get_monthly_data(stub = "ke",
                    date = date,
                    year = year,
                    month = month)
}

#' USD Interbank Intraday Rate
#'
#' This function allows you to ... from the BNM API.
#' @inheritParams islamic_interbank_rate

#' @keywords ...
#' @examples
#' usd_interbank_intraday_rate()
#' @source https://api.bnm.gov.my/
#'
#'
usd_interbank_intraday_rate <- function(date, year, month){
  .get_monthly_data(stub = "usdiir",
                    date = date,
                    year = year,
                    month = month)
}


#' KL USD Reference Rate
#'
#' This function allows you to ... from the BNM API.
#' @inheritParams islamic_interbank_rate

#' @keywords ...
#' @examples
#' usd_interbank_intraday_rate()
#' @source https://api.bnm.gov.my/
#'
#'

kl_usd_reference_rate <- function(date, year, month){
  .get_monthly_data(stub = "klusd",
                    date = date,
                    year = year,
                    month = month)
}
