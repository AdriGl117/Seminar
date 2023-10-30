kaya <- function(pop, gdp, enInt, carbInt){
  #' Kaya
  #'
  #' @param pop Population size (in millions)
  #' @param gdp GDP per capita (in 1000$/person)
  #' @param enInt Energy intensity (in Gigajoule/$1000GDP). Energy intensity is
  #' the energy needed to produce a certain amount of economic value.
  #' @param carbInt Carbon intensity (in tonnes CO2/Gigajoule). Carbon intensity 
  #' is the CO2 emitted for produced energy. This number depends on the energy 
  #' mix used (coal, solar, . . . ).
  #'
  #' @return co2: 
  #' @export
  #'
  #' @examples co2 <- kaya(pop = 82.4, gdp=44, enInt=5, carbInt=0.05)
  co2 = pop * gdp * enInt * carbInt
  return(co2)
}