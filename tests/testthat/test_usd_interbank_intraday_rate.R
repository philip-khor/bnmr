library(bnmr)
library(lubridate)

test_that("Test usd_interbank_intraday_rate() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid date values and types
  expect_error(usd_interbank_intraday_rate(year = "Random String", month = 9))
  expect_error(usd_interbank_intraday_rate(year = 2020, month = "March"))
  expect_error(usd_interbank_intraday_rate(date = "01-02-2020"))

})

test_that("Test usd_interbank_intraday_rate() outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test default values
  df <- usd_interbank_intraday_rate()
  expect_is(df, "list")

  ## Test date argument with a sample date
  df <- usd_interbank_intraday_rate(date = "2020-09-10")
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

  ## Test year and month arguments with a sample year and month
  df <- usd_interbank_intraday_rate(year = 2020, month = 9)
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

})
