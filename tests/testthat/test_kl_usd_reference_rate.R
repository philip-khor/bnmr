test_that("Test kl_usd_reference_rate() for wrong input errors", {

  # Skip if no internet connection, or the bnm site is down.
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()

  ## Test for invalid date values and types
  expect_error(kl_usd_reference_rate(year = "Random String", month = 9))
  expect_error(kl_usd_reference_rate(year = 2020, month = "March"))
  expect_error(kl_usd_reference_rate(date = "01-02-2020"))

})
