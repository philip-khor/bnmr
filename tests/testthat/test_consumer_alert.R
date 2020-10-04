library(bnmr)

test_that("Test consumer_alert() for incorrect input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for unused argument
  expect_error(consumer_alert("Random Strings"))

})
