test_that("get_federal_finance rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_federal_finance(year = "abc"))
})

test_that("get_federal_revenue rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_federal_revenue(year = "abc"))
})

test_that("get_federal_opex rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_federal_opex(year = "abc"))
})

test_that("get_federal_devex rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_federal_devex(year = "abc"))
})

test_that("get_federal_debt rejects invalid by", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_federal_debt(by = "invalid"))
})

test_that("get_rentas_foreign_debt_holdings rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_rentas_foreign_debt_holdings(year = "abc"))
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

test_that("get_economic_indicators rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_economic_indicators(year = "abc"))
})

test_that("get_market_highlights rejects invalid date format", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_market_highlights(date = "01-02-2020"))
})
