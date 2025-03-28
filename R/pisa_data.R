#' PISA maths data
#'
#' This dataset includes the mean mathematics scores from the PISA survey, administered every three years since its inception in 2000, across different countries.
#'
#' @format A data frame with 574 observations with 13 variables
#' \describe{
#'
#' \item{country}{The country name (character)}
#' \item{iso2c}{The two-letter country code (character)}
#' \item{iso3c}{The three-letter country code (character)}
#' \item{year}{The observation year (numeric)}
#' \item{LO.PISA.MAT}{The observational value, which in this context refer to as index (numeric)}
#' \item{status}{An empty variable meant to indicate the operational status of variables}
#' \item{lastupdated}{The date when the data for this indicator was last revised}
#' \item{region}{The region grouping variable (character)}
#' \item{capital}{The capital city of each country}
#' \item{longitude}{The longitude of the city}
#' \item{latitude}{The latitude of the city}
#' \item{income}{The income grouping variable (character)}
#' \item{lending}{The World Bank lending classification of each country}
#' }
#'
#' @source World Development Indicator, using the WDI R package
#'
#' @examples
#' data(pisa_data)
#'
#' head(pisa_data)
"pisa_data"

