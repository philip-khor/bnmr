library(bnmr)

test_that("Test interbank_swap() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid argument
  expect_error(interbank_swap("Random String"))

})
