#' Get monthly data from endpoints with year/month/date params
#'
#' @importFrom purrr map_dfr
#' @importFrom jsonlite flatten
#' @importFrom rlang list2 qq_show is_scalar_integerish
#' @keywords internal
#' @param reverse TRUE if month comes before year in API
.get_monthly_data <- function(stub,
                              date = NULL,
                              year = NULL,
                              month = NULL,
                              reverse = FALSE,
                              ...) {
  # function should consider length 1 for arguments?
  args <- list(...)

  year_month_stubby <- if (isTRUE(reverse)) {
    "{stub}/month/{month}/year/{year}"
  } else {
    "{stub}/year/{year}/month/{month}"
  }
  if (is_null(date)) {
    if (is_null(month)) {
      if (is_null(year)) {
        get_bnm_data(glue("{stub}"), query = args)
      } else {
        map_dfr(1:12, function(month) {
          Sys.sleep(1)
          flatten(get_bnm_tbl(glue(year_month_stubby), query = args))
        })
      }


    } else if (!is_null(year)) {
      stopifnot(is_scalar_integerish(year) && is_scalar_integerish(month))

      get_bnm_tbl(glue(year_month_stubby), query = args)
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

# EXCLUDE COVERAGE START
.products <- c(
  "money_market_operations",
  "interbank",
  "overall"
)
# EXCLUDE COVERAGE END

#' Interbank money market/deposit rates and volume
#'
#' @description Obtain daily interbank money market rates and volumes of transactions according
#' to tenure (2015 - present) from the BNM API.
#'
#' @name get_interbank_rates
#' @param year,month Year and month as integers. If date, year and month left blank, return today's values.
#' @param date Character string of date with format as defined by RFC 3339, section 5.6
#' (YYYY-MM-DD).
#' If specified, return values for the specified date.
#' @param product One of "money_market_operations", "interbank" or "overall"
#' @keywords rates_and_volumes
#' @details
#' Interbank money market rate: Daily interbank money market rates and volumes of transactions according to tenure. (2015 - present)
#' Interbank money market volume: Daily interbank money market rates and volumes of transactions according to tenure. (2015 - present)
#' Islamic interbank deposit rate: Daily weighted average of Islamic interbank deposit rates for various tenures. (Jan 2015-present)
#' @examples
#' \dontrun{get_interest_rate()}
#' get_interest_rate(date = "2018-01-01")
#' get_interest_rate(year = 2016, month = 2)
#' get_interest_rate(product = "overall", year = 2016, month = 2)
#' \dontrun{get_interest_volume()}
#' get_interest_volume(date = "2018-01-01")
#' get_interest_volume(year = 2016, month = 2)
#' get_interest_volume(product = "overall", year = 2016, month = 2)
#' \dontrun{get_islamic_interbank_rate()}
#' get_islamic_interbank_rate(date = "2018-01-01")
#' get_islamic_interbank_rate(year = 2016, month = 2)
#' @source https://apikijangportal.bnm.gov.my/
NULL

#' @describeIn get_interbank_rates Islamic interbank deposit rate
#' @export
get_islamic_interbank_rate <- function(date = NULL,
                                       year = NULL,
                                       month = NULL) {
  .get_monthly_data(
    stub = "/islamic-interbank-rate",
    date = date,
    year = year,
    month = month
  )
}

#' @describeIn get_interbank_rates Interbank money market volume
#' @export
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
}

#' @describeIn get_interbank_rates Interbank money market rate
#' @export
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
}

#' Kijang Emas
#'
#' Obtain daily trading prices
#' of Malaysia gold bullion coin from the BNM API.
#' @inheritParams get_interbank_rates
#' @keywords rates_and_volumes
#' @export
#' @examples
#' \dontrun{get_kijang_emas()}
#' get_kijang_emas(date = "2020-09-01")
#' get_kijang_emas(year = 2016, month = 2)
#' @source https://apikijangportal.bnm.gov.my/
get_kijang_emas <- function(date = NULL,
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

#' Interbank forex rates
#'
#' @name forex_rates
#' @inheritParams get_interbank_rates
#' @keywords rates_and_volumes
#' @details
#' USD Interbank Intraday Rate: Obtain USD/MYR interbank intraday highest and
#' lowest rate from the BNM API. Rates are obtained from the best U.S. dollar
#' against Malaysian ringgit interbank highest and lowest dealt rates by
#' commercial banks on the specific date.
#' KL USD Reference Rate: Obtain a reference rate that is computed based on weighted
#' average volume of the interbank USD/MYR FX spot rate transacted by
#' the domestic financial institutions and published
#' daily at 3:30 p.m from the BNM API.
#' @examples
#' \dontrun{get_usd_interbank_intraday_rate()}
#' get_usd_interbank_intraday_rate(date = "2018-01-03")
#' get_usd_interbank_intraday_rate(year = 2016, month = 2)
#' \dontrun{get_kl_usd_reference_rate()}
#' get_kl_usd_reference_rate(date = "2018-01-03")
#' get_kl_usd_reference_rate(year = 2016, month = 2)
#' @source https://apikijangportal.bnm.gov.my/
NULL

#' @describeIn forex_rates USD Interbank Intraday Rate
#' @export
get_usd_interbank_intraday_rate <- function(date = NULL,
                                            year = NULL,
                                            month = NULL) {
  .get_monthly_data(
    stub = "/usd-interbank-intraday-rate",
    date = date,
    year = year,
    month = month
  )
}

#' @describeIn forex_rates KL USD Reference Rate
#' @export
get_kl_usd_reference_rate <- function(date = NULL,
                                      year = NULL,
                                      month = NULL) {
  .get_monthly_data(
    stub = "/kl-usd-reference-rate",
    date = date,
    year = year,
    month = month
  )
}

#' Malaysia Overnight Rate - I
#' @inheritParams get_interbank_rates
#' @keywords rates_and_volumes
#' @export
#' @examples
#' \dontrun{get_overnight_rate()}
#' get_overnight_rate(date = "2022-05-05")
#' get_overnight_rate(year = 2022, month = 5)
#' @source https://apikijangportal.bnm.gov.my/
get_overnight_rate <- function(date = NULL,
                               year = NULL,
                               month = NULL) {
  .get_monthly_data(
    stub = "/my-overnight-rate-i",
    date = date,
    year = year,
    month = month,
    reverse = TRUE
  )
}


