test_that("welcome returns unexpected name", {
  expect_equal(bnm_api("/welcome")$content$contact$name,
               "BNM.API")
})
