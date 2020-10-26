test_that("Test renminbi() for incorrect input errors", {

  # Skip if no internet connection, or the bnm site is down.
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()

  ## Test for invalid type value
  expect_error(renminbi(type = "dax"))
  expect_error(renminbi(type = "fy_forward"))

})
