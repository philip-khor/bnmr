test_that("get_reserve_money rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_reserve_money(year = "abc"))
})

test_that("get_curr_in_circ_by_denom rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_curr_in_circ_by_denom(year = "abc"))
})

test_that("get_monetary_agg rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_monetary_agg(year = "abc"))
})

test_that("get_m3 rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_m3(year = "abc"))
})

test_that("get_bnm_stmt_assets rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_bnm_stmt_assets(year = "abc"))
})

test_that("get_bnm_stmt_cap_lbl rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_bnm_stmt_cap_lbl(year = "abc"))
})

test_that("get_bnm_special_funds rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_bnm_special_funds(year = "abc"))
})

test_that("get_sys_stmt_assets rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_stmt_assets(year = "abc"))
})

test_that("get_sys_stmt_cap_lbl rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_stmt_cap_lbl(year = "abc"))
})

test_that("get_stry_lqa_req rejects year < 2000", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_stry_lqa_req(year = 1999))
})

test_that("get_liq_cov_rt rejects year < 2015", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_liq_cov_rt(year = 1999))
})

test_that("get_sys_const_cap rejects year < 2013", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_const_cap(year = 1999))
})

test_that("get_islm_const_cap rejects invalid capital", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_const_cap(capital = "invalid"))
})

test_that("get_islm_const_cap rejects year < 2013", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_const_cap(year = 1999))
})

test_that("get_cc_mas rejects year < 2000", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_cc_mas(year = 1999))
})

test_that("get_sys_lf_ratio rejects year < 2000", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_lf_ratio(year = 1999))
})

test_that("get_islm_inv rejects year < 2000", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_inv(year = 1999))
})

test_that("get_m3_factors rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_m3_factors(year = "abc"))
})

test_that("get_islm_stmt_assets_inv rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_stmt_assets_inv(year = "abc"))
})

test_that("get_islm_fin_inv_type rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_fin_inv_type(year = "abc"))
})

test_that("get_islm_fin_inv_concept rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_fin_inv_concept(year = "abc"))
})

test_that("get_islm_fin_inv_purpose_sectors rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_fin_inv_purpose_sectors(year = "abc"))
})

test_that("get_islm_inv_maturity rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_inv_maturity(year = "abc"))
})
