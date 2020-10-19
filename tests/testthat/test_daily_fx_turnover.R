test_that("Test daily_fx_turnover() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for unused argument error
  expect_error(get_daily_fx_turnover("Random String"))

})
