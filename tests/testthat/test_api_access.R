test_that("welcome returns correct name", {

  # Skip if no internet connection, or the bnm site is down.
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()

  expect_equal(bnm_api("/welcome")$content$name,
               "BNM.API")
})
