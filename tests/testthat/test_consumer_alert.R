library(bnmr)

test_that("Test consumer_alert() for incorrect input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for unused argument
  expect_error(consumer_alert("Random Strings"))

})

test_that("Test consumer_alert() for proper outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  df <- consumer_alert()
  expect_is(df, "data.frame")
  expect_is(df, "tbl_df")

})
