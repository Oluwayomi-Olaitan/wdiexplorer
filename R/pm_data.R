#' PM2.5 air pollution data
#'
#' This data set contains the mean annual exposure levels to ambient PM2.5 air pollution across various countries, measured in micrograms per cubic meter.
#'
#' @format A data frame with 13,910 observations with 13 variables
#' \describe{
#'
#' \item{country}{Country name (character)}
#' \item{iso2c}{2-letter ISO country code (character)}
#' \item{iso3c}{3-letter ISO country code (character)}
#' \item{year}{Calendar year representing the time index of the observation (integer)}
#' \item{EN.ATM.PM25.MC.M3}{Observational values for the specified indicator code (numeric)}
#' \item{status}{An empty variable meant to indicate the operational status of variables (character)}
#' \item{lastupdated}{Timestamp that indicates the most recent update of the indicator date (character)}
#' \item{region}{Geographical region variable (character)}
#' \item{capital}{Name of the capital city of each country (character)}
#' \item{longitude}{Geographic coordinate that measures the longitude of the city (character)}
#' \item{latitude}{Geographic coordinate that measures the latitude of the city (character)}
#' \item{income}{World Bank income classification variable (character)}
#' \item{lending}{World Bank income classification variable (character)}
#' }
#'
#' @source World Development Indicator, using the WDI R package
#'
#' @examples
#' data(pm_data)
#'
#' head(pm_data)
"pm_data"

