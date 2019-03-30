library(testthat)
library(bnmr)

test_check("bnmr")

test_that("can access API", {
  expect_equal(bnm_api("/welcome")$content$contact$name, "BNM.API")
})
