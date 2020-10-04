library(bnmr)

test_that("Test daily_fx_turnover() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for unused argument error
  expect_error(daily_fx_turnover("Random String"))

})

test_that("Test daily_fx_turnover() outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  df <- daily_fx_turnover()
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

})
