test_that("Test kijang_emas() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid date values and types
  expect_error(kijang_emas(year = "Random String", month = 9))
  expect_error(kijang_emas(year = 2020, month = "March"))
  expect_error(kijang_emas(date = "01-02-2020"))

})
