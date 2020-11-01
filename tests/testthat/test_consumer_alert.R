test_that("Test consumer_alert() for incorrect input errors", {

  # Skip if no internet connection, or the bnm site is down.
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()

  ## Test for unused argument
  expect_error(get_consumer_alert("Random Strings"))

})
