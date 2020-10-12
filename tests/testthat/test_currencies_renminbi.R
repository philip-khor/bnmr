test_that("Test renminbi() for incorrect input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid type value
  expect_error(renminbi(type = "dax"))
  expect_error(renminbi(type = "fy_forward"))

})
