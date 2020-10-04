library(bnmr)

test_that("Test interbank_swap() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid argument
  expect_error(interbank_swap("Random String"))

})

test_that("Test interbank_swap() outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for corrected currency code
  df <- interbank_swap()
  expect_is(df, "data.frame")
  expect_is(df, "tbl")

})
