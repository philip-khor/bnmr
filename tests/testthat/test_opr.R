test_that("Test opr() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid years
  expect_error(opr(year = "Random String"))
  expect_error(opr(year = 1999))
  expect_error(opr(year = c(1999, 2000)))

})
