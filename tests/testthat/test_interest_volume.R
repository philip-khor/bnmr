library(bnmr)
library(lubridate)

test_that("Test interest_volume() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid date values and types in various combinations
  expect_error(interest_volume(year = "Random String", month = 9))
  expect_error(interest_volume(year = 2020, month = "March"))
  expect_error(interest_volume(date = "01-02-2020"))

  expect_error(interest_volume(product = "interbank", year = "Random String", month = 9))
  expect_error(interest_volume(product = "interbank", year = 2020, month = "March"))
  expect_error(interest_volume(product = "interbank", date = "01-02-2020"))

  expect_error(interest_volume(product = "overall", year = "Random String", month = 9))
  expect_error(interest_volume(product = "overall", year = 2020, month = "March"))
  expect_error(interest_volume(product = "overall", date = "01-02-2020"))

  expect_error(interest_volume(product = "Random String", year = 2020, month = 9))
  expect_error(interest_volume(product = "Random String", date = "2020-09-10"))

})

test_that("Test interest_volume() outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test default values
  ## Currently results in bad API request
  #df <- interest_volume()
  #expect_is(df, "data.frame")
  #expect_is(df, "tbl")

  ## Test date argument with sample date
  df <- interest_volume(date = "2020-09-10")
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

  ## Test year and month arguments with present year and month
  df <- interest_volume(year = year(today()), month = month(today()))
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

})
