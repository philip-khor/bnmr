test_that("Test daily_fx_turnover() for wrong input errors", {

  # Skip if no internet connection, or the bnm site is down.
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()

  ## Test for unused argument error
  expect_error(get_daily_fx_turnover("Random String"))

})
