# load the source code of the functions to be tested
source("../functions/range-value.R")

# context with one test that groups expectations
context("Test for range value") 

test_that("range works as expected", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
})


test_that("y works as expected", {
  y <- c(1, 2, 3, 4, NA)
  expect_length(range_value(y), 1)
  expect_that(range_value(y), equals(NA_real_))
})


test_that("z works as expected", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
  expect_equal(range_value(z), 1L)
})


test_that("w works as expected", {
  w <- letters[1:5]
  expect_that(range_value(w), throws_error())
  
})


#Missing Values
source("../functions/missing-values.R")
context("Test for missing values")

test_that("missing value works as expected", {
  # It doesn't what is inside of the list a, the output will be an integer
  a <- c(1.2, 2.2, 3.2, NA)

  expect_length(missing_values(a), 1)
  # the sum of missing integer can't be double, it's always integer
  expect_type(missing_values(a), 'integer')
  expect_gte(missing_values(a), 0)
  
})

