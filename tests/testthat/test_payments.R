test_that("get_basic_payments rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_basic_payments(year = -1))
  expect_error(get_basic_payments(year = "abc"))
})

test_that("get_epayment rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_epayment(year = -1))
  expect_error(get_epayment(year = "abc"))
})

test_that("get_cards rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_cards(year = -1))
  expect_error(get_cards(year = "abc"))
})

test_that("get_internet_banking rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_internet_banking(year = -1))
  expect_error(get_internet_banking(year = "abc"))
})

test_that("get_eftpos rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_eftpos(year = -1))
  expect_error(get_eftpos(year = "abc"))
})
