test_that("get_sys_deps_type rejects year < 2000", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_deps_type(year = 1999))
})

test_that("get_sys_deps_holder rejects year < 2000", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_deps_holder(year = 1999))
})

test_that("get_sys_dd_holder rejects invalid ins", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_dd_holder(ins = "invalid"))
})

test_that("get_sys_sav_fd_deps_holder rejects invalid ins", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_sav_fd_deps_holder(ins = "invalid"))
})

test_that("get_sys_repo_holder rejects invalid ins", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_repo_holder(ins = "invalid"))
})

test_that("get_sys_nid_holder rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_nid_holder(type = "invalid"))
})

test_that("get_sys_fc_deps_holder rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_fc_deps_holder(type = "invalid"))
})

test_that("get_sys_fd_maturity rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_sys_fd_maturity(type = "invalid"))
})
