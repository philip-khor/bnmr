library(bnmr)

test_that("Test opr() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid years
  expect_error(opr(year = "Random String"))
  expect_error(opr(year = 1999))
  expect_error(opr(year = c(1999, 2000)))

})

test_that("Test opr() outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test default year value
  df <- opr()
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

  ## Test single year value
  df <- opr(year = 2020)
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

  ## Test providing two years
  df <- opr(year = c(2019, 2020))
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

})
