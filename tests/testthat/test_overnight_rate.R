test_that("get_overnight_rate rejects invalid date format", {
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()
  expect_error(get_overnight_rate(year = "Random String", month = 9))
  expect_error(get_overnight_rate(year = 2022, month = "May"))
  expect_error(get_overnight_rate(date = "01-02-2022"))
})
