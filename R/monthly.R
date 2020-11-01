#' @importFrom purrr map_dfr
#' @importFrom jsonlite flatten
#' @importFrom rlang list2 qq_show is_scalar_integerish

.get_monthly_data <- function(stub,
                              date = NULL,
                              year = NULL,
                              month = NULL, ...) {

  # function should consider length 1 for arguments?
  args <- list(...)


  if (is_null(date)) {
    if (is_null(month)) {
      if (is_null(year)) {
        get_bnm_data(glue("{stub}"), query = args)
      } else {
        map_dfr(1:12, function(x) {
          Sys.sleep(1)
          flatten(get_bnm_tbl(glue("{stub}/year/{year}/month/{x}"),
                              query = args))
            }
          )
      }


    } else if (!is_null(year)) {
      stopifnot(is_scalar_integerish(year) && is_scalar_integerish(month))

      get_bnm_tbl(glue("{stub}/year/{year}/month/{month}"),
                   query = args
      )
    } else {
      stop("Please provide the year")
    }
  } else {
    if (!is_null(year) || !is_null(month)) {
      warning("Date and year/month combination provided; querying based on date")
      }
    get_bnm_tbl(glue("{stub}/date/{date}"), query = args)
  }
}



#' Islamic Interbank Rate
#'
#' This function allows you to obtain daily weighted average of Islamic
#' interbank deposit rates for various tenures. (Jan 2015-present)
#' from the BNM API.
#' @param date Character string of date with format as defined by RFC 3339, section 5.6
#' (YYYY-MM-DD).
#' If specified, return values for the specified date.
#' @param year,month Year and month as integers. If date, year and month left blank, return today's values.
#' @keywords api
#' @export
#' @examples
#' \dontrun{islamic_interbank_rate()}
#' get_islamic_interbank_rate(date = "2018-01-01")
#' get_islamic_interbank_rate(year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'
get_islamic_interbank_rate <- function(date = NULL,
                                       year = NULL,
                                       month = NULL) {
  .get_monthly_data(
    stub = "/islamic-interbank-rate",
    date = date, year = year, month = month
  )
}


#' Islamic Interbank Rate
#'
#' Deprecated. Use \code{\link{get_islamic_interbank_rate}}
#' @inheritParams get_islamic_interbank_rate
#'
#' @export
islamic_interbank_rate <- function(date = NULL,
                                   year = NULL,
                                   month = NULL) {
  .Deprecated("get_islamic_interbank_rate")
  get_islamic_interbank_rate(
    date = date,
    year = year,
    month = month
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
#' @inheritParams get_islamic_interbank_rate
#' @param product Either "money_market_operations", "interbank" or "overall"
#' @keywords api
#' @export
#' @examples
#' \dontrun{get_interest_volume()}
#' get_interest_volume(date = "2018-01-01")
#' get_interest_volume(year = 2016, month = 2)
#' get_interest_volume(product = "overall", year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'

get_interest_volume <- function(product = "money_market_operations",
                            date = NULL,
                            year = NULL,
                            month = NULL) {
  stopifnot(product %in% .products)

  .get_monthly_data(
    stub = "/interest-volume",
    date = date,
    year = year,
    month = month,
    product = product
  )
  # .interest(type = "volume",
  #           product = product,
  #           date = date, year = year, month = month)
}

#' Interest Volume
#'
#' Deprecated. Use \code{\link{get_interest_volume}}
#' @inheritParams get_interest_volume
#'
#' @export
interest_volume <- function(product = "money_market_operations",
                            date = NULL,
                            year = NULL,
                            month = NULL) {
  .Deprecated("get_interest_volume")
  get_interest_volume(
    product = product,
    date = date,
    year = year,
    month = month
  )
}

#' Interest Rate
#'
#' This function allows you to obtain daily interbank money
#' market rates and volumes of transactions according to
#' tenure. (2015 - present) from the BNM API.
#' @inheritParams get_interest_volume
#' @keywords api
#' @export
#' @examples
#' \dontrun{get_interest_rate()}
#' get_interest_rate(date = "2018-01-01")
#' get_interest_rate(year = 2016, month = 2)
#' get_interest_rate(product = "overall", year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'
#'

get_interest_rate <- function(product = "money_market_operations",
                          date = NULL,
                          year = NULL,
                          month = NULL) {
  stopifnot(product %in% .products)
  .get_monthly_data(
    stub = "/interest-rate",
    date = date,
    year = year,
    month = month,
    product = product
  )
  # .interest(type = "rate",
  #           product = product,
  #           date = date, year = year, month = month)
}

#' Interest Volume
#'
#' Deprecated. Use \code{\link{get_interest_rate}}
#' @inheritParams get_interest_rate
#'
#' @export
interest_rate <- function(product = "money_market_operations",
                          date = NULL,
                          year = NULL,
                          month = NULL) {
  .Deprecated("get_interest_rate")
  get_interest_rate(
    product = product,
    date = date,
    year = year,
    month = month
  )
}
#' Kijang Emas
#'
#' This function allows you to obtain daily trading prices
#' of Malaysia gold bullion coin from the BNM API.
#' @inheritParams islamic_interbank_rate

#' @keywords api
#' @export
#' @examples
#' \dontrun{kijang_emas()}
#' kijang_emas(date = "2020-09-01")
#' kijang_emas(year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'
kijang_emas <- function(date = NULL,
                        year = NULL,
                        month = NULL) {
  # if date does not work most likely there's
  # just no records for that date. write tryCatch here.
  .get_monthly_data(
    stub = "/kijang-emas",
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
#' @keywords api
#' @export
#' @examples
#' \dontrun{usd_interbank_intraday_rate()}
#' usd_interbank_intraday_rate(date = "2018-01-03")
#' usd_interbank_intraday_rate(year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'
usd_interbank_intraday_rate <- function(date = NULL,
                                        year = NULL,
                                        month = NULL) {
  .get_monthly_data(
    stub = "/usd-interbank-intraday-rate",
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
#' @keywords api
#' @export
#' @examples
#' \dontrun{kl_usd_reference_rate()}
#' kl_usd_reference_rate(date = "2018-01-03")
#' kl_usd_reference_rate(year = 2016, month = 2)
#' @source https://api.bnm.gov.my/
#'
#'

kl_usd_reference_rate <- function(date = NULL,
                                  year = NULL,
                                  month = NULL) {
  .get_monthly_data(
    stub = "/kl-usd-reference-rate",
    date = date,
    year = year,
    month = month
  )
}
