library(bnmr)

test_that("Test renminbi() for incorrect input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid type value
  expect_error(renminbi(type = "dax"))
  expect_error(renminbi(type = "fy_forward"))

})

test_that("Test renminbi() for proper outputs", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for proper output with type = "dar"
  ## Currently, type = "dar" results in failed API call
  #df <- renminbi(type = "dar")
  #expect_is(df, "data.frame")
  #expect_is(df, "tbl_df")
  #df <- renminbi(type = "dar")
  #expect_is(df, "data.frame")
  #expect_is(df, "tbl_df")

  ## Test for proper output with type = "fx_forward"
  df <- renminbi(type = "fx_forward")
  expect_is(df, "data.frame")
  expect_is(df, "tbl_df")

})
