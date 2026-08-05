test_that("get_sys_loans_appl_purpose rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_appl_purpose(type = "invalid"))
})

test_that("get_sys_loans_appl_sector rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_appl_sector(type = "invalid"))
})

test_that("get_sys_loans_apprv_purpose rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_apprv_purpose(type = "invalid"))
})

test_that("get_sys_loans_apprv_sector rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_apprv_sector(type = "invalid"))
})

test_that("get_sys_loans_disb_purpose rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_disb_purpose(type = "invalid"))
})

test_that("get_sys_loans_disb_sector rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_disb_sector(type = "invalid"))
})

test_that("get_sys_loans_repay_purpose rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_repay_purpose(type = "invalid"))
})

test_that("get_sys_loans_repay_sector rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_repay_sector(type = "invalid"))
})

test_that("get_sys_loans_class_type rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_class_type(type = "invalid"))
})

test_that("get_islm_fin_class_type rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_fin_class_type(type = "invalid"))
})

test_that("get_islm_fin_class_concept rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_fin_class_concept(type = "invalid"))
})

test_that("get_sys_loans_class_purpose rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_class_purpose(type = "invalid"))
})

test_that("get_islm_fin_purpose_sector rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_fin_purpose_sector(type = "invalid"))
})

test_that("get_sys_loans_class_sector rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_loans_class_sector(type = "invalid"))
})

test_that("get_sys_npl_provisions rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_npl_provisions(year = 1999))
})

test_that("get_sys_npl_purpose rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_npl_purpose(year = 1999))
})

test_that("get_sys_npl_sector rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_npl_sector(year = 1999))
})

test_that("get_tbills_tender rejects invalid bill_type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_tbills_tender(bill_type = "invalid"))
})

test_that("get_sys_imp_fin_provisions rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_imp_fin_provisions(year = "abc"))
})

test_that("get_islm_imp_fin_provisions rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_islm_imp_fin_provisions(year = "abc"))
})
