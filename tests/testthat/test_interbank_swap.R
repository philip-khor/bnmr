test_that("Test interbank_swap() for wrong input errors", {

  # Skip if no internet connection, or the bnm site is down.
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()

  ## Test for invalid argument
  expect_error(get_interbank_swap("Random String"))

})
