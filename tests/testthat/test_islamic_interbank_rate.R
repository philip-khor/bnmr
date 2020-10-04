library(bnmr)
library(lubridate)

test_that("Test islamic_interbank_rate() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid date values and types
  expect_error(islamic_interbank_rate(year = "Random String", month = 9))
  expect_error(islamic_interbank_rate(year = 2020, month = "March"))
  expect_error(islamic_interbank_rate(date = "01-02-2020"))

})

test_that("Test islamic_interbank_rate() outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test default values
  df <- islamic_interbank_rate()
  expect_is(df, "list")

  ## Test date argument with today's date
  df <- islamic_interbank_rate(date = today())
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

  ## Test year and month arguments with present year and month
  df <- islamic_interbank_rate(year = year(today()), month = month(today()))
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

})
