
# The function that cache the data.
#' Cache WDI data of the specified indicator
#'
#' @param indicator any data indicator from the WDI website
#'
#' @return a .rds containing the data  set of the specified indicator
#' @export
#'
#' @examples
#' data <- cache_wdi_data(indicator = "LO.PISA.MAT")
cache_wdi_data <- function(indicator) {

  # set a cache folder in the current directory to store the data
  data_directory <- file.path(getwd(), "wdi_cache_data")

  # Create cache directory if it doesn't exist
  if (!dir.exists(data_directory)) {
    dir.create(data_directory)
  }

  cache_wdi_path <- file.path(data_directory, paste0(indicator, ".rds"))

  # check if the data for the specified data exists.

  if (file.exists(cache_wdi_path)) {
    message(paste("Loading", indicator, "from wdi_cache_data."))
    data <- readRDS(cache_wdi_path)
  } else {
    message(paste("Downloading", indicator, "from WDI source."))
    # download data from the WDI using the R package
    data <- WDI::WDI(
      indicator = indicator,
      country = "all",
      extra = TRUE
    )

    # Save the dataset for this indicator
    saveRDS(data, cache_wdi_path)
  }

  # return the data
  return(data)
}
