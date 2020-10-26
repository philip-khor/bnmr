test_that("Test base_rate() for incorrect input errors", {

  # Skip if no internet connection, or the bnm site is down.
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()

  ## Test for invalid length of bank_code argument
  expect_error(get_base_rate(bank_code = c("CITIBANK", "BANGKOK")))

  ## Test for invalid SWIFT code in bank_code argument
  expect_error(get_base_rate(bank_code = c("CITBANK")))

})
