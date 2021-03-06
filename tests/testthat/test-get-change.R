
test_that("Grunnkrets without area code 00", {

  dt <- readRDS(system.file("test-data", "grks00-dt.rds", package = "norgeo"))
  dtout <- readRDS(system.file("test-data", "grks00-out.rds", package = "norgeo"))

  #TEST
  expect_equal(grunnkrets_00(dt), dtout)

})


test_that("get change - all", {
  vcr::use_cassette("change", {
    dt <- get_change(type = "fylke", from = 2018, to = 2020)
  })

  expect_equal(dt, chgDT)
})

test_that("get change - error", {
  vcr::skip_if_vcr_off()
  vcr::use_cassette("change-error", {
    expect_error( get_change(type = "fylke", from = 2018, to = 2020) )
  })
})


test_that("get change - retry", {
  vcr::skip_if_vcr_off()
  vcr::use_cassette("change-retry", {
    expect_message(dt <- get_change(type = "fylke", from = 2018, to = 2020), "try")
  })

  expect_equal(dt, chgDT)
})


test_that("Valid date year", {
  expect_equal(set_year(2021, TRUE), "2021-01-02")
  expect_equal(set_year(2021, FALSE), "2021-01-01")
})
