#' Download WDI data using the `WDI` R package
#'
#' Create and store the data for the specified indicator code in a folder called `wdi_data`.
#'
#' @param indicator A valid WDI indicator code
#' @param verbose Logical, if TRUE, the message about the data download is printed. If FALSE, it is silenced. Default to TRUE
#'
#' @returns An `.rds` file containing the data set for the specified indicator code.
#' @export
#'
#' @examples
#'  pm_data <- get_wdi_data(indicator = "EN.ATM.PM25.MC.M3", verbose = TRUE)
get_wdi_data <- function(indicator, verbose = TRUE) {

  if (verbose) {
    message("Downloading WDI indicator: ", indicator)
  }
# download data from the WDI using the WDI R package
  wdi_data <- WDI::WDI(
    indicator = indicator,
    country = "all",
    extra = TRUE
  ) |>
    dplyr::filter(.data$region != "Aggregates") |> # filter out countries additional entries that are not country names
    dplyr::mutate(dplyr::across(
      dplyr::where(is.character),
      ~ gsub("'", "", .)
    ))

  attr(wdi_data, "index_var") <- setdiff(
    names(wdi_data),
    c("country", "iso2c", "iso3c", "year", "status", "lastupdated",
      "region", "capital", "longitude", "latitude", "income", "lending")
  )

  return(wdi_data)
}
