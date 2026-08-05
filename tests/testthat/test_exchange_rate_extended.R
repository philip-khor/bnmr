test_that("get_exchange_rate rejects invalid session", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_exchange_rate(session = "1131"))
})

test_that("get_exchange_rate rejects invalid quote", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_exchange_rate(quote = "eur"))
})

test_that("get_exchange_rate rejects invalid currency", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_exchange_rate(currency = "XYZ"))
})

test_that("get_renminbi rejects invalid type", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_renminbi(type = "dax"))
  expect_error(get_renminbi(type = "fy_forward"))
})
