
if(getRversion() >= "3.5") utils::globalVariables(c("country", "year", ".data"))

#' Compute smoothness measures to the WDI data or data from other world bank-hosted databases
#'
#' @param data A tibble either generated by \code{\link{cache_wdi_data}} or downloaded from other world bank-hosted databases
#' @param index Any indicator of choice or the name of the variable containing the observational data
#'
#' @return A data frame with the smoothness measures
#'
#' @examples
#'
#' smoothness <- compute_smoothness(data = pisa_data, index = "LO.PISA.MAT")
compute_smoothness <- function(data, index) {
  # check that the country, year, and the specified index column exist in the given data
  #if it does proceed, else flag the error message
  cols <- c("country", "year", index)
  missing_cols <- cols[!cols %in% names(data)]
  if (length(missing_cols) > 0){
    stop(paste("The required column(s) are missing in the provided dataset:",
               paste(missing_cols, collapse = ", ")))
  }

  # calculate smoothness
  smoothness <- data |>
    dplyr::arrange(country, year) |>
    dplyr::group_by(country) |>
    dplyr::summarise(
      sd_diff = stats::sd(.data[[index]] - dplyr::lag(.data[[index]]),
                   na.rm = TRUE)
    )
}
