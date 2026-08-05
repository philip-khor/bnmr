test_that("get_rates_banking rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_rates_banking(year = "abc"))
})

test_that("get_rates_islm_banking rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_rates_islm_banking(year = "abc"))
})

test_that("get_rates_interbank_mm rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_rates_interbank_mm(year = "abc"))
})

test_that("get_rates_tbills rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_rates_tbills(year = "abc"))
})

test_that("get_rates_mgs rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_rates_mgs(year = "abc"))
})

test_that("get_rates_myr rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_rates_myr(year = "abc"))
})

test_that("get_rates_myr_daily rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_rates_myr_daily(year = "abc"))
})

test_that("get_volume_interbank_mm rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_volume_interbank_mm(year = "abc"))
})

test_that("get_volume_interbank_forex rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_volume_interbank_forex(year = "abc"))
})

test_that("get_cap_funds_public rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_cap_funds_public(year = "abc"))
})

test_that("get_cap_funds_private rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_cap_funds_private(year = "abc"))
})

test_that("get_bond_issues rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_bond_issues(year = "abc"))
})

test_that("get_bursa_indicators rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_bursa_indicators(year = "abc"))
})

test_that("get_futures_indicators rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_futures_indicators(year = "abc"))
})

test_that("get_mm_turnover rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_mm_turnover(year = "abc"))
})

test_that("get_deriv_turnover rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_deriv_turnover(year = "abc"))
})

test_that("get_debt_turnover rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_debt_turnover(year = "abc"))
})

test_that("get_forex_turnover rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_forex_turnover(year = "abc"))
})

test_that("get_net_financing rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_net_financing(year = "abc"))
})
