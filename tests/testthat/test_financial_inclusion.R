test_that("get_financing_applied rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_financing_applied(year = -1))
  expect_error(get_financing_applied(year = "abc"))
})

test_that("get_financing_approved rejects invalid year", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_financing_approved(year = -1))
  expect_error(get_financing_approved(year = "abc"))
})
