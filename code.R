#Load the kaya Function
source("Test.Package/R/functions.R")

#Set the Values
pop = 82.4
gdp=44
enInt=5
carbInt=0.05

#Test the Function
co2 <- kaya(pop = pop, gdp = gdp, enInt = enInt, carbInt = carbInt)

#Test for negative 'pop' value
pop_neg = -82.4
co2_neg <- kaya(pop = pop_neg, gdp = gdp, enInt = enInt, carbInt = carbInt)

#Test for Carbon
carbon = kaya(pop = pop, gdp = gdp, enInt = enInt, carbInt = carbInt, output_type = "C")

#Test for Invalid 'output_type'
carbonator = kaya(pop = pop, gdp = gdp, enInt = enInt, carbInt = carbInt, output_type = "carbonator")
