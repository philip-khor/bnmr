#' @importFrom purrr map_dfr

.get_monthly_data <- function(stub, date, year, month, ...) {
  get_path <- c(
    ir = "/interest-rate",
    iv = "/interest-volume",
    iir = "/islamic-interbank-rate",
    ke = "/kijang-emas",
    usdiir = "/usd-interbank-intraday-rate",
    klusd = "/kl-usd-reference-rate"
  )

  path <- get_path[[stub]]

  # function should consider length 1 for arguments?
  if (missing(date)) {
    if (missing(month)) {
      if (missing(year)) {
        get_bnm_data(glue("{path}"),
          query = list(...)
        )
      } else {
        map_dfr(
          1:12,
          ~ get_bnm_data(glue("{path}/year/{year}/month/{.}"),
            query = list(...)
          )
        )
      }
    } else if (!missing(year)) {
      stopifnot(is.numeric(year))
      get_bnm_data(glue("{path}/year/{year}/month/{month}"),
        query = list(...)
      )
    } else {
      stop("Please provide the year")
    }
  } else if (!missing(year) || !missing(month)) {
    warning("Date and year/month combination provided; querying based on date")
    get_bnm_data(glue("{path}/date/{date}"),
      query = list(...)
    )
  } else {
    get_bnm_data(glue("{path}/date/{date}"),
      query = list(...)
    )
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
#' This function allows you to obtain daily weighted average of Islamic
#' interbank deposit rates for various tenures. (Jan 2015-present)
#' from the BNM API.
#' @param date Character string of date with format as defined by RFC 3339, section 5.6
#' (YYYY-MM-DD).
#' If specified, return values for the specified date.
#' @param year,month Year and month as integers. If date, year and month left blank, return today's values.
#' @keywords ...
#' @export
#' @examples
#' islamic_interbank_rate()
#' islamic_interbank_rate(date = "2018-01-01")
#' islamic_interbank_rate(year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'
islamic_interbank_rate <- function(date, year, month) {
  .get_monthly_data(
    stub = "iir",
    date = date, year = year, month = month
  )
}

.products <- c(
  "money_market_operations",
  "interbank",
  "overall"
)

#' Interest Volume
#'
#' This function allows you to obtain daily interbank money
#' market rates and volumes of transactions according to tenure.
#' (2015 - present) from the BNM API.
#' @inheritParams islamic_interbank_rate
#' @param product Either "money_market_operations", "interbank" or "overall"
#' @keywords ...
#' @export
#' @examples
#' interest_volume()
#' interest_volume(date = "2018-01-01")
#' interest_volume(year = 2016, month = 2)
#' interest_volume(product = "overall", year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'

interest_volume <- function(product = "money_market_operations",
                            date, year, month) {
  stopifnot(product %in% .products)

  .get_monthly_data(
    stub = "iv",
    date = date,
    year = year,
    month = month,
    product = product
  )
  # .interest(type = "volume",
  #           product = product,
  #           date = date, year = year, month = month)
}

#' Interest Rate
#'
#' This function allows you to obtain daily interbank money
#' market rates and volumes of transactions according to
#' tenure. (2015 - present) from the BNM API.
#' @inheritParams interest_volume
#' @keywords ...
#' @export
#' @examples
#' interest_rate()
#' interest_rate(date = "2018-01-01")
#' interest_rate(year = 2016, month = 2)
#' interest_rate(product = "overall", year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'
#'

interest_rate <- function(product = "money_market_operations",
                          date, year, month) {
  stopifnot(product %in% .products)
  .get_monthly_data(
    stub = "ir",
    date = date,
    year = year,
    month = month,
    product = product
  )
  # .interest(type = "rate",
  #           product = product,
  #           date = date, year = year, month = month)
}


#' Kijang Emas
#'
#' This function allows you to obtain daily trading prices
#' of Malaysia gold bullion coin from the BNM API.
#' @inheritParams islamic_interbank_rate

#' @keywords ...
#' @export
#' @examples
#' kijang_emas()
#' kijang_emas(date = "2018-01-03")
#' kijang_emas(year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'
kijang_emas <- function(date, year, month) {
  # if date does not work most likely there's
  # just no records for that date. write tryCatch here.
  .get_monthly_data(
    stub = "ke",
    date = date,
    year = year,
    month = month
  )
}

#' USD Interbank Intraday Rate
#'
#' This function allows you to obtain USD/MYR
#' interbank intraday highest and lowest rate from the BNM API.
#' Rates are obtained from the best U.S. dollar
#' against Malaysian ringgit interbank highest
#' and lowest dealt rates by commercial banks on the specific date.
#' @inheritParams islamic_interbank_rate
#' @keywords ...
#' @export
#' @examples
#' usd_interbank_intraday_rate()
#' usd_interbank_intraday_rate(date = "2018-01-03")
#' usd_interbank_intraday_rate(year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'
usd_interbank_intraday_rate <- function(date, year, month) {
  .get_monthly_data(
    stub = "usdiir",
    date = date,
    year = year,
    month = month
  )
}


#' KL USD Reference Rate
#'
#' This function allows you to obtain a reference rate
#' that is computed based on weighted average volume
#' of the interbank USD/MYR FX spot rate transacted by
#' the domestic financial institutions and published
#' daily at 3:30 p.m from the BNM API.
#' @inheritParams islamic_interbank_rate
#' @keywords ...
#' @export
#' @examples
#' kl_usd_reference_rate()
#' kl_usd_reference_rate(date = "2018-01-03")
#' kl_usd_reference_rate(year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'

kl_usd_reference_rate <- function(date, year, month) {
  .get_monthly_data(
    stub = "klusd",
    date = date,
    year = year,
    month = month
  )
}
