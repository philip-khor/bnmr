test_that("get_sys_npl_provisions rejects year < 2000", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_npl_provisions(year = 1999))
})

test_that("get_sys_npl_purpose rejects year < 2000", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_npl_purpose(year = 1999))
})

test_that("get_sys_npl_sector rejects year < 2000", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_npl_sector(year = 1999))
})

test_that("get_tbills_tender rejects invalid bill_type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_tbills_tender(bill_type = "invalid"))
})

test_that("get_sys_imp_fin_provisions rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_imp_fin_provisions(year = "abc"))
})

test_that("get_islm_imp_fin_provisions rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_imp_fin_provisions(year = "abc"))
})
