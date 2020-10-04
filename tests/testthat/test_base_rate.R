library(bnmr)

test_that("Test base_rate() for incorrect input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid length of bank_code argument
  expect_error(base_rate(bank_code = c("CITIBANK", "BANGKOK")))

  ## Test for invalid SWIFT code in bank_code argument
  expect_error(base_rate(bank_code = c("CITBANK")))

})

test_that("Test base_rate() for proper outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  df <- base_rate()
  expect_is(df, "data.frame")
  expect_is(df, "tbl_df")

  df <- base_rate(bank_code = "CITIBANK")
  expect_is(df, "data.frame")
  expect_is(df, "tbl_df")

})
