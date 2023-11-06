context("Tests for the kaya Function")

#Load the Function
source("Test.Package/R/functions.R")

#Test
testthat::test_that("Test of the Function kaya", {
  #Test the normal Function
  expect_equal(kaya(pop = 82.4, gdp = 44, enInt = 5, carbInt = 0.05), 906.4)
  #Test for negative 'pop' value
  expect_error(kaya(pop = -82.4, gdp = 44, enInt = 5, carbInt = 0.05))
  #Test for Carbon
  expect_equal(kaya(pop = 82.4, gdp = 44, enInt = 5, carbInt = 0.05, output_type = "C"), 246.975476839237)
  #Test for invalid "output_type"
  expect_error(kaya(pop = 82.4, gdp = 44, enInt = 5, carbInt = 0.05, output_type = "carbonator"))
})
