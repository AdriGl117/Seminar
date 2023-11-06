#Load the kaya Function
source("Test.Package/R/functions.R")
library(testthat)

#Set the Values
pop = 82.4
pop_neg = -82.4
gdp=44
enInt=5
carbInt=0.05

#Unit Test
test_that("Test of the Function kaya", {
  #Test the normal Function
  expect_equal(kaya(pop = pop, gdp = gdp, enInt = enInt, carbInt = carbInt), 906.4)
  #Test for negative 'pop' value
  expect_error(kaya(pop = pop_neg, gdp = gdp, enInt = enInt, carbInt = carbInt))
  #Test for Carbon
  expect_equal(kaya(pop = pop, gdp = gdp, enInt = enInt, carbInt = carbInt, output_type = "C"), 246.975476839237)
  #Test for invalid "output_type"
  expect_error(kaya(pop = pop, gdp = gdp, enInt = enInt, carbInt = carbInt, output_type = "carbonator"))
})

