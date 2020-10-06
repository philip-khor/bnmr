test_that("welcome returns correct name", {
  expect_equal(bnm_api("/welcome")$content$name,
               "BNM.API")
})
