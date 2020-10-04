library(bnmr)
library(lubridate)

test_that("Test usd_interbank_intraday_rate() for wrong input errors", {

  testthat::skip_if_offline()
  testthat::skip_on_cran()

  ## Test for invalid date values and types
  expect_error(usd_interbank_intraday_rate(year = "Random String", month = 9))
  expect_error(usd_interbank_intraday_rate(year = 2020, month = "March"))
  expect_error(usd_interbank_intraday_rate(date = "01-02-2020"))

})
