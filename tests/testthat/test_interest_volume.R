test_that("Test get_interest_volume() for wrong input errors", {

  # Skip if no internet connection, or the bnm site is down.
  testthat::skip_if_offline("api.bnm.gov.my")
  testthat::skip_on_cran()

  ## Test for invalid date values and types in various combinations
  expect_error(get_interest_volume(year = "Random String", month = 9))
  expect_error(get_interest_volume(year = 2020, month = "March"))
  expect_error(get_interest_volume(date = "01-02-2020"))

  expect_error(get_interest_volume(product = "interbank", year = "Random String", month = 9))
  expect_error(get_interest_volume(product = "interbank", year = 2020, month = "March"))
  expect_error(get_interest_volume(product = "interbank", date = "01-02-2020"))

  expect_error(get_interest_volume(product = "overall", year = "Random String", month = 9))
  expect_error(get_interest_volume(product = "overall", year = 2020, month = "March"))
  expect_error(get_interest_volume(product = "overall", date = "01-02-2020"))

  expect_error(get_interest_volume(product = "Random String", year = 2020, month = 9))
  expect_error(get_interest_volume(product = "Random String", date = "2020-09-10"))

})
