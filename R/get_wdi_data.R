#' Download WDI data using the `WDI` R package
#'
#' Create and store the data for the specified indicator code in a folder called `wdi_data`.
#'
#' @param indicator A valid WDI indicator code
#'
#' @returns An `.rds` file containing the data set for the specified indicator code.
#' @export
#'
#' @examples
#' \dontrun{
#'  pm_data <- get_wdi_data(indicator = "EN.ATM.PM25.MC.M3")
#'  }
get_wdi_data <- function(indicator) {

  # Create a folder to store the data if it does not exist
  if (!dir.exists("wdi_data")) {
    dir.create("wdi_data")
  }

  wdi_path <- file.path("wdi_data", paste0(indicator, ".rds"))

  # check if the data for the specified wdi_path exists.

  if (file.exists(wdi_path)) {
    message(paste("Loading WDI indicator:", indicator, "data from data folder."))
    wdi_data <- readRDS(wdi_path)
  } else {
    message(paste("Downloading WDI indicator:", indicator, "data using the WDI R package."))
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

    # Save the data set for this indicator
    saveRDS(wdi_data, wdi_path)
  }

  attr(wdi_data, "index_var") <- setdiff(
    names(wdi_data),
    c("country", "iso2c", "iso3c", "year", "status", "lastupdated",
      "region", "capital", "longitude", "latitude", "income", "lending")
  )

  # return the data
  return(wdi_data)
}
