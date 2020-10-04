library(bnmr)

test_that("Test exchange_rate() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid session number
  expect_error(exchange_rate(currency = "USD", session = "1131"))

  ## Test for invalid quote value
  expect_error(exchange_rate(currency = "USD", session = "1130", quote = "eur"))

})

test_that("Test exchange_rate() outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for corrected currency code
  df <- exchange_rate(currency = "usd", session = "0900", quote = "rm")
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

  ## Test for quote = "fx"
  df <- exchange_rate(session = "0900", quote = "fx")
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

})
