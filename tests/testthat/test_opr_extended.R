test_that("get_opr rejects non-integer year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_opr(year = "abc"))
  expect_error(get_opr(year = 1999))
  expect_error(get_opr(year = c(1999, 2000)))
})

test_that("get_base_rate rejects invalid bank_code", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_base_rate(bank_code = c("CITIBANK", "BANGKOK")))
  expect_error(get_base_rate(bank_code = "INVALID"))
})
