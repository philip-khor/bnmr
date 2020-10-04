library(bnmr)
library(lubridate)

test_that("Test interest_rate() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid date values and types in various combinations
  expect_error(interest_rate(year = "Random String", month = 9))
  expect_error(interest_rate(year = 2020, month = "March"))
  expect_error(interest_rate(date = "01-02-2020"))

  expect_error(interest_rate(product = "interbank", year = "Random String", month = 9))
  expect_error(interest_rate(product = "interbank", year = 2020, month = "March"))
  expect_error(interest_rate(product = "interbank", date = "01-02-2020"))

  expect_error(interest_rate(product = "overall", year = "Random String", month = 9))
  expect_error(interest_rate(product = "overall", year = 2020, month = "March"))
  expect_error(interest_rate(product = "overall", date = "01-02-2020"))

  expect_error(interest_rate(product = "Random String", year = 2020, month = 9))
  expect_error(interest_rate(product = "Random String", date = "2020-09-10"))

})

test_that("Test interest_rate() outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test default values
  ## Currently results in bad API request
  #df <- interest_rate()
  #expect_is(df, "data.frame")
  #expect_is(df, "tbl")

  ## Test date argument with sample date
  df <- interest_rate(date = "2020-09-10")
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

  ## Test year and month arguments with present year and month
  df <- interest_rate(year = year(today()), month = month(today()))
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

})
