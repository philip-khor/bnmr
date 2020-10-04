library(bnmr)

test_that("Test kijang_emas() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid date values and types
  expect_error(kijang_emas(year = "Random String", month = 9))
  expect_error(kijang_emas(year = 2020, month = "March"))
  expect_error(kijang_emas(date = "01-02-2020"))

})

test_that("Test kijang_emas() outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test default values
  df <- kijang_emas()
  expect_is(df, "list")

  ## Test date argument with a sample date
  df <- kijang_emas(date = "2020-09-10")
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

  ## Test year and month arguments with a sample year and month
  df <- kijang_emas(year = 2020, month = 9)
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

})
