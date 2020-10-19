test_that("Test exchange_rate() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid session number
  expect_error(get_exchange_rate(currency = "USD", session = "1131"))

  ## Test for invalid quote value
  expect_error(get_exchange_rate(currency = "USD", session = "1130", quote = "eur"))

})
