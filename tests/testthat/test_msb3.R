test_that("get_federal_debt rejects invalid by", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_federal_debt(by = "invalid"))
})

test_that("get_aggregate_output rejects invalid metric", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_aggregate_output(metric = "invalid"))
})

test_that("get_aggregate_output rejects invalid output_by", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_aggregate_output(output_by = "invalid"))
})

test_that("get_market_highlights rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_market_highlights(year = "abc"))
})
