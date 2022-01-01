test_that("Test get_opr() for wrong input errors", {

  # Skip if no internet connection, or the bnm site is down.
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()

  ## Test for invalid years
  expect_error(get_opr(year = "Random String"))
  expect_error(get_opr(year = 1999))
  expect_error(get_opr(year = c(1999, 2000)))

})
